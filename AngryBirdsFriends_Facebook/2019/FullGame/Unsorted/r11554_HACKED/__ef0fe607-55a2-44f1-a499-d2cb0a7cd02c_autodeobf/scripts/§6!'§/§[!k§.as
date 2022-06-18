package §6!'§
{
   import §?!N§.ErrorPopup;
   
   public class §[!k§
   {
      
      public static const §^#>§:String = "STAR";
      
      public static const §&!k§:String = "Star Player, rank ";
      
      public static const § #>§:int = 100;
      
      public static const §>L§:§]o§ = new §]o§("QUALIFIER","Warm-up league","","");
      
      public static const §,!V§:§]o§ = new §]o§("GLASS","Glass League","","");
      
      public static const §0[§:§]o§ = new §]o§("WOOD","Wood League","","league_promotion_wood");
      
      public static const § $ §:§]o§ = new §]o§("STONE","Stone League","","league_promotion_stone");
      
      public static const §>"L§:§]o§ = new §]o§("BRONZE","Bronze League","","league_promotion_bronze");
      
      public static const §3#+§:§]o§ = new §]o§("SILVER","Silver League","","league_promotion_silver");
      
      public static const §,d§:§]o§ = new §]o§("GOLD","Gold League","","league_promotion_gold");
      
      public static const §[m§:§]o§ = new §]o§("DIAMOND","Diamond League","","league_promotion_diamond");
      
      public static const §?!4§:Array = [§,!V§,§0[§,§ $ §,§>"L§,§3#+§,§,d§,§[m§];
       
      
      public function §[!k§()
      {
         super();
      }
      
      public static function §=""§(param1:String) : §]o§
      {
         var _loc2_:§]o§ = null;
         for each(_loc2_ in §?!4§)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return §>L§;
      }
      
      public static function §'&§(param1:String) : §]o§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §?!4§.length)
         {
            if(§?!4§[_loc2_].id == param1)
            {
               if(_loc2_ == §?!4§.length - 1)
               {
                  return §?!4§[_loc2_];
               }
               return §?!4§[_loc2_ + 1];
            }
            _loc2_++;
         }
         AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t find league ID: " + param1));
         return null;
      }
      
      public static function §6"?§(param1:String) : §]o§
      {
         var _loc2_:int = 0;
         while(_loc2_ < §?!4§.length)
         {
            if(§?!4§[_loc2_].id == param1)
            {
               if(_loc2_ == §?!4§.length - 1)
               {
                  return §?!4§[_loc2_];
               }
               return §?!4§[_loc2_ - 1];
            }
            _loc2_++;
         }
         return null;
      }
      
      public static function §="m§(param1:Object) : §]o§
      {
         var _loc2_:§]o§ = null;
         if(param1)
         {
            for each(_loc2_ in §?!4§)
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
      
      public static function §4#v§(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:§]o§ = null;
         if(param1)
         {
            for each(_loc2_ in param1)
            {
               _loc3_ = §=""§(_loc2_.n);
               if(_loc3_)
               {
                  _loc3_.reward = _loc2_.r;
                  _loc3_.§8#N§ = _loc2_.rm;
               }
            }
         }
      }
      
      public static function §&!§() : String
      {
         return §?!4§[§?!4§.length - 1].name;
      }
      
      public static function §"$C§(param1:String) : int
      {
         var _loc3_:§]o§ = null;
         var _loc2_:int = 1;
         for each(_loc3_ in §?!4§)
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
