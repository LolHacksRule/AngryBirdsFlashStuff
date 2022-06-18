package §8O§
{
   import §^C§.§'!?§;
   import flash.events.EventDispatcher;
   
   public class §'S§ extends EventDispatcher
   {
      
      private static var §>!4§:§'!?§;
      
      private static var §<`§:Array;
      
      private static var §&!R§:int = 1;
      
      private static var §?!;§:int = 0;
      
      private static var §7!T§:String;
      
      private static var §9x§:Object;
      
      private static var §!S§:String;
       
      
      public function §'S§()
      {
         super();
      }
      
      public static function get §6r§() : String
      {
         return §!S§;
      }
      
      public static function set §6r§(param1:String) : void
      {
         §!S§ = param1;
      }
      
      public static function get userLevelId() : Object
      {
         return §9x§;
      }
      
      public static function set userLevelId(param1:Object) : void
      {
         §9x§ = param1;
      }
      
      public static function get § !C§() : String
      {
         return §7!T§;
      }
      
      public static function set § !C§(param1:String) : void
      {
         §7!T§ = param1;
      }
      
      public static function get §^!+§() : §'!?§
      {
         return §>!4§;
      }
      
      public static function set §^!+§(param1:§'!?§) : void
      {
         §>!4§ = param1;
      }
      
      public static function get credits() : int
      {
         return §?!;§;
      }
      
      public static function set credits(param1:int) : void
      {
         §?!;§ = param1;
      }
      
      public static function get §[r§() : Object
      {
         return {
            "id":§>!4§.§!X§,
            "nickName":§>!4§.name,
            "security":§>!4§.§<!'§
         };
      }
      
      public static function get §#!?§() : int
      {
         return §&!R§;
      }
      
      public static function set §#!?§(param1:int) : void
      {
         §&!R§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §<`§ = param1;
         for each(_loc2_ in param1)
         {
            §@!!§.§<R§.§-!H§(_loc2_.levelID,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §<`§;
      }
      
      public static function §"q§(param1:String) : Object
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
      
      public static function §>>§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §"q§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public static function §1M§(param1:String) : Boolean
      {
         var _loc2_:Object = §"q§(param1);
         return _loc2_ != null;
      }
      
      public static function §-!$§(param1:String) : void
      {
         var _loc2_:Object = §"q§(param1);
         if(_loc2_ != null)
         {
            _loc2_.unlocked = true;
         }
      }
   }
}
