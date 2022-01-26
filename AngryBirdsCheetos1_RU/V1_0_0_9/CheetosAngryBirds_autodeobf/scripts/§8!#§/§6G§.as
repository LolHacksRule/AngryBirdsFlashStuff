package §8!#§
{
   import §#N§.§?!#§;
   import flash.events.EventDispatcher;
   
   public class §6G§ extends EventDispatcher
   {
      
      private static var §>'§:§?!#§;
      
      private static var §>#§:Array;
      
      private static var §,]§:int = 1;
      
      private static var §1!%§:int = 0;
      
      private static var §!!>§:String;
      
      private static var §5%§:Object;
      
      private static var §2m§:String;
       
      
      public function §6G§()
      {
         super();
      }
      
      public static function get §"!9§() : String
      {
         return §2m§;
      }
      
      public static function set §"!9§(param1:String) : void
      {
         §2m§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §5%§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §5%§ = param1;
      }
      
      public static function get §<!W§() : String
      {
         return §!!>§;
      }
      
      public static function set §<!W§(param1:String) : void
      {
         §!!>§ = param1;
      }
      
      public static function get §+J§() : §?!#§
      {
         return §>'§;
      }
      
      public static function set §+J§(param1:§?!#§) : void
      {
         §>'§ = param1;
      }
      
      public static function get credits() : int
      {
         return §1!%§;
      }
      
      public static function set credits(param1:int) : void
      {
         §1!%§ = param1;
      }
      
      public static function get §?!L§() : Object
      {
         return {
            "id":§>'§.§0C§,
            "nickName":§>'§.name,
            "security":§>'§.§=!U§
         };
      }
      
      public static function get §;!C§() : int
      {
         return §,]§;
      }
      
      public static function set §;!C§(param1:int) : void
      {
         §,]§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §>#§ = param1;
         for each(_loc2_ in param1)
         {
            §+§.§3s§.§'w§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §>#§;
      }
      
      public static function §=!^§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in levelProfile)
         {
            if(_loc2_.levelID == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §`!H§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §=!^§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §^!D§(param1:String) : Boolean
      {
         var _loc2_:Object = §=!^§(param1);
         return _loc2_ != null;
      }
      
      public static function §6W§(param1:String) : void
      {
         var _loc2_:Object = §=!^§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
