package §6p§
{
   import §2l§.§]O§;
   import §?@§.§"]§;
   import flash.utils.Dictionary;
   
   public class §3n§
   {
      
      private static var §2!C§:Array = [];
      
      private static var §8!D§:Dictionary = new Dictionary();
       
      
      public function §3n§()
      {
         super();
      }
      
      public static function §+F§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§^=§ = null;
         for(_loc2_ in param1)
         {
            if(!§8!D§[_loc2_])
            {
               _loc3_ = new §^=§(param1[_loc2_],_loc2_);
               §"]§.log("Initializing cutScene: " + _loc2_);
               §8!D§[_loc2_] = _loc3_;
               if(§2!C§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§'!I§ = §^=§.§6k§;
               }
            }
         }
      }
      
      public static function §08§(param1:String, param2:§]O§) : §^=§
      {
         var _loc3_:§^=§ = §8!D§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §&!5§(param1:String) : §^=§
      {
         var _loc2_:§^=§ = §8!D§[param1];
         if(_loc2_ && §2!C§.indexOf(param1))
         {
            _loc2_.§'!I§ = §^=§.§6k§;
         }
         return _loc2_;
      }
      
      public static function §?!,§(param1:String) : void
      {
         if(§2!C§.indexOf(param1) < 0)
         {
            §2!C§.push(param1);
         }
      }
   }
}
