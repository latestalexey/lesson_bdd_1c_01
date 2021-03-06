﻿//начало текста модуля

///////////////////////////////////////////////////
//Служебные функции и процедуры
///////////////////////////////////////////////////

&НаКлиенте
// контекст фреймворка Vanessa-Behavior
Перем Ванесса;
 
&НаКлиенте
// Структура, в которой хранится состояние сценария между выполнением шагов. Очищается перед выполнением каждого сценария.
Перем Контекст Экспорт;
 
&НаКлиенте
// Структура, в которой можно хранить служебные данные между запусками сценариев. Существует, пока открыта форма Vanessa-Behavior.
Перем КонтекстСохраняемый Экспорт;

&НаКлиенте
// Функция экспортирует список шагов, которые реализованы в данной внешней обработке.
Функция ПолучитьСписокТестов(КонтекстФреймворкаBDD) Экспорт
	Ванесса = КонтекстФреймворкаBDD;
	
	ВсеТесты = Новый Массив;

	//описание параметров
	//Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,Снипет,ИмяПроцедуры,ПредставлениеТеста,Транзакция,Параметр);

	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"УНасЕстьFeatureФайл()","УНасЕстьFeatureФайл","Допустим у нас есть feature файл");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"УМеняЕстьИнструментVanessa_behavior()","УМеняЕстьИнструментVanessa_behavior","и у меня есть инструмент vanessa-behavior");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"ЯВVanessa_behaviorЗаупскаюГенерациюEpf()","ЯВVanessa_behaviorЗаупскаюГенерациюEpf","Когда я в vanessa-behavior заупскаю генерацию epf");
	Ванесса.ДобавитьШагВМассивТестов(ВсеТесты,"РядомСFeatureФайломДолженПоявитьсяКаталогСВнешнейОбработкой1с()","РядомСFeatureФайломДолженПоявитьсяКаталогСВнешнейОбработкой1с","Тогда рядом с feature файлом должен появиться каталог с внешней обработкой 1с");

	Возврат ВсеТесты;
КонецФункции
	
&НаСервере
// Служебная функция.
Функция ПолучитьМакетСервер(ИмяМакета)
	ОбъектСервер = РеквизитФормыВЗначение("Объект");
	Возврат ОбъектСервер.ПолучитьМакет(ИмяМакета);
КонецФункции
	
&НаКлиенте
// Служебная функция для подключения библиотеки создания fixtures.
Функция ПолучитьМакетОбработки(ИмяМакета) Экспорт
	Возврат ПолучитьМакетСервер(ИмяМакета);
КонецФункции



///////////////////////////////////////////////////
//Работа со сценариями
///////////////////////////////////////////////////

&НаКлиенте
// Процедура выполняется перед началом каждого сценария
Процедура ПередНачаломСценария() Экспорт
	
КонецПроцедуры

&НаКлиенте
// Процедура выполняется перед окончанием каждого сценария
Процедура ПередОкончаниемСценария() Экспорт
	
КонецПроцедуры



///////////////////////////////////////////////////
//Реализация шагов
///////////////////////////////////////////////////

&НаКлиенте
//Допустим у нас есть feature файл
//@УНасЕстьFeatureФайл()
Процедура УНасЕстьFeatureФайл() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//и у меня есть инструмент vanessa-behavior
//@УМеняЕстьИнструментVanessa_behavior()
Процедура УМеняЕстьИнструментVanessa_behavior() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Когда я в vanessa-behavior заупскаю генерацию epf
//@ЯВVanessa_behaviorЗаупскаюГенерациюEpf()
Процедура ЯВVanessa_behaviorЗаупскаюГенерациюEpf() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

&НаКлиенте
//Тогда рядом с feature файлом должен появиться каталог с внешней обработкой 1с
//@РядомСFeatureФайломДолженПоявитьсяКаталогСВнешнейОбработкой1с()
Процедура РядомСFeatureФайломДолженПоявитьсяКаталогСВнешнейОбработкой1с() Экспорт
	//Ванесса.ПосмотретьЗначение(Парам01,Истина);
	ВызватьИсключение "Не реализовано.";
КонецПроцедуры

//окончание текста модуля
