package §3n§
{
   import §'!G§.§1C§;
   import §9!Y§.§!q§;
   import flash.utils.Dictionary;
   
   public class §2!C§
   {
      
      private static var §8!D§:Array = [];
      
      private static var §+F§:Dictionary = new Dictionary();
       
      
      public function §2!C§()
      {
         super();
      }
      
      public static function §08§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§1!7§ = null;
         for(_loc2_ in param1)
         {
            if(!§+F§[_loc2_])
            {
               _loc3_ = new §1!7§(param1[_loc2_],_loc2_);
               §1C§.log("Initializing cutScene: " + _loc2_);
               §+F§[_loc2_] = _loc3_;
               if(§8!D§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§4!a§ = §1!7§.§6!Y§;
               }
            }
         }
      }
      
      public static function §?!,§(param1:String, param2:§!q§) : §1!7§
      {
         var _loc3_:§1!7§ = §+F§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §;e§(param1:String) : §1!7§
      {
         var _loc2_:§1!7§ = §+F§[param1];
         if(_loc2_ && §8!D§.indexOf(param1))
         {
            _loc2_.§4!a§ = §1!7§.§6!Y§;
         }
         return _loc2_;
      }
      
      public static function §^=§(param1:String) : void
      {
         if(§8!D§.indexOf(param1) < 0)
         {
            §8!D§.push(param1);
         }
      }
   }
}
