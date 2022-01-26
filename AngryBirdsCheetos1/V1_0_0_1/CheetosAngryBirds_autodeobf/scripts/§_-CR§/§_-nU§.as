package §_-CR§
{
   import §_-5p§.§_-Kf§;
   import §_-U0§.§_-tF§;
   import flash.utils.Dictionary;
   
   public class §_-nU§
   {
      
      private static var §_-d-§:Array = [];
      
      private static var §_-5Z§:Dictionary = new Dictionary();
       
      
      public function §_-nU§()
      {
         super();
      }
      
      public static function §_-yM§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-SU§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-5Z§[_loc2_])
            {
               _loc3_ = new §_-SU§(param1[_loc2_],_loc2_);
               §_-tF§.log("Initializing cutScene: " + _loc2_);
               §_-5Z§[_loc2_] = _loc3_;
               if(§_-d-§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§_-10§ = §_-SU§.§_-eT§;
               }
            }
         }
      }
      
      public static function §_-64§(param1:String, param2:§_-Kf§) : §_-SU§
      {
         var _loc3_:§_-SU§ = §_-5Z§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §_-6f§(param1:String) : §_-SU§
      {
         var _loc2_:§_-SU§ = §_-5Z§[param1];
         if(_loc2_ && §_-d-§.indexOf(param1))
         {
            _loc2_.§_-10§ = §_-SU§.§_-eT§;
         }
         return _loc2_;
      }
      
      public static function §_-PS§(param1:String) : void
      {
         if(§_-d-§.indexOf(param1) < 0)
         {
            §_-d-§.push(param1);
         }
      }
   }
}
