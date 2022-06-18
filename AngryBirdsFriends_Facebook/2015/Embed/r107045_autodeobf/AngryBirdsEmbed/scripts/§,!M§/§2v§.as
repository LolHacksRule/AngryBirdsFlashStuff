package §,!M§
{
   import §3V§.§7!"§;
   import §@!;§.§!!=§;
   import §[v§.§0&§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §2v§
   {
      
      private static var §+&§:Array = [];
      
      private static var §#!4§:§7!"§ = new §7!"§();
      
      private static var § !!§:Dictionary = new Dictionary();
       
      
      public function §2v§()
      {
         super();
      }
      
      public static function §!2§(param1:String, param2:ByteArray) : void
      {
         §#!4§[param1] = param2;
      }
      
      public static function §1U§(param1:String) : ByteArray
      {
         return §#!4§[param1];
      }
      
      public static function §%!5§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§0!K§ = null;
         for(_loc2_ in param1)
         {
            if(!§ !!§[_loc2_])
            {
               _loc3_ = new §0!K§(param1[_loc2_],_loc2_);
               §!!=§.log("Initializing cutScene: " + _loc2_);
               § !!§[_loc2_] = _loc3_;
               if(§+&§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§5u§ = §0!K§.§"!@§;
               }
            }
         }
      }
      
      public static function §&!"§(param1:String, param2:§0&§) : §0!K§
      {
         var _loc3_:§0!K§ = § !!§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function §9J§(param1:String) : §0!K§
      {
         var _loc2_:§0!K§ = § !!§[param1];
         if(_loc2_ && §+&§.indexOf(param1))
         {
            _loc2_.§5u§ = §0!K§.§"!@§;
         }
         return _loc2_;
      }
      
      public static function §-&§(param1:String) : void
      {
         if(§+&§.indexOf(param1) < 0)
         {
            §+&§.push(param1);
         }
      }
   }
}
