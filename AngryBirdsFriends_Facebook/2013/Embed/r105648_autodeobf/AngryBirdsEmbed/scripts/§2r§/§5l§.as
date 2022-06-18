package §2r§
{
   import §8!=§.§20§;
   import §=!K§.§^Q§;
   import §?!8§.§2>§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §5l§
   {
      
      private static var §8o§:Array = [];
      
      private static var §3!C§:§20§ = new §20§();
      
      private static var §#!G§:Dictionary = new Dictionary();
       
      
      public function §5l§()
      {
         super();
      }
      
      public static function §+!+§(param1:String, param2:ByteArray) : void
      {
         §3!C§[param1] = param2;
      }
      
      public static function §?!,§(param1:String) : ByteArray
      {
         return §3!C§[param1];
      }
      
      public static function §6!7§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§@!,§ = null;
         for(_loc2_ in param1)
         {
            if(!§#!G§[_loc2_])
            {
               _loc3_ = new §@!,§(param1[_loc2_],_loc2_);
               §2>§.log("Initializing cutScene: " + _loc2_);
               §#!G§[_loc2_] = _loc3_;
               if(§8o§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§]B§ = §@!,§.§@! §;
               }
            }
         }
      }
      
      public static function §-=§(param1:String, param2:§^Q§) : §@!,§
      {
         var _loc3_:§@!,§ = §#!G§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §[D§(param1:String) : §@!,§
      {
         var _loc2_:§@!,§ = §#!G§[param1];
         if(_loc2_ && §8o§.indexOf(param1))
         {
            _loc2_.§]B§ = §@!,§.§@! §;
         }
         return _loc2_;
      }
      
      public static function §2!E§(param1:String) : void
      {
         if(§8o§.indexOf(param1) < 0)
         {
            §8o§.push(param1);
         }
      }
   }
}
