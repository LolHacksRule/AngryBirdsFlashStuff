package §3Y§
{
   import §;!3§.§;!P§;
   import flash.events.EventDispatcher;
   
   public class §4!_§ extends EventDispatcher
   {
      
      private static var §?8§:§;!P§;
      
      private static var §=z§:Array;
      
      private static var §4p§:String;
      
      private static var §&!O§:int = 1;
       
      
      public function §4!_§()
      {
         super();
      }
      
      public static function get §,t§() : §;!P§
      {
         return §?8§;
      }
      
      public static function set §,t§(param1:§;!P§) : void
      {
         §?8§ = param1;
      }
      
      public static function get §2!4§() : Object
      {
         return {
            "id":§?8§.§5!D§,
            "nickName":§?8§.name,
            "security":§?8§.§]_§
         };
      }
      
      public static function get §&T§() : int
      {
         return §&!O§;
      }
      
      public static function set §&T§(param1:int) : void
      {
         §&!O§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §=z§ = param1;
      }
      
      public static function §!!]§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §=z§)
         {
            §,L§.§8!F§.§!!N§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §=z§;
      }
      
      public static function §1q§(param1:String) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in levelProfile)
         {
            if(_loc2_.levelId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §]#§(param1:String) : Boolean
      {
         var _loc2_:Object = §1q§(param1);
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §4p§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §4p§ = param1;
      }
   }
}
