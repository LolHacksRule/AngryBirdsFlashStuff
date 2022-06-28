package §_-n§
{
   import §_-0BH§.§_-FK§;
   import §_-8d§.§_-0FF§;
   import flash.utils.Dictionary;
   
   public class §_-II§
   {
      
      private static var §_-Of§:Array = [];
      
      private static var §_-xR§:Dictionary = new Dictionary();
       
      
      public function §_-II§()
      {
         super();
      }
      
      public static function §_-f2§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-0BF§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-xR§[_loc2_])
            {
               _loc3_ = new §_-0BF§(param1[_loc2_],_loc2_);
               §_-FK§.log("Initializing cutScene: " + _loc2_);
               §_-xR§[_loc2_] = _loc3_;
               if(§_-Of§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§_-01k§ = §_-0BF§.§_-rm§;
               }
            }
         }
      }
      
      public static function §_-N8§(param1:String, param2:§_-0FF§) : §_-0BF§
      {
         var _loc3_:§_-0BF§ = §_-xR§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §_-gy§(param1:String) : §_-0BF§
      {
         var _loc2_:§_-0BF§ = §_-xR§[param1];
         if(_loc2_ && §_-Of§.indexOf(param1))
         {
            _loc2_.§_-01k§ = §_-0BF§.§_-rm§;
         }
         return _loc2_;
      }
      
      public static function §_-VG§(param1:String) : void
      {
         if(§_-Of§.indexOf(param1) < 0)
         {
            §_-Of§.push(param1);
         }
      }
   }
}
