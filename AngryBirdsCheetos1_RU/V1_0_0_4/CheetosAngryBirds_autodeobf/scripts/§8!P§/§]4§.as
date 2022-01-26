package §8!P§
{
   import §8K§.§>g§;
   import §^!&§.§;C§;
   import flash.utils.Dictionary;
   
   public class §]4§
   {
      
      private static var §]!4§:Array = [];
      
      private static var § !0§:Dictionary = new Dictionary();
       
      
      public function §]4§()
      {
         super();
      }
      
      public static function §?!+§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§>-§ = null;
         for(_loc2_ in param1)
         {
            if(!§ !0§[_loc2_])
            {
               _loc3_ = new §>-§(param1[_loc2_],_loc2_);
               §;C§.log("Initializing cutScene: " + _loc2_);
               § !0§[_loc2_] = _loc3_;
               if(§]!4§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§8E§ = §>-§.§]_§;
               }
            }
         }
      }
      
      public static function §&v§(param1:String, param2:§>g§) : §>-§
      {
         var _loc3_:§>-§ = § !0§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §2=§(param1:String) : §>-§
      {
         var _loc2_:§>-§ = § !0§[param1];
         if(_loc2_ && §]!4§.indexOf(param1))
         {
            _loc2_.§8E§ = §>-§.§]_§;
         }
         return _loc2_;
      }
      
      public static function §4x§(param1:String) : void
      {
         if(§]!4§.indexOf(param1) < 0)
         {
            §]!4§.push(param1);
         }
      }
   }
}
