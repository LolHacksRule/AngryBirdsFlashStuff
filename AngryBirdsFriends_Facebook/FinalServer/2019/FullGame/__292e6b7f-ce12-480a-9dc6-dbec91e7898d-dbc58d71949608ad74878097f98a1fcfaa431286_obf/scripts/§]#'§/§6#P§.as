package §]#'§
{
   import §?Q§.ErrorPopup;
   
   public class §6#P§
   {
      
      public static const §=# §:String = "STAR";
      
      public static const §?!O§:String = "Star Player, rank ";
      
      public static const §>$0§:int = 100;
      
      public static const §`",§:§3$-§ = new §3$-§("QUALIFIER","Warm-up league","","");
      
      public static const §7"0§:§3$-§ = new §3$-§("GLASS","Glass League","","");
      
      public static const §&!'§:§3$-§ = new §3$-§("WOOD","Wood League","","league_promotion_wood");
      
      public static const §8"W§:§3$-§ = new §3$-§("STONE","Stone League","","league_promotion_stone");
      
      public static const §&$!§:§3$-§ = new §3$-§("BRONZE","Bronze League","","league_promotion_bronze");
      
      public static const §'#F§:§3$-§ = new §3$-§("SILVER","Silver League","","league_promotion_silver");
      
      public static const §-"%§:§3$-§ = new §3$-§("GOLD","Gold League","","league_promotion_gold");
      
      public static const §8z§:§3$-§ = new §3$-§("DIAMOND","Diamond League","","league_promotion_diamond");
      
      public static const §]$+§:Array = [§7"0§,§&!'§,§8"W§,§&$!§,§'#F§,§-"%§,§8z§];
       
      
      public function §6#P§()
      {
         super();
      }
      
      public static function §4Z§(param1:String) : §3$-§
      {
         var _loc2_:§3$-§ = null;
         for each(_loc2_ in §]$+§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return §`",§;
      }
      
      public static function §"M§(param1:String) : §3$-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §]$+§.length)
         {
            if(§]$+§[_loc2_].id == param1)
            {
               if(_loc2_ == §]$+§.length - 1)
               {
                  return §]$+§[_loc2_];
               }
               return §]$+§[_loc2_ + 1];
            }
            _loc2_++;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t find league ID: " + param1));
         return null;
      }
      
      public static function §7#H§(param1:String) : §3$-§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §]$+§.length)
         {
            if(§]$+§[_loc2_].id == param1)
            {
               if(_loc2_ == §]$+§.length - 1)
               {
                  return §]$+§[_loc2_];
               }
               return §]$+§[_loc2_ - 1];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §5!L§(param1:Object) : §3$-§
      {
         var _loc2_:§3$-§ = null;
         if(param1)
         {
            for each(_loc2_ in §]$+§)
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
      
      public static function §[B§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§3$-§ = null;
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               _loc3_ = §4Z§(_loc2_.n);
               if(_loc3_)
               {
                  _loc3_.reward = _loc2_.r;
                  _loc3_.§"$A§ = _loc2_.rm;
               }
            }
         }
      }
      
      public static function §<!a§() : String
      {
         return §]$+§[§]$+§.length - 1].name;
      }
      
      public static function §"$!§(param1:String) : int
      {
         var _loc3_:§3$-§ = null;
         var _loc2_:int = 1;
         for each(_loc3_ in §]$+§)
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
