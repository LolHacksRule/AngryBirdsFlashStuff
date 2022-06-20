package §^#?§
{
   import § h§.ErrorPopup;
   
   public class §#!T§
   {
      
      public static const §;#3§:String = "STAR";
      
      public static const §4!!§:String = "Star Player, rank ";
      
      public static const §##§:int = 100;
      
      public static const §7!9§:§2R§ = new §2R§("QUALIFIER","Warm-up league","","");
      
      public static const §&X§:§2R§ = new §2R§("GLASS","Glass League","","");
      
      public static const §##8§:§2R§ = new §2R§("WOOD","Wood League","","league_promotion_wood");
      
      public static const §1$7§:§2R§ = new §2R§("STONE","Stone League","","league_promotion_stone");
      
      public static const §!!q§:§2R§ = new §2R§("BRONZE","Bronze League","","league_promotion_bronze");
      
      public static const §18§:§2R§ = new §2R§("SILVER","Silver League","","league_promotion_silver");
      
      public static const §@@§:§2R§ = new §2R§("GOLD","Gold League","","league_promotion_gold");
      
      public static const §`"S§:§2R§ = new §2R§("DIAMOND","Diamond League","","league_promotion_diamond");
      
      public static const §]#%§:Array = [§&X§,§##8§,§1$7§,§!!q§,§18§,§@@§,§`"S§];
       
      
      public function §#!T§()
      {
         super();
      }
      
      public static function §5!&§(param1:String) : §2R§
      {
         var _loc2_:§2R§ = null;
         for each(_loc2_ in §]#%§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return §7!9§;
      }
      
      public static function §8p§(param1:String) : §2R§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §]#%§.length)
         {
            if(§]#%§[_loc2_].id == param1)
            {
               if(_loc2_ == §]#%§.length - 1)
               {
                  return §]#%§[_loc2_];
               }
               return §]#%§[_loc2_ + 1];
            }
            _loc2_++;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t find league ID: " + param1));
         return null;
      }
      
      public static function §^#S§(param1:String) : §2R§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §]#%§.length)
         {
            if(§]#%§[_loc2_].id == param1)
            {
               if(_loc2_ == §]#%§.length - 1)
               {
                  return §]#%§[_loc2_];
               }
               return §]#%§[_loc2_ - 1];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §4!c§(param1:Object) : §2R§
      {
         var _loc2_:§2R§ = null;
         if(param1)
         {
            for each(_loc2_ in §]#%§)
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
      
      public static function §!#z§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§2R§ = null;
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               _loc3_ = §5!&§(_loc2_.n);
               if(_loc3_)
               {
                  _loc3_.reward = _loc2_.r;
                  _loc3_.§+9§ = _loc2_.rm;
               }
            }
         }
      }
      
      public static function §]"h§() : String
      {
         return §]#%§[§]#%§.length - 1].name;
      }
      
      public static function §@" §(param1:String) : int
      {
         var _loc3_:§2R§ = null;
         var _loc2_:int = 1;
         for each(_loc3_ in §]#%§)
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
