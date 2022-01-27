package §0;§
{
   import §]b§.§'!O§;
   import flash.events.EventDispatcher;
   
   public class §]U§ extends EventDispatcher
   {
      
      private static var §#`§:§'!O§;
      
      private static var §3!'§:Array;
      
      private static var §2!c§:String;
      
      private static var §`!!§:int = 1;
       
      
      public function §]U§()
      {
         super();
      }
      
      public static function get §-v§() : §'!O§
      {
         return §#`§;
      }
      
      public static function set §-v§(param1:§'!O§) : void
      {
         §#`§ = param1;
      }
      
      public static function get §`a§() : Object
      {
         return {
            "id":§#`§.§"!S§,
            "nickName":§#`§.name,
            "security":§#`§.§]t§
         };
      }
      
      public static function get §<8§() : int
      {
         return §`!!§;
      }
      
      public static function set §<8§(param1:int) : void
      {
         §`!!§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §3!'§ = param1;
      }
      
      public static function §@M§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §3!'§)
         {
            §2!S§.§<P§.§5!$§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §3!'§;
      }
      
      public static function §3!+§(param1:String) : Object
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
      
      public static function §&g§(param1:String) : Boolean
      {
         var _loc2_:Object = §3!+§(param1);
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §2!c§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §2!c§ = param1;
      }
   }
}
