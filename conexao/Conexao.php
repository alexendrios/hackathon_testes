<?php

class Conexao {

    private $dsn = 'mysql:host=db4free.net;dbname=controle_hackat_;charset=utf8';
    private $username = 'hackathon';
    private $password = 'hackathon';

    private function getDsn() {
        return $this->dsn;
    }

    private function getUsername() {
        return $this->username;
    }

    private function getPassword() {
        return $this->password;
    }

    /*
     * @return \PDO
     */

    public function getConection() {
        try {
            $pdo = new PDO($this->getDsn(), $this->getUsername(), $this->getPassword());
            return $pdo;
        } catch (PDOException $exc) {
            echo "erro " . $exc->getMessage();
        }
    }

}
