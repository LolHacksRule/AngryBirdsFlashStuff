package §&p§
{
   import §&o§.§^O§;
   import flash.events.EventDispatcher;
   
   public class §9!H§ extends EventDispatcher
   {
      
      private static var §^4§:§^O§;
      
      private static var §;!+§:Array;
      
      private static var §5p§:int = 1;
      
      private static var §[b§:int = 0;
      
      private static var §%k§:String;
      
      private static var § g§:Object;
      
      private static var §=!D§:String;
      
      private static var §`!?§:Boolean;
      
      private static var §'!T§:String;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §5p§ = 1;
         }
         do
         {
            §[b§ = 0;
         }
         while(!(_loc2_ || §9!H§));
         
      }
      
      public function §9!H§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public static function get hasWonPrize() : Boolean
      {
         return §`!?§;
      }
      
      public static function set hasWonPrize(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || §9!H§)
         {
            §`!?§ = param1;
         }
      }
      
      public static function get userPrizeId() : String
      {
         return §'!T§;
      }
      
      public static function set userPrizeId(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §'!T§ = param1;
         }
      }
      
      public static function get §;a§() : String
      {
         return §=!D§;
      }
      
      public static function set §;a§(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §=!D§ = param1;
         }
      }
      
      public static function get userLevelId() : Object
      {
         return § g§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            § g§ = param1;
         }
      }
      
      public static function get §<!7§() : String
      {
         return §%k§;
      }
      
      public static function set §<!7§(param1:String) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && param1))
         {
            §%k§ = param1;
         }
      }
      
      public static function get § o§() : §^O§
      {
         return §^4§;
      }
      
      public static function set § o§(param1:§^O§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §^4§ = param1;
         }
      }
      
      public static function get credits() : int
      {
         return §[b§;
      }
      
      public static function set credits(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §[b§ = param1;
         }
      }
      
      public static function get §<`§() : Object
      {
         return {
            "id":§^4§.§ I§,
            "nickName":§^4§.name,
            "security":§^4§.§=o§
         };
      }
      
      public static function get §<E§() : int
      {
         return §5p§;
      }
      
      public static function set §<E§(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §5p§ = param1;
         }
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(_loc6_)
         {
            §;!+§ = param1;
         }
         var _loc3_:int = 0;
         for each(_loc2_ in param1)
         {
            if(!(_loc5_ && _loc3_))
            {
               §#x§.§[Y§.§'z§(_loc2_.levelID,_loc2_.score);
            }
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §;!+§;
      }
      
      public static function §"B§(param1:String) : Object
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         for each(_loc2_ in levelProfile)
         {
            if(_loc6_)
            {
               if(_loc2_.levelID == param1)
               {
                  if(_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §[R§(param1:String) : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = true;
         var _loc3_:Object = §"B§(param1);
         if(_loc4_)
         {
            if(_loc3_ != null)
            {
               if(_loc4_ || _loc2_)
               {
                  addr45:
                  if(_loc3_.unlocked)
                  {
                     if(!_loc5_)
                     {
                        §§push(false);
                        if(!_loc5_)
                        {
                           _loc2_ = §§pop();
                           addr64:
                           return _loc2_;
                        }
                     }
                  }
               }
            }
            §§goto(addr64);
         }
         §§goto(addr45);
      }
      
      public static function §64§(param1:String) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §"B§(param1);
         if(_loc4_)
         {
            if(_loc2_ != null)
            {
               if(!_loc3_)
               {
                  _loc2_.unlocked = true;
               }
            }
         }
      }
   }
}
