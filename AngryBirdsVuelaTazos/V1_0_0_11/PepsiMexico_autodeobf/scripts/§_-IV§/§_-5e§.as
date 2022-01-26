package §_-IV§
{
   import §_-nE§.§_-Vr§;
   import flash.events.EventDispatcher;
   
   public class §_-5e§ extends EventDispatcher
   {
      
      private static var §_-Dl§:§_-Vr§;
      
      private static var §_-UX§:Array;
      
      private static var §_-6a§:int = 1;
       
      
      public function §_-5e§()
      {
         super();
      }
      
      public static function get §_-bb§() : §_-Vr§
      {
         return §_-Dl§;
      }
      
      public static function set §_-bb§(param1:§_-Vr§) : void
      {
         §_-Dl§ = param1;
      }
      
      public static function get §_-JC§() : Object
      {
         return {
            "id":§_-Dl§.§_-sc§,
            "nickName":§_-Dl§.name,
            "security":§_-Dl§.§_-dw§
         };
      }
      
      public static function get competition() : int
      {
         return §_-6a§;
      }
      
      public static function set competition(param1:int) : void
      {
         §_-6a§ = param1;
      }
      
      public static function set levelProfile(param1:Array) : void
      {
         var _loc2_:Object = null;
         §_-UX§ = param1;
         for each(_loc2_ in param1)
         {
            §_-I8§.§_-Gn§.§_-sy§(_loc2_.levelId,_loc2_.score);
         }
      }
      
      public static function get levelProfile() : Array
      {
         return §_-UX§;
      }
      
      public static function §_-m9§(param1:String) : Object
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
      
      public static function §_-2j§(param1:String) : Boolean
      {
         var _loc2_:Boolean = true;
         var _loc3_:Object = §_-m9§(param1);
         if(_loc3_ != null)
         {
            if(_loc3_.unlocked)
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
   }
}
