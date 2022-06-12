package §@$=§
{
   import §!#C§.§ $?§;
   import §!#C§.§4!Q§;
   import §!#C§.§null§;
   import §&!_§.§!!K§;
   import §'M§.§"Z§;
   import §0!s§.§5!-§;
   import §0!s§.§6!e§;
   import §8"g§.§^#$§;
   import §>z§.ErrorPopup;
   import §`"3§.§^!Z§;
   import §`T§.§%";§;
   import §`T§.§'$?§;
   import §`T§.§^"2§;
   import §`T§.§^#i§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §[#d§ extends EventDispatcher implements §8"f§
   {
      
      private static var § #u§:§[#d§ = new §[#d§();
      
      public static const §?#[§:uint = 0;
      
      public static const §8h§:uint = 1;
      
      public static const §!#3§:uint = 3;
      
      private static var §90§:Dictionary;
       
      
      private var §#"V§:§6!e§;
      
      private var §2!N§:§'$?§;
      
      private var §8m§:§%";§;
      
      private var §0"u§:§'"m§;
      
      private var §!Z§:Boolean;
      
      private var §<!C§:uint;
      
      private var §>#f§:§!!K§;
      
      private var §%#u§:Boolean;
      
      public function §[#d§()
      {
         super();
         this.§?#<§();
         if(§ #u§)
         {
            throw new Error("SpinningWheelController is singleton");
         }
      }
      
      public static function get §`"H§() : §[#d§
      {
         return § #u§;
      }
      
      private function §?#<§() : void
      {
         §90§ = new Dictionary();
         §90§["VirtualCurrency"] = "BIRDCOINS";
         §90§["BirdFood"] = "POWERPOTION";
         §90§["LaserSight"] = "SLINGSCOPE";
         §90§["Earthquake"] = "BIRDQUAKE";
         §90§["ExtraBird"] = "WINGMAN";
         §90§["ExtraSpeed"] = "KINGSLING";
         §90§["PowerupBundle"] = "POWERUPBUNDLE";
         this.§>#f§ = §!!K§.§%#S§();
      }
      
      public function init(param1:§6!e§) : void
      {
         this.§!Z§ = true;
         this.§#"V§ = param1;
         this.§2!N§ = new §'$?§();
         this.§2!N§.addEventListener(§^#$§.§>"o§,this.§<"o§);
         this.§2!N§.addEventListener(§^#$§.§[Y§,this.§^7§);
         this.§2!N§.addEventListener(§^#$§.§8"!§,this.§#!n§);
         this.§2!N§.§<$>§();
      }
      
      private function §#!n§(param1:§^#$§) : void
      {
         var _loc2_:§5!-§ = new ErrorPopup(ErrorPopup.§@!x§,§^#$§.§8"!§ + " : " + param1.toString());
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §^7§(param1:§^#$§) : void
      {
         var _loc2_:§^"2§ = this.§8m§.§2f§(this.§8m§.§"!s§());
         var _loc3_:String = _loc2_.§4!g§;
         if(_loc3_ == §null§.§%l§)
         {
            _loc3_ = this.§9h§(_loc2_.quantity);
            if(_loc3_ == null)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Failed to find the right VC Package name for the quantity " + _loc2_.quantity));
            }
         }
         this.§"d§(_loc2_);
         this.§6$@§(_loc2_);
         if(this.§0"u§)
         {
            this.§0"u§.§7#l§(_loc3_);
         }
         this.§<!C§ = §!#3§;
         dispatchEvent(new §^#$§(§^#$§.§[Y§,null));
      }
      
      private function §%"6§() : uint
      {
         var _loc1_:Vector.<§^#i§> = this.§8m§.§?$A§();
         return _loc1_.length;
      }
      
      private function §6$@§(param1:§^"2§) : void
      {
         var _loc2_:String = §90§[param1.§4!g§];
         if(_loc2_ == null)
         {
            _loc2_ = param1.§4!g§;
         }
         var _loc3_:uint = param1.quantity;
         this.§>#f§.§%#g§(_loc2_,_loc3_,this.§%"6§());
      }
      
      private function §[#p§(param1:§^#i§) : void
      {
         var _loc2_:* = param1.§4!g§;
         if(_loc2_ == §null§.§%l§)
         {
            _loc2_ = param1.quantity + "COINS";
         }
         else
         {
            _loc2_ = §90§[param1.§4!g§];
         }
         if(_loc2_ == null)
         {
            _loc2_ = param1.§4!g§;
         }
         this.§>#f§.§1#B§(_loc2_);
      }
      
      private function §"d§(param1:§^"2§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:§^!Z§ = new §^!Z§();
         _loc3_.screen = §'"m§.ID;
         if(param1.§4!g§ == §null§.§%l§)
         {
            _loc3_.currency = "IVC";
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §4!Q§).§1W§.§<B§;
            _loc3_.amount = param1.quantity - _loc4_;
            _loc2_ = true;
         }
         else
         {
            _loc5_ = § $?§.§`"H§.§0#s§(param1.§4!g§);
            _loc3_.amount = param1.quantity - _loc5_;
         }
         _loc3_.itemType = param1.§4!g§;
         _loc3_.§`"x§ = §!!K§.§0#+§;
         § $?§.§`"H§.§ !t§(this.§8m§.§^!R§(),_loc2_,[_loc3_]);
      }
      
      private function §9h§(param1:uint) : String
      {
         var _loc4_:§^#i§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§^#i§> = this.§8m§.§?$A§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§4!g§ == §null§.§%l§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§@4§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §'#@§() : Boolean
      {
         return this.§<!C§ == §8h§;
      }
      
      public function §]"z§() : Boolean
      {
         return this.§!Z§;
      }
      
      public function §!!G§() : void
      {
         this.§0"u§ = new §'"m§(this.§8m§,this);
         this.§0"u§.addEventListener(§"Z§.CLOSE,this.§%!K§);
         this.§0"u§.addEventListener(§^#$§.§>#a§,this.§"#x§);
         this.§0"u§.addEventListener(§^#$§.§]!Q§,this.§6#§);
         this.§#"V§.openPopup(this.§0"u§);
      }
      
      private function §6#§(param1:§^#$§) : void
      {
         this.§0"u§.updateState();
      }
      
      private function §"#x§(param1:§^#$§) : void
      {
         this.§2!N§.§4o§();
         dispatchEvent(new §^#$§(§^#$§.§>#a§));
      }
      
      private function §%!K§(param1:§"Z§) : void
      {
         this.§0"u§.removeEventListener(§"Z§.CLOSE,this.§%!K§);
         this.§0"u§.removeEventListener(§^#$§.§>#a§,this.§"#x§);
         this.§0"u§.removeEventListener(§^#$§.§]!Q§,this.§6#§);
         this.§0"u§ = null;
      }
      
      private function §<"o§(param1:§^#$§) : void
      {
         this.§!Z§ = false;
         this.§8m§ = §%";§(param1.data);
         this.§<!C§ = !this.§8m§.§5P§() ? uint(§!#3§) : uint(§8h§);
         if(this.§0"u§)
         {
            this.§0"u§.updateState();
            this.§0"u§.§7]§(false);
         }
         dispatchEvent(new §^#$§(§^#$§.§0Q§));
      }
      
      public function getState() : uint
      {
         return this.§<!C§;
      }
      
      private function §-"M§(param1:String) : §^#i§
      {
         var _loc4_:§^#i§ = null;
         var _loc2_:§^#i§ = null;
         var _loc3_:Vector.<§^#i§> = this.§8m§.§?$A§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§@4§ && _loc4_.§@4§ == param1 || _loc4_.§4!g§ == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         return _loc2_;
      }
   }
}
