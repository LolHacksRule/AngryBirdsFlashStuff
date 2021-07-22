package §##Z§
{
   import §>z§.ErrorPopup;
   
   public class §'#N§
   {
      
      public static const §7!A§:String = "STAR";
      
      public static const §-$+§:String = "Star Player, rank ";
      
      public static const §+!0§:int = 100;
      
      public static const §;#K§:§"#Q§ = new §"#Q§("QUALIFIER","Warm-up league","","");
      
      public static const §#!>§:§"#Q§ = new §"#Q§("GLASS","Glass League","","");
      
      public static const §=!;§:§"#Q§ = new §"#Q§("WOOD","Wood League","","league_promotion_wood");
      
      public static const §7#J§:§"#Q§ = new §"#Q§("STONE","Stone League","","league_promotion_stone");
      
      public static const §<$C§:§"#Q§ = new §"#Q§("BRONZE","Bronze League","","league_promotion_bronze");
      
      public static const §,"1§:§"#Q§ = new §"#Q§("SILVER","Silver League","","league_promotion_silver");
      
      public static const §4!P§:§"#Q§ = new §"#Q§("GOLD","Gold League","","league_promotion_gold");
      
      public static const §3"4§:§"#Q§ = new §"#Q§("DIAMOND","Diamond League","","league_promotion_diamond");
      
      public static const §3!N§:Array = [§#!>§,§=!;§,§7#J§,§<$C§,§,"1§,§4!P§,§3"4§];
       
      
      public function §'#N§()
      {
         super();
      }
      
      public static function §?!6§(param1:String) : §"#Q§
      {
         var _loc2_:§"#Q§ = null;
         for each(_loc2_ in §3!N§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return §;#K§;
      }
      
      public static function §6!>§(param1:String) : §"#Q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §3!N§.length)
         {
            if(§3!N§[_loc2_].id == param1)
            {
               if(_loc2_ == §3!N§.length - 1)
               {
                  return §3!N§[_loc2_];
               }
               return §3!N§[_loc2_ + 1];
            }
            _loc2_++;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t find league ID: " + param1));
         return null;
      }
      
      public static function §]m§(param1:String) : §"#Q§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §3!N§.length)
         {
            if(§3!N§[_loc2_].id == param1)
            {
               if(_loc2_ == §3!N§.length - 1)
               {
                  return §3!N§[_loc2_];
               }
               return §3!N§[_loc2_ - 1];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §<W§(param1:Object) : §"#Q§
      {
         var _loc2_:§"#Q§ = null;
         if(param1)
         {
            for each(_loc2_ in §3!N§)
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
      
      public static function §7!@§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§"#Q§ = null;
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               _loc3_ = §?!6§(_loc2_.n);
               if(_loc3_)
               {
                  _loc3_.reward = _loc2_.r;
                  _loc3_.§+#s§ = _loc2_.rm;
               }
            }
         }
      }
      
      public static function §#$0§() : String
      {
         return §3!N§[§3!N§.length - 1].name;
      }
      
      public static function §'#_§(param1:String) : int
      {
         var _loc3_:§"#Q§ = null;
         var _loc2_:int = 1;
         for each(_loc3_ in §3!N§)
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
