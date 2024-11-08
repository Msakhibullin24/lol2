<?php


namespace App\Telegram\Commands;


use Longman\TelegramBot\Commands\UserCommand;
use Longman\TelegramBot\Entities\ServerResponse;
use Longman\TelegramBot\Exception\TelegramException;

class SendCommand extends UserCommand
{

    /** @var string Command name */
    protected $name = 'Send';
    /** @var string Command description */
    protected $description = 'Send';
    /** @var string Usage description */
    protected $usage = '/Send';
    /** @var string Version */
    protected $version = '1.0.0';

    public function execute(): ServerResponse
    {
        return $this->replyToChat('Минутку, пожалуйста. уточняю ');
    }

}
