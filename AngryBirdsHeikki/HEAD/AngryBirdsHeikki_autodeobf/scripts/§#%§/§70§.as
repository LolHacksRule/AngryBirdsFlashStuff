package §#%§
{
   import §-!9§.§9!!§;
   import flash.events.EventDispatcher;
   
   public class §70§ extends EventDispatcher
   {
      
      private static var §&3§:§9!!§;
      
      private static var §#,§:Array;
      
      private static var §`h§:String;
      
      private static var §[n§:int = 1;
       
      
      public function §70§()
      {
         super();
      }
      
      public static function get §6d§() : §9!!§
      {
         return §&3§;
      }
      
      public static function set §6d§(param1:§9!!§) : void
      {
         §&3§ = param1;
      }
      
      public static function get §>!_§() : Object
      {
         return {
            "id":§&3§.§6!X§,
            "nickName":§&3§.name,
            "security":§&3§.§[!J§
         };
      }
      
      public static function get §"!8§() : int
      {
         return §[n§;
      }
      
      public static function set §"!8§(param1:int) : void
      {
         §[n§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         §#,§ = param1;
      }
      
      public static function §2!I§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in §#,§)
         {
            §"!R§.§0!P§.§-!F§(_loc1_.levelId,_loc1_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §#,§;
      }
      
      public static function §3_§(param1:String) : Object
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
      
      public static function §<!D§(param1:String) : Boolean
      {
         var _loc2_:Object = §3_§(param1);
         return _loc2_ != null;
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §`h§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         §`h§ = param1;
      }
   }
}
