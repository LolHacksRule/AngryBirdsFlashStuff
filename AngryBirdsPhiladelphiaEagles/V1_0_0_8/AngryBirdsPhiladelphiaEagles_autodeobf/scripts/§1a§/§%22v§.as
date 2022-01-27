package §1a§
{
   import §"1§.§3'§;
   import §<A§.§'K§;
   import flash.utils.Dictionary;
   
   public class §"v§
   {
      
      private static var §2#§:Array = [];
      
      private static var §]F§:Dictionary = new Dictionary();
       
      
      public function §"v§()
      {
         super();
      }
      
      public static function §&O§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§^h§ = null;
         for(_loc2_ in param1)
         {
            if(!§]F§[_loc2_])
            {
               _loc3_ = new §^h§(param1[_loc2_],_loc2_);
               §3'§.log("Initializing cutScene: " + _loc2_);
               §]F§[_loc2_] = _loc3_;
               if(§2#§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§]!2§ = §^h§.§8z§;
               }
            }
         }
      }
      
      public static function §>V§(param1:String, param2:§'K§) : §^h§
      {
         var _loc3_:§^h§ = §]F§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §&!4§(param1:String) : §^h§
      {
         var _loc2_:§^h§ = §]F§[param1];
         if(_loc2_ && §2#§.indexOf(param1))
         {
            _loc2_.§]!2§ = §^h§.§8z§;
         }
         return _loc2_;
      }
      
      public static function §=G§(param1:String) : void
      {
         if(§2#§.indexOf(param1) < 0)
         {
            §2#§.push(param1);
         }
      }
   }
}
