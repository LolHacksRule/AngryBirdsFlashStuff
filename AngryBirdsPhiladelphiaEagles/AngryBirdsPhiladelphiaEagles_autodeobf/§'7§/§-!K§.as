package §'7§
{
   import §#e§.§'?§;
   import §`K§.§ L§;
   import flash.utils.Dictionary;
   
   public class §-!K§
   {
      
      private static var §2!,§:Array = [];
      
      private static var §^+§:Dictionary = new Dictionary();
       
      
      public function §-!K§()
      {
         super();
      }
      
      public static function §&!E§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§2X§ = null;
         for(_loc2_ in param1)
         {
            if(!§^+§[_loc2_])
            {
               _loc3_ = new §2X§(param1[_loc2_],_loc2_);
               § L§.log("Initializing cutScene: " + _loc2_);
               §^+§[_loc2_] = _loc3_;
               if(§2!,§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§=!6§ = §2X§.§9=§;
               }
            }
         }
      }
      
      public static function §+!7§(param1:String, param2:§'?§) : §2X§
      {
         var _loc3_:§2X§ = §^+§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §?3§(param1:String) : §2X§
      {
         var _loc2_:§2X§ = §^+§[param1];
         if(_loc2_ && §2!,§.indexOf(param1))
         {
            _loc2_.§=!6§ = §2X§.§9=§;
         }
         return _loc2_;
      }
      
      public static function §8Z§(param1:String) : void
      {
         if(§2!,§.indexOf(param1) < 0)
         {
            §2!,§.push(param1);
         }
      }
   }
}
