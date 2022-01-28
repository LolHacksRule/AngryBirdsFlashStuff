package §_-wG§
{
   import §_-3b§.§_-Og§;
   import §_-gM§.§_-yj§;
   import flash.utils.Dictionary;
   
   public class §_-et§
   {
      
      private static var §_-Ge§:Array = [];
      
      private static var §_-au§:Dictionary = new Dictionary();
       
      
      public function §_-et§()
      {
         super();
      }
      
      public static function §catch§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§_-G2§ = null;
         for(_loc2_ in param1)
         {
            if(!§_-au§[_loc2_])
            {
               _loc3_ = new §_-G2§(param1[_loc2_],_loc2_);
               §_-yj§.log("Initializing cutScene: " + _loc2_);
               §_-au§[_loc2_] = _loc3_;
               if(§_-Ge§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§_-AT§ = §_-G2§.§extends§;
               }
            }
         }
      }
      
      public static function §_-Kv§(param1:String, param2:§_-Og§) : §_-G2§
      {
         var _loc3_:§_-G2§ = §_-au§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §_-3l§(param1:String) : §_-G2§
      {
         var _loc2_:§_-G2§ = §_-au§[param1];
         if(_loc2_ && §_-Ge§.indexOf(param1))
         {
            _loc2_.§_-AT§ = §_-G2§.§extends§;
         }
         return _loc2_;
      }
      
      public static function §_-cj§(param1:String) : void
      {
         if(§_-Ge§.indexOf(param1) < 0)
         {
            §_-Ge§.push(param1);
         }
      }
   }
}
