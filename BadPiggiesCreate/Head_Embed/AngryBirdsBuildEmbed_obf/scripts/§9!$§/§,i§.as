package §9!$§
{
   import § !r§.§`![§;
   import §=U§.§3p§;
   import flash.utils.Dictionary;
   
   public class §,i§
   {
      
      private static var §-,§:Array = [];
      
      private static var §]!u§:Dictionary = new Dictionary();
       
      
      public function §,i§()
      {
         super();
      }
      
      public static function §6!m§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§6R§ = null;
         for(_loc2_ in param1)
         {
            if(!§]!u§[_loc2_])
            {
               _loc3_ = new §6R§(param1[_loc2_],_loc2_);
               §`![§.log("Initializing cutScene: " + _loc2_);
               §]!u§[_loc2_] = _loc3_;
               if(§-,§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§+G§ = §6R§.§!!J§;
               }
            }
         }
      }
      
      public static function §#!>§(param1:String, param2:§3p§) : §6R§
      {
         var _loc3_:§6R§ = §]!u§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §8!Z§(param1:String) : §6R§
      {
         var _loc2_:§6R§ = §]!u§[param1];
         if(_loc2_ && §-,§.indexOf(param1))
         {
            _loc2_.§+G§ = §6R§.§!!J§;
         }
         return _loc2_;
      }
      
      public static function §4I§(param1:String) : void
      {
         if(§-,§.indexOf(param1) < 0)
         {
            §-,§.push(param1);
         }
      }
   }
}
