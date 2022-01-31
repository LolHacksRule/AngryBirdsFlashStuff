package com.angrybirds.utils
{
   public class ServerErrorCodes
   {
      
      public static const LEAGUE_NAME_BLACKLISTED:int = 1002;
      
      public static const LEAGUE_NAME_INVALID_CHARACTERS:int = 1003;
      
      public static const LEAGUE_NAME_TOO_SHORT:int = 1004;
      
      public static const LEAGUE_NAME_RESERVED:int = 1005;
      
      public static const INVALID_FB_ACCESS_TOKEN:int = 3100;
      
      public static const PRODUCT_WAS_NOT_FOUND:int = 2000;
      
      public static const NOT_ENOUGH_VIRTUAL_CURRENCY:int = 2002;
      
      public static const DURABLE_ITEM_ALREADY_OWNED:int = 2022;
      
      public static const STAR_COLLECTOR_REWARD_ALREADY_CLAIMED:int = 1014;
      
      public static const ERROR_CODES_HANDLED_BY_CLIENT:Array = [3001,3002,6,1000,1001,2,5,LEAGUE_NAME_BLACKLISTED,LEAGUE_NAME_INVALID_CHARACTERS,LEAGUE_NAME_TOO_SHORT,LEAGUE_NAME_RESERVED,NOT_ENOUGH_VIRTUAL_CURRENCY,STAR_COLLECTOR_REWARD_ALREADY_CLAIMED,DURABLE_ITEM_ALREADY_OWNED];
       
      
      public function ServerErrorCodes()
      {
         super();
      }
   }
}
