package §-!5§
{
   import §'!n§.§@B§;
   import §6!C§.§6E§;
   import §^e§.§0"1§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class § `§
   {
      
      private static var §[!>§:Array = [];
      
      private static var §9"D§:§@B§ = new §@B§();
      
      private static var §5!^§:Dictionary = new Dictionary();
       
      
      public function § `§()
      {
         super();
      }
      
      public static function §>!@§(param1:String, param2:ByteArray) : void
      {
         §9"D§[param1] = param2;
      }
      
      public static function §17§(param1:String) : ByteArray
      {
         return §9"D§[param1];
      }
      
      public static function §<0§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§`!C§ = null;
         for(_loc2_ in param1)
         {
            if(!§5!^§[_loc2_])
            {
               _loc3_ = new §`!C§(param1[_loc2_],_loc2_);
               §6E§.log("Initializing cutScene: " + _loc2_);
               §5!^§[_loc2_] = _loc3_;
               if(§[!>§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§=%§ = §`!C§.§'!r§;
               }
            }
         }
      }
      
      public static function §[b§(param1:String, param2:§0"1§) : §`!C§
      {
         var _loc3_:§`!C§ = §5!^§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §`!C§
      {
         var _loc2_:§`!C§ = §5!^§[param1];
         if(_loc2_ && §[!>§.indexOf(param1))
         {
            _loc2_.§=%§ = §`!C§.§'!r§;
         }
         return _loc2_;
      }
      
      public static function §^!#§(param1:String) : void
      {
         if(§[!>§.indexOf(param1) < 0)
         {
            §[!>§.push(param1);
         }
      }
   }
}
