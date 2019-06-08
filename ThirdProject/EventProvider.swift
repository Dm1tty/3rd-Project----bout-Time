//
//  EventProvider.swift
//  ThirdProject
//
//  Created by Dzmitry Matsiulka on 6/1/19.
//  Copyright © 2019 Dzmitry S. All rights reserved.
//

import Foundation

class EventProvider{
    
    
    var eventBank = [Event]()
    
    init(){
        //1
        eventBank.append(Event(question: "Herbert Hoover is inaugurated as the 31st president.", correctData: 1929, url: "https://en.wikipedia.org/wiki/Inauguration_of_Herbert_Hoover"))
        //2
        eventBank.append(Event(question: "President Theodore Roosevelt is inaugurated for his second term.", correctData: 1905, url: "https://en.wikipedia.org/wiki/Second_inauguration_of_Theodore_Roosevelt"))
        //3
        eventBank.append(Event(question: "Alexander Graham Bell and Thomas A. Watson conduct the first telephone conversation between New York and San Francisco.", correctData: 1915, url: "https://en.wikipedia.org/wiki/Thomas_A._Watson"))
        //4
        eventBank.append(Event(question: "The United States purchases the Virgin Islands from Denmark for $25 million and would take possession of the islands on March 31 of the next year.", correctData: 1916, url: "https://en.wikipedia.org/wiki/Treaty_of_the_Danish_West_Indies"))
        //5
        eventBank.append(Event(question: "Time Magazine is published for the first time.", correctData: 1923, url: "https://en.wikipedia.org/wiki/Time_(magazine)"))
        //6
        eventBank.append(Event(question: "The Great Mississippi Flood occurs, affecting over 700,000.", correctData: 1927, url: "https://en.wikipedia.org/wiki/Great_Mississippi_Flood_of_1927"))
        //7
        eventBank.append(Event(question: "President Franklin D. Roosevelt is inaugurated for the first time.", correctData: 1933, url: "https://en.wikipedia.org/wiki/First_inauguration_of_Franklin_D._Roosevelt"))
        //8
        eventBank.append(Event(question: "The attack on Pearl Harbor, Hawaii, commences at 7:55 a.m. when Japanese fighter planes launch a surprise attack on United States soil, destroying the U.S. Pacific Fleet docked at the base.", correctData: 1941, url: "https://en.wikipedia.org/wiki/Attack_on_Pearl_Harbor"))
        //9
         eventBank.append(Event(question: "President Roosevelt, Prime Minister Churchill, and Premier Josef Stalin hold the Yalta Conference in the Soviet Union.", correctData: 1945, url: "https://en.wikipedia.org/wiki/Yalta_Conference"))
        //10
        eventBank.append(Event(question: "United States withdraws its troops from Korea.", correctData: 1949, url: "https://en.wikipedia.org/wiki/United_States_in_the_Korean_War"))
        //11
        eventBank.append(Event(question: "The first color televisions go on sale.", correctData: 1953, url: "https://en.wikipedia.org/wiki/Color_television"))
        //12
        eventBank.append(Event(question: "President Dwight D. Eisenhower is inaugurated for his second term in office.", correctData: 1957, url: "https://en.wikipedia.org/wiki/Second_inauguration_of_Dwight_D._Eisenhower"))
        //13
        eventBank.append(Event(question: "Explorer I, the first U.S. space satellite, is launched by the Army at Cape Canaveral. It would discover the Van Allen radiation belt.", correctData: 1958, url: "https://en.wikipedia.org/wiki/Explorer_1"))
        //14
        eventBank.append(Event(question: "Alaska becomes the 49th state.", correctData: 1959, url: "https://en.wikipedia.org/wiki/Alaska"))
       
        //15
         eventBank.append(Event(question: "President Kennedy is assassinated in Dallas.", correctData: 1963, url: "https://en.wikipedia.org/wiki/Assassination_of_John_F._Kennedy"))
        
        //16
         eventBank.append(Event(question: "President Johnson signs the Civil Rights Act.", correctData: 1964, url: "https://en.wikipedia.org/wiki/Civil_Rights_Act_of_1964"))
       
        //17
          eventBank.append(Event(question: "Miranda v. Arizona: Landmark Supreme Court decision.", correctData: 1966, url: "https://en.wikipedia.org/wiki/Miranda_v._Arizona"))
     
        //18
         eventBank.append(Event(question: "Twenty-Fifth Amendment to the Constitution is ratified.", correctData: 1967, url: "https://en.wikipedia.org/wiki/Twenty-fifth_Amendment_to_the_United_States_Constitution"))
       
        //19
         eventBank.append(Event(question: "Martin Luther King, Jr., is assassinated in Memphis.", correctData: 1968, url: "https://en.wikipedia.org/wiki/Assassination_of_Martin_Luther_King_Jr."))
        //20
         eventBank.append(Event(question: "Richard Nixon is inaugurated as the 37th president.", correctData: 1969, url: "https://en.wikipedia.org/wiki/Presidency_of_Richard_Nixon"))
        //21
         eventBank.append(Event(question: "The Twenty-Sixth Amendment to the Constitution is ratified, lowering the voting age from 21 to 18.", correctData: 1971, url: "https://en.wikipedia.org/wiki/Twenty-sixth_Amendment_to_the_United_States_Constitution"))
        //22
         eventBank.append(Event(question: "Nixon's second inauguration.", correctData: 1973, url: "https://en.wikipedia.org/wiki/Second_inauguration_of_Richard_Nixon"))
        //23
         eventBank.append(Event(question: "Nixon resigns; he is succeeded in office by his vice president, Gerald Ford.", correctData: 1974, url: "https://en.wikipedia.org/wiki/Richard_Nixon"))
        //24
        eventBank.append(Event(question: "Jimmy Carter is inaugurated as the 39th president.", correctData: 1977, url: "https://en.wikipedia.org/wiki/Inauguration_of_Jimmy_Carter"))
       
        
        
        
        
    }
}
