package §'!I§
{
   import § !N§.§`v§;
   import §-!5§.§5s§;
   import flash.utils.Dictionary;
   
   public class §8Y§
   {
      
      private static var §@'§:Array = [];
      
      private static var §@!K§:Dictionary = new Dictionary();
       
      
      public function §8Y§()
      {
         super();
      }
      
      public static function §'!+§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§6A§ = null;
         for(_loc2_ in param1)
         {
            if(!§@!K§[_loc2_])
            {
               _loc3_ = new §6A§(param1[_loc2_],_loc2_);
               §5s§.log("Initializing cutScene: " + _loc2_);
               §@!K§[_loc2_] = _loc3_;
               if(§@'§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§,B§ = §6A§.§-R§;
               }
            }
         }
      }
      
      public static function §+W§(param1:String, param2:§`v§) : §6A§
      {
         var _loc3_:§6A§ = §@!K§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §-!F§(param1:String) : §6A§
      {
         var _loc2_:§6A§ = §@!K§[param1];
         if(_loc2_ && §@'§.indexOf(param1))
         {
            _loc2_.§,B§ = §6A§.§-R§;
         }
         return _loc2_;
      }
      
      public static function §44§(param1:String) : void
      {
         if(§@'§.indexOf(param1) < 0)
         {
            §@'§.push(param1);
         }
      }
   }
}
