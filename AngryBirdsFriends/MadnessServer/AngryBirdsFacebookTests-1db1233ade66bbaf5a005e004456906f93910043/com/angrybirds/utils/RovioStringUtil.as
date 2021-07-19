package com.angrybirds.utils
{
   public class RovioStringUtil
   {
       
      
      public function RovioStringUtil()
      {
         super();
      }
      
      public static function shortenName(name:String, nameMaxChars:Number = 25) : String
      {
         var splitted:Array = null;
         var i:int = 0;
         var shortName:String = "";
         if(name.length >= nameMaxChars)
         {
            splitted = name.split(" ");
            if(splitted.length - 1 >= 0)
            {
               for(i = 0; i < splitted.length - 1; i++)
               {
                  shortName += splitted[i] + " ";
               }
               shortName += splitted[splitted.length - 1].toString().slice(0,1) + ".";
            }
         }
         else
         {
            shortName = name;
         }
         return shortName;
      }
      
      public static function trim(str:String, char:String) : String
      {
         return trimBack(trimFront(str,char),char);
      }
      
      public static function trimFront(str:String, char:String) : String
      {
         char = stringToCharacter(char);
         if(str.charAt(0) == char)
         {
            str = trimFront(str.substring(1),char);
         }
         return str;
      }
      
      public static function trimBack(str:String, char:String) : String
      {
         char = stringToCharacter(char);
         if(str.charAt(str.length - 1) == char)
         {
            str = trimBack(str.substring(0,str.length - 1),char);
         }
         return str;
      }
      
      public static function stringToCharacter(str:String) : String
      {
         if(str.length == 1)
         {
            return str;
         }
         return str.slice(0,1);
      }
   }
}
