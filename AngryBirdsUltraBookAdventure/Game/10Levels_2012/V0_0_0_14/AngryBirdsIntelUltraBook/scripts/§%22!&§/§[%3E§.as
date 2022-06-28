package §"!&§
{
   import §,6§.§!o§;
   import §6z§.§[g§;
   import flash.utils.Dictionary;
   
   public class §[>§
   {
      
      private static var §-!=§:Array = [];
      
      private static var §1Q§:Dictionary = new Dictionary();
       
      
      public function §[>§()
      {
         super();
      }
      
      public static function §+'§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§"R§ = null;
         for(_loc2_ in param1)
         {
            if(!§1Q§[_loc2_])
            {
               _loc3_ = new §"R§(param1[_loc2_],_loc2_);
               §[g§.log("Initializing cutScene: " + _loc2_);
               §1Q§[_loc2_] = _loc3_;
               if(§-!=§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§`!`§ = §"R§.§continue§;
               }
            }
         }
      }
      
      public static function §4i§(param1:String, param2:§!o§) : §"R§
      {
         var _loc3_:§"R§ = §1Q§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §4!#§(param1:String) : §"R§
      {
         var _loc2_:§"R§ = §1Q§[param1];
         if(_loc2_ && §-!=§.indexOf(param1))
         {
            _loc2_.§`!`§ = §"R§.§continue§;
         }
         return _loc2_;
      }
      
      public static function §+m§(param1:String) : void
      {
         if(§-!=§.indexOf(param1) < 0)
         {
            §-!=§.push(param1);
         }
      }
   }
}
