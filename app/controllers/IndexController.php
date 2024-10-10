<?php

use Phalcon\Mvc\Controller;

class IndexController extends Controller
{
    public function indexAction()
    {
        // Render the 'index' view
        $this->view->pick('index'); // This expects a view file called index.volt or index.phtml in the views directory
    }
}
