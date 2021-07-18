package §_-W0§
{
   import §_-ZI§.§_-9v§;
   import flash.events.EventDispatcher;
   
   public class §_-MC§ extends EventDispatcher
   {
      
      private static var §_-DK§:§_-9v§;
      
      private static var §_-5a§:Array;
      
      private static var §_-Oa§:int = 1;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-Oa§ = 1;
         }
      }
      
      public function §_-MC§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
         }
      }
      
      public static function get §_-9H§() : §_-9v§
      {
         return §_-DK§;
      }
      
      public static function set §_-9H§(param1:§_-9v§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            §_-DK§ = param1;
         }
      }
      
      public static function get §_-7w§() : Object
      {
         return {
            "id":§_-DK§.§_-Yv§,
            "nickName":§_-DK§.name,
            "security":§_-DK§.§_-le§
         };
      }
      
      public static function get competition() : int
      {
         return §_-Oa§;
      }
      
      public static function set competition(param1:int) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            §_-Oa§ = param1;
         }
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:Object = null;
         if(_loc6_ || §_-MC§)
         {
            §_-5a§ = param1;
         }
         for each(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               §_-Qu§.§_-di§.§_-ux§(_loc2_.levelId,_loc2_.score);
            }
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-5a§;
      }
      
      public static function §_-yg§(param1:String) : Object
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Object = null;
         for each(_loc2_ in levelProfile)
         {
            if(_loc5_ || §_-MC§)
            {
               if(_loc2_.levelId == param1)
               {
                  if(!_loc6_)
                  {
                     return _loc2_;
                  }
               }
            }
         }
         return null;
      }
      
      public static function §_-wR§(param1:String) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:* = true;
         var _loc3_:Object = §_-yg§(param1);
         if(!_loc4_)
         {
            if(_loc3_ != null)
            {
               if(_loc5_ || §_-MC§)
               {
                  if(_loc3_.unlocked)
                  {
                     if(_loc4_)
                     {
                     }
                     addr57:
                     return _loc2_;
                     addr56:
                  }
                  §§goto(addr56);
               }
               §§push(false);
               if(_loc5_)
               {
                  _loc2_ = §§pop();
                  §§goto(addr56);
               }
               §§goto(addr57);
            }
         }
         §§goto(addr57);
      }
   }
}
