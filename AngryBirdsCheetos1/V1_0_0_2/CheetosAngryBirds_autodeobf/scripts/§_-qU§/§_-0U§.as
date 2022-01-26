package §_-qU§
{
   import §_-aA§.§_-I0§;
   import §_-my§.§_-V0§;
   import flash.utils.Dictionary;
   
   public class §_-0U§
   {
      
      private static var §_-uw§:Array = [];
      
      private static var §_-0-3§:Dictionary = new Dictionary();
       
      
      public function §_-0U§()
      {
         super();
      }
      
      public static function §_-LN§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-4t§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-0-3§[_loc2_])
            {
               _loc3_ = new §_-4t§(param1[_loc2_],_loc2_);
               §_-I0§.log("Initializing cutScene: " + _loc2_);
               §_-0-3§[_loc2_] = _loc3_;
               if(§_-uw§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§_-qi§ = §_-4t§.§_-9d§;
               }
            }
         }
      }
      
      public static function §_-hR§(param1:String, param2:§_-V0§) : §_-4t§
      {
         var _loc3_:§_-4t§ = §_-0-3§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §_-xM§(param1:String) : §_-4t§
      {
         var _loc2_:§_-4t§ = §_-0-3§[param1];
         if(_loc2_ && §_-uw§.indexOf(param1))
         {
            _loc2_.§_-qi§ = §_-4t§.§_-9d§;
         }
         return _loc2_;
      }
      
      public static function §_-eF§(param1:String) : void
      {
         if(§_-uw§.indexOf(param1) < 0)
         {
            §_-uw§.push(param1);
         }
      }
   }
}
