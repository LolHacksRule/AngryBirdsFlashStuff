package §%j§
{
   import §&!W§.§8!K§;
   import §&N§.§@,§;
   import flash.utils.Dictionary;
   
   public class §8a§
   {
      
      private static var §[!7§:Array = [];
      
      private static var §!!9§:Dictionary = new Dictionary();
       
      
      public function §8a§()
      {
         super();
      }
      
      public static function §!!U§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§#!,§ = null;
         for(_loc2_ in param1)
         {
            if(!§!!9§[_loc2_])
            {
               _loc3_ = new §#!,§(param1[_loc2_],_loc2_);
               §@,§.log("Initializing cutScene: " + _loc2_);
               §!!9§[_loc2_] = _loc3_;
               if(§[!7§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§=!K§ = §#!,§.§&,§;
               }
            }
         }
      }
      
      public static function §^!B§(param1:String, param2:§8!K§) : §#!,§
      {
         var _loc3_:§#!,§ = §!!9§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §2!+§(param1:String) : §#!,§
      {
         var _loc2_:§#!,§ = §!!9§[param1];
         if(_loc2_ && §[!7§.indexOf(param1))
         {
            _loc2_.§=!K§ = §#!,§.§&,§;
         }
         return _loc2_;
      }
      
      public static function §]Q§(param1:String) : void
      {
         if(§[!7§.indexOf(param1) < 0)
         {
            §[!7§.push(param1);
         }
      }
   }
}
