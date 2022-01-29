package §%#w§
{
   import §?P§.ErrorPopup;
   
   public class §?"z§
   {
      
      public static const §-3§:String = "STAR";
      
      public static const §5"I§:String = "Star Player, rank ";
      
      public static const § "§:int = 100;
      
      public static const §%#>§:§4$'§ = new §4$'§("QUALIFIER","Warm-up league","","");
      
      public static const §8!&§:§4$'§ = new §4$'§("GLASS","Glass League","","");
      
      public static const §3!@§:§4$'§ = new §4$'§("WOOD","Wood League","","league_promotion_wood");
      
      public static const §]#0§:§4$'§ = new §4$'§("STONE","Stone League","","league_promotion_stone");
      
      public static const §1+§:§4$'§ = new §4$'§("BRONZE","Bronze League","","league_promotion_bronze");
      
      public static const §2#Y§:§4$'§ = new §4$'§("SILVER","Silver League","","league_promotion_silver");
      
      public static const §]!3§:§4$'§ = new §4$'§("GOLD","Gold League","","league_promotion_gold");
      
      public static const §`#A§:§4$'§ = new §4$'§("DIAMOND","Diamond League","","league_promotion_diamond");
      
      public static const §%#V§:Array = [§8!&§,§3!@§,§]#0§,§1+§,§2#Y§,§]!3§,§`#A§];
       
      
      public function §?"z§()
      {
         super();
      }
      
      public static function §-M§(param1:String) : §4$'§
      {
         var _loc2_:§4$'§ = null;
         for each(_loc2_ in §%#V§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return §%#>§;
      }
      
      public static function §5?§(param1:String) : §4$'§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §%#V§.length)
         {
            if(§%#V§[_loc2_].id == param1)
            {
               if(_loc2_ == §%#V§.length - 1)
               {
                  return §%#V§[_loc2_];
               }
               return §%#V§[_loc2_ + 1];
            }
            _loc2_++;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Can\'t find league ID: " + param1));
         return null;
      }
      
      public static function § W§(param1:String) : §4$'§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §%#V§.length)
         {
            if(§%#V§[_loc2_].id == param1)
            {
               if(_loc2_ == §%#V§.length - 1)
               {
                  return §%#V§[_loc2_];
               }
               return §%#V§[_loc2_ - 1];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §&$+§(param1:Object) : §4$'§
      {
         var _loc2_:§4$'§ = null;
         if(param1)
         {
            for each(_loc2_ in §%#V§)
            {
               if(_loc2_.id == param1.tn)
               {
                  _loc2_.name = param1.ln;
                  return _loc2_;
               }
            }
         }
         return null;
      }
      
      public static function §`"Z§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§4$'§ = null;
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               _loc3_ = §-M§(_loc2_.n);
               if(_loc3_)
               {
                  _loc3_.reward = _loc2_.r;
                  _loc3_.§[#_§ = _loc2_.rm;
               }
            }
         }
      }
      
      public static function §"#S§() : String
      {
         return §%#V§[§%#V§.length - 1].name;
      }
      
      public static function §@!w§(param1:String) : int
      {
         var _loc3_:§4$'§ = null;
         var _loc2_:int = 1;
         for each(_loc3_ in §%#V§)
         {
            if(_loc3_.id == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
   }
}
