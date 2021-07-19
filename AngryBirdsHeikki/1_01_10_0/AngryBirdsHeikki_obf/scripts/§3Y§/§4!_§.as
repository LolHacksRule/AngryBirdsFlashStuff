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
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §&!O§ = 1;
         }
      }
      
      public function §4!_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function get §,t§() : §;!P§
      {
         return §?8§;
      }
      
      public static function set §,t§(param1:§;!P§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §?8§ = param1;
         }
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
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && §4!_§))
         {
            §&!O§ = param1;
         }
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §=z§ = param1;
         }
      }
      
      public static function §!!]§() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:Object = null;
         for each(_loc1_ in §=z§)
         {
            if(_loc4_)
            {
               §,L§.§8!F§.§!!N§(_loc1_.levelId,_loc1_.score);
            }
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §=z§;
      }
      
      public static function §1q§(param1:String) : Object
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:* = levelProfile;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc6_)
               {
                  break;
               }
               if(_loc2_.levelId == param1)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public static function §]#§(param1:String) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Object = §1q§(param1);
         §§push(_loc2_ == null);
         if(_loc4_)
         {
            return !§§pop();
         }
      }
      
      public static function get levelProfileSecurity() : String
      {
         return §4p§;
      }
      
      public static function set levelProfileSecurity(param1:String) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc3_)
         {
            §4p§ = param1;
         }
      }
   }
}
