package §!!^§
{
   import §-!b§.§[E§;
   import §0!$§.§#!-§;
   import §2W§.§`!v§;
   import flash.utils.ByteArray;
   import flash.utils.Dictionary;
   
   public class §-^§
   {
      
      private static var §8!Z§:Array = [];
      
      private static var §1§:§`!v§ = new §`!v§();
      
      private static var §=F§:Dictionary = new Dictionary();
       
      
      public function §-^§()
      {
         super();
      }
      
      public static function §!2§(param1:String, param2:ByteArray) : void
      {
         §1§[param1] = param2;
      }
      
      public static function §6"#§(param1:String) : ByteArray
      {
         return §1§[param1];
      }
      
      public static function §`!C§(param1:Object) : void
      {
         var _loc2_:* = null;
         var _loc3_:§2_§ = null;
         for(_loc2_ in param1)
         {
            if(!§=F§[_loc2_])
            {
               _loc3_ = new §2_§(param1[_loc2_],_loc2_);
               §#!-§.log("Initializing cutScene: " + _loc2_);
               §=F§[_loc2_] = _loc3_;
               if(§8!Z§.indexOf(_loc2_) >= 0)
               {
                  _loc3_.§+]§ = §2_§.§=m§;
               }
            }
         }
      }
      
      public static function §,r§(param1:String, param2:§[E§) : §2_§
      {
         var _loc3_:§2_§ = §=F§[param1];
         if(_loc3_)
         {
            _loc3_ = _loc3_.clone(param2);
         }
         return _loc3_;
      }
      
      public static function getCutScene(param1:String) : §2_§
      {
         var _loc2_:§2_§ = §=F§[param1];
         if(_loc2_ && §8!Z§.indexOf(param1))
         {
            _loc2_.§+]§ = §2_§.§=m§;
         }
         return _loc2_;
      }
      
      public static function §,Q§(param1:String) : void
      {
         if(§8!Z§.indexOf(param1) < 0)
         {
            §8!Z§.push(param1);
         }
      }
   }
}
