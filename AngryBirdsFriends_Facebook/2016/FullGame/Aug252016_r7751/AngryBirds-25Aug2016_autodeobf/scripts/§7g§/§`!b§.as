package §7g§
{
   public class §`!b§
   {
      
      public static const §8#y§:String = "STAR";
      
      public static const §6#<§:String = "Star Player, rank ";
      
      public static const §3!-§:int = 100;
      
      public static const §2!K§:§2N§ = new §2N§("GLASS","Glass League","","");
      
      public static const § D§:§2N§ = new §2N§("WOOD","Wood League","","LeaguePromotionWood");
      
      public static const §?!w§:§2N§ = new §2N§("STONE","Stone League","","LeaguePromotionStone");
      
      public static const §="q§:§2N§ = new §2N§("BRONZE","Bronze League","","LeaguePromotionBronze");
      
      public static const §5!F§:§2N§ = new §2N§("SILVER","Silver League","","LeaguePromotionSilver");
      
      public static const §]"4§:§2N§ = new §2N§("GOLD","Gold League","","LeaguePromotionGold");
      
      public static const §-#;§:§2N§ = new §2N§("DIAMOND","Diamond League","","LeaguePromotionDiamond");
      
      public static const §0#J§:Array = [§2!K§,§ D§,§?!w§,§="q§,§5!F§,§]"4§,§-#;§];
       
      
      public function §`!b§()
      {
         super();
      }
      
      public static function §"!I§(param1:String) : §2N§
      {
         var _loc2_:§2N§ = null;
         for each(_loc2_ in §0#J§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function §<9§(param1:String) : §2N§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §0#J§.length)
         {
            if(§0#J§[_loc2_].id == param1)
            {
               if(_loc2_ == §0#J§.length - 1)
               {
                  return §0#J§[_loc2_];
               }
               return §0#J§[_loc2_ + 1];
            }
            _loc2_++;
         }
         throw new Error("Can\'t find league ID: " + param1);
      }
      
      public static function §8"E§(param1:String) : §2N§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §0#J§.length)
         {
            if(§0#J§[_loc2_].id == param1)
            {
               if(_loc2_ == §0#J§.length - 1)
               {
                  return §0#J§[_loc2_];
               }
               return §0#J§[_loc2_ - 1];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §%9§(param1:Object) : §2N§
      {
         var _loc2_:§2N§ = null;
         if(param1)
         {
            for each(_loc2_ in §0#J§)
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
      
      public static function §'#2§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§2N§ = null;
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               _loc3_ = §"!I§(_loc2_.n);
               if(_loc3_)
               {
                  _loc3_.§+$3§ = _loc2_.r;
                  _loc3_.§[!P§ = _loc2_.rm;
               }
            }
         }
      }
      
      public static function §#!a§() : String
      {
         return §0#J§[§0#J§.length - 1].name;
      }
   }
}
