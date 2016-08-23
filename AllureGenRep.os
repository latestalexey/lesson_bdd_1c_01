Сообщить("Удаляю каталог Allure-report");
УдалитьФайлы("C:\repo\work2\allure-report\allure-report");

Сообщить("Генерирую отчет");
УстановитьТекущийКаталог("C:\repo\work2\allure-report\");
ЗапуститьПриложение("allure generate .");
УстановитьТекущийКаталог("C:\repo\work2\");
