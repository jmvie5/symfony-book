<?php

namespace App\Tests\Controller;

use App\Repository\CommentRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Panther\PantherTestCase;

class ConferenceControllerTest extends PantherTestCase
{
    public function testIndex()
    {
        $client = static::createPantherClient(['external_base_uri' => rtrim($_SERVER['SYMFONY_PROJECT_DEFAULT_ROUTE_URL'], '/')]);
        $client->request('GET', '/');

        $this->assertResponseIsSuccessful();
        $this->assertSelectorTextContains('h2', 'Donnez votre avis!');
    }

    public function testCommentSubmission()
    {
        $client = static::createClient();
        $client->request('GET', '/conference/amsterdam-2019');
        $client->submitForm('Submit', [
            'comment[author]' => 'Fabien',
            'comment[text]' => 'Some feedback from an automated functional test',
            'comment[email]' => $email = 'me@automat.ed',
            'comment[photo]' => dirname(__DIR__, 2).'/public/images/under-construction.gif',
        ]);
        $this->assertResponseRedirects();

        // simulate comment validation
        $comment = self::getContainer()->get(CommentRepository::class)->findOneByEmail($email);
        $comment->setState('published');
        self::getContainer()->get(EntityManagerInterface::class)->flush();

        $client->followRedirect();
        $this->assertSelectorExists('div:contains("Il y a 2 commentaires.")');
    }
}