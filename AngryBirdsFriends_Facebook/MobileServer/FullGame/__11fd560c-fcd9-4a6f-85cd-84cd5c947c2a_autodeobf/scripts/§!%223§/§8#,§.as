package §!"3§
{
   import §!$;§.§8#F§;
   import §1!=§.§%#;§;
   import §1!=§.§["+§;
   import §2G§.§"G§;
   import §2G§.§#"8§;
   import §2G§.§-#+§;
   import §5"7§.§+$"§;
   import §5§.§9$6§;
   import §;k§.§+"7§;
   import §;k§.§-";§;
   import §;k§.§-"K§;
   import §;k§.§function§;
   import §?P§.ErrorPopup;
   import §`7§.§ try§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §8#,§ extends EventDispatcher implements §,$$§
   {
      
      private static var §<]§:§8#,§ = new §8#,§();
      
      public static const §[5§:uint = 0;
      
      public static const §8"v§:uint = 1;
      
      public static const §7$@§:uint = 3;
      
      private static var §'!J§:Dictionary;
       
      
      private var §0@§:§["+§;
      
      private var §>v§:§-";§;
      
      private var §!A§:§+"7§;
      
      private var §'!a§:§-#g§;
      
      private var §!"5§:Boolean;
      
      private var §+a§:uint;
      
      private var §##I§:§ try§;
      
      private var §;`§:Boolean;
      
      public function §8#,§()
      {
         super();
         this.§4!f§();
         if(§<]§)
         {
            throw new Error("SpinningWheelController is singleton");
         }
      }
      
      public static function get §6!§() : §8#,§
      {
         return §<]§;
      }
      
      private function §4!f§() : void
      {
         §'!J§ = new Dictionary();
         §'!J§["VirtualCurrency"] = "BIRDCOINS";
         §'!J§["BirdFood"] = "POWERPOTION";
         §'!J§["LaserSight"] = "SLINGSCOPE";
         §'!J§["Earthquake"] = "BIRDQUAKE";
         §'!J§["ExtraBird"] = "WINGMAN";
         §'!J§["ExtraSpeed"] = "KINGSLING";
         §'!J§["PowerupBundle"] = "POWERUPBUNDLE";
         this.§##I§ = § try§.§!!t§();
      }
      
      public function init(param1:§["+§) : void
      {
         this.§!"5§ = true;
         this.§0@§ = param1;
         this.§>v§ = new §-";§();
         this.§>v§.addEventListener(§9$6§.§8#T§,this.§-;§);
         this.§>v§.addEventListener(§9$6§.§#!0§,this.§7!R§);
         this.§>v§.addEventListener(§9$6§.§6!R§,this.§6#=§);
         this.§>v§.§<"C§();
      }
      
      private function §6#=§(param1:§9$6§) : void
      {
         var _loc2_:§%#;§ = new ErrorPopup(ErrorPopup.§'#k§,§9$6§.§6!R§ + " : " + param1.toString());
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §7!R§(param1:§9$6§) : void
      {
         var _loc2_:§function§ = this.§!A§.§-"b§(this.§!A§.§>$+§());
         var _loc3_:String = _loc2_.§3!z§;
         if(_loc3_ == §"G§.§6!@§)
         {
            _loc3_ = this.§<$6§(_loc2_.quantity);
            if(_loc3_ == null)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Failed to find the right VC Package name for the quantity " + _loc2_.quantity));
            }
         }
         this.§"#0§(_loc2_);
         this.§`!"§(_loc2_);
         if(this.§'!a§)
         {
            this.§'!a§.§>"O§(_loc3_);
         }
         this.§+a§ = §7$@§;
         dispatchEvent(new §9$6§(§9$6§.§#!0§,null));
      }
      
      private function §`!g§() : uint
      {
         var _loc1_:Vector.<§-"K§> = this.§!A§.§,!0§();
         return _loc1_.length;
      }
      
      private function §`!"§(param1:§function§) : void
      {
         var _loc2_:String = §'!J§[param1.§3!z§];
         if(_loc2_ == null)
         {
            _loc2_ = param1.§3!z§;
         }
         var _loc3_:uint = param1.quantity;
         this.§##I§.§!$?§(_loc2_,_loc3_,this.§`!g§());
      }
      
      private function §^#<§(param1:§-"K§) : void
      {
         var _loc2_:* = param1.§3!z§;
         if(_loc2_ == §"G§.§6!@§)
         {
            _loc2_ = param1.quantity + "COINS";
         }
         else
         {
            _loc2_ = §'!J§[param1.§3!z§];
         }
         if(_loc2_ == null)
         {
            _loc2_ = param1.§3!z§;
         }
         this.§##I§.§3#@§(_loc2_);
      }
      
      private function §"#0§(param1:§function§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:§+$"§ = new §+$"§();
         _loc3_.screen = §-#g§.ID;
         if(param1.§3!z§ == §"G§.§6!@§)
         {
            _loc3_.currency = "IVC";
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §#"8§).§""[§.§##!§;
            _loc3_.amount = param1.quantity - _loc4_;
            _loc2_ = true;
         }
         else
         {
            _loc5_ = §-#+§.§6!§.§=b§(param1.§3!z§);
            _loc3_.amount = param1.quantity - _loc5_;
         }
         _loc3_.itemType = param1.§3!z§;
         _loc3_.§2>§ = § try§.§[#r§;
         §-#+§.§6!§.§,"0§(this.§!A§.§0!&§(),_loc2_,[_loc3_]);
      }
      
      private function §<$6§(param1:uint) : String
      {
         var _loc4_:§-"K§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§-"K§> = this.§!A§.§,!0§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§3!z§ == §"G§.§6!@§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§"#7§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §0"J§() : Boolean
      {
         return this.§+a§ == §8"v§;
      }
      
      public function §##M§() : Boolean
      {
         return this.§!"5§;
      }
      
      public function §8#-§() : void
      {
         this.§'!a§ = new §-#g§(this.§!A§,this);
         this.§'!a§.addEventListener(§8#F§.CLOSE,this.§<#U§);
         this.§'!a§.addEventListener(§9$6§.§=w§,this.§+$B§);
         this.§'!a§.addEventListener(§9$6§.§]"i§,this.§[!8§);
         this.§0@§.openPopup(this.§'!a§);
      }
      
      private function §[!8§(param1:§9$6§) : void
      {
         this.§'!a§.updateState();
      }
      
      private function §+$B§(param1:§9$6§) : void
      {
         this.§>v§.§="q§();
         dispatchEvent(new §9$6§(§9$6§.§=w§));
      }
      
      private function §<#U§(param1:§8#F§) : void
      {
         this.§'!a§.removeEventListener(§8#F§.CLOSE,this.§<#U§);
         this.§'!a§.removeEventListener(§9$6§.§=w§,this.§+$B§);
         this.§'!a§.removeEventListener(§9$6§.§]"i§,this.§[!8§);
         this.§'!a§ = null;
      }
      
      private function §-;§(param1:§9$6§) : void
      {
         this.§!"5§ = false;
         this.§!A§ = §+"7§(param1.data);
         this.§+a§ = !this.§!A§.§9#g§() ? uint(§7$@§) : uint(§8"v§);
         if(this.§'!a§)
         {
            this.§'!a§.updateState();
            this.§'!a§.§]u§(false);
         }
         dispatchEvent(new §9$6§(§9$6§.§>-§));
      }
      
      public function getState() : uint
      {
         return this.§+a§;
      }
      
      private function §!"#§(param1:String) : §-"K§
      {
         var _loc4_:§-"K§ = null;
         var _loc2_:§-"K§ = null;
         var _loc3_:Vector.<§-"K§> = this.§!A§.§,!0§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§"#7§ && _loc4_.§"#7§ == param1 || _loc4_.§3!z§ == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         return _loc2_;
      }
   }
}
