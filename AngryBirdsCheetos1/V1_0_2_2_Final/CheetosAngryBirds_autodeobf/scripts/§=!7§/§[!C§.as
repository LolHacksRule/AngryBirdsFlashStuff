package §=!7§
{
   import § !G§.§ #§;
   import § `§.§2w§;
   import flash.utils.Dictionary;
   
   public class §[!C§
   {
      
      private static var §2[§:Array = [];
      
      private static var § !#§:Dictionary = new Dictionary();
       
      
      public function §[!C§()
      {
         super();
      }
      
      public static function §+!'§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§93§ = null;
         for(_loc2_ in param1)
         {
            if(!§ !#§[_loc2_])
            {
               _loc3_ = new §93§(param1[_loc2_],_loc2_);
               § #§.log("Initializing cutScene: " + _loc2_);
               § !#§[_loc2_] = _loc3_;
               if(§2[§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§]!A§ = §93§.§,,§;
               }
            }
         }
      }
      
      public static function §,!!§(param1:String, param2:§2w§) : §93§
      {
         var _loc3_:§93§ = § !#§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §9[§(param1:String) : §93§
      {
         var _loc2_:§93§ = § !#§[param1];
         if(_loc2_ && §2[§.indexOf(param1))
         {
            _loc2_.§]!A§ = §93§.§,,§;
         }
         return _loc2_;
      }
      
      public static function §5y§(param1:String) : void
      {
         if(§2[§.indexOf(param1) < 0)
         {
            §2[§.push(param1);
         }
      }
   }
}
