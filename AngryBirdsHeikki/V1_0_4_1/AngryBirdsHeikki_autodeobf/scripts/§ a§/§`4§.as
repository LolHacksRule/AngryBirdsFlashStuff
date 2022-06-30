package § a§
{
   import §%!$§.§[Z§;
   import §%O§.§ !§;
   import flash.utils.Dictionary;
   
   public class §`4§
   {
      
      private static var §5!N§:Array = [];
      
      private static var §[v§:Dictionary = new Dictionary();
       
      
      public function §`4§()
      {
         super();
      }
      
      public static function §2g§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§0]§ = null;
         for(_loc2_ in param1)
         {
            if(!§[v§[_loc2_])
            {
               _loc3_ = new §0]§(param1[_loc2_],_loc2_);
               §[Z§.log("Initializing cutScene: " + _loc2_);
               §[v§[_loc2_] = _loc3_;
               if(§5!N§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§#!P§ = §0]§.§"`§;
               }
            }
         }
      }
      
      public static function §#!d§(param1:String, param2:§ !§) : §0]§
      {
         var _loc3_:§0]§ = §[v§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §]+§(param1:String) : §0]§
      {
         var _loc2_:§0]§ = §[v§[param1];
         if(_loc2_ && §5!N§.indexOf(param1))
         {
            _loc2_.§#!P§ = §0]§.§"`§;
         }
         return _loc2_;
      }
      
      public static function §7d§(param1:String) : void
      {
         if(§5!N§.indexOf(param1) < 0)
         {
            §5!N§.push(param1);
         }
      }
   }
}
