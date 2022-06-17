package §;N§
{
   import §'$9§.§8!L§;
   import §+#B§.§+$A§;
   import §-!"§.§7z§;
   import §8"§.§ l§;
   import §8"§.§ use§;
   import §8"§.§"#l§;
   import §8"§.§^3§;
   import §;$5§.§8"6§;
   import §;$5§.§@#G§;
   import §;w§.§5"_§;
   import §?!N§.ErrorPopup;
   import §]"'§.§#$D§;
   import §]"'§.§>I§;
   import §]"'§.§@"%§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §"F§ extends EventDispatcher implements §^";§
   {
      
      private static var §+"?§:§"F§ = new §"F§();
      
      public static const §>"S§:uint = 0;
      
      public static const §]#>§:uint = 1;
      
      public static const §6!"§:uint = 3;
      
      private static var §2"l§:Dictionary;
       
      
      private var §#!;§:§8"6§;
      
      private var §&![§:§^3§;
      
      private var §,!p§:§ l§;
      
      private var §%i§:§+"4§;
      
      private var §##O§:Boolean;
      
      private var §0!+§:uint;
      
      private var §'"<§:§+$A§;
      
      private var §%"k§:Boolean;
      
      public function §"F§()
      {
         super();
         this.§&#0§();
         if(§+"?§)
         {
            throw new Error("SpinningWheelController is singleton");
         }
      }
      
      public static function get §?q§() : §"F§
      {
         return §+"?§;
      }
      
      private function §&#0§() : void
      {
         §2"l§ = new Dictionary();
         §2"l§["VirtualCurrency"] = "BIRDCOINS";
         §2"l§["BirdFood"] = "POWERPOTION";
         §2"l§["LaserSight"] = "SLINGSCOPE";
         §2"l§["Earthquake"] = "BIRDQUAKE";
         §2"l§["ExtraBird"] = "WINGMAN";
         §2"l§["ExtraSpeed"] = "KINGSLING";
         §2"l§["PowerupBundle"] = "POWERUPBUNDLE";
         this.§'"<§ = §+$A§.§@"i§();
      }
      
      public function init(param1:§8"6§) : void
      {
         this.§##O§ = true;
         this.§#!;§ = param1;
         this.§&![§ = new §^3§();
         this.§&![§.addEventListener(§8!L§.§!&§,this.§=§);
         this.§&![§.addEventListener(§8!L§.§+!I§,this.§0#>§);
         this.§&![§.addEventListener(§8!L§.§]#5§,this.§9#y§);
         this.§&![§.§""U§();
      }
      
      private function §9#y§(param1:§8!L§) : void
      {
         var _loc2_:§@#G§ = new ErrorPopup(ErrorPopup.§ $<§,§8!L§.§]#5§ + " : " + param1.toString());
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §0#>§(param1:§8!L§) : void
      {
         var _loc2_:§ use§ = this.§,!p§.§]C§(this.§,!p§.§9"_§());
         var _loc3_:String = _loc2_.§1b§;
         if(_loc3_ == §>I§.§ !C§)
         {
            _loc3_ = this.§["`§(_loc2_.quantity);
            if(_loc3_ == null)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Failed to find the right VC Package name for the quantity " + _loc2_.quantity));
            }
         }
         this.§+$-§(_loc2_);
         this.§]"E§(_loc2_);
         if(this.§%i§)
         {
            this.§%i§.§5"S§(_loc3_);
         }
         this.§0!+§ = §6!"§;
         dispatchEvent(new §8!L§(§8!L§.§+!I§,null));
      }
      
      private function §@x§() : uint
      {
         var _loc1_:Vector.<§"#l§> = this.§,!p§.§`!]§();
         return _loc1_.length;
      }
      
      private function §]"E§(param1:§ use§) : void
      {
         var _loc2_:String = §2"l§[param1.§1b§];
         if(_loc2_ == null)
         {
            _loc2_ = param1.§1b§;
         }
         var _loc3_:uint = param1.quantity;
         this.§'"<§.§;;§(_loc2_,_loc3_,this.§@x§());
      }
      
      private function § o§(param1:§"#l§) : void
      {
         var _loc2_:* = param1.§1b§;
         if(_loc2_ == §>I§.§ !C§)
         {
            _loc2_ = param1.quantity + "COINS";
         }
         else
         {
            _loc2_ = §2"l§[param1.§1b§];
         }
         if(_loc2_ == null)
         {
            _loc2_ = param1.§1b§;
         }
         this.§'"<§.§&t§(_loc2_);
      }
      
      private function §+$-§(param1:§ use§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:§7z§ = new §7z§();
         _loc3_.screen = §+"4§.ID;
         if(param1.§1b§ == §>I§.§ !C§)
         {
            _loc3_.currency = "IVC";
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §@"%§).§8!8§.§"$6§;
            _loc3_.amount = param1.quantity - _loc4_;
            _loc2_ = true;
         }
         else
         {
            _loc5_ = §#$D§.§?q§.§<"M§(param1.§1b§);
            _loc3_.amount = param1.quantity - _loc5_;
         }
         _loc3_.itemType = param1.§1b§;
         _loc3_.§+#;§ = §+$A§.§=a§;
         §#$D§.§?q§.§["a§(this.§,!p§.§?"x§(),_loc2_,[_loc3_]);
      }
      
      private function §["`§(param1:uint) : String
      {
         var _loc4_:§"#l§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§"#l§> = this.§,!p§.§`!]§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§1b§ == §>I§.§ !C§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§=$?§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §"#9§() : Boolean
      {
         return this.§0!+§ == §]#>§;
      }
      
      public function §,!6§() : Boolean
      {
         return this.§##O§;
      }
      
      public function §7!d§() : void
      {
         this.§%i§ = new §+"4§(this.§,!p§,this);
         this.§%i§.addEventListener(§5"_§.CLOSE,this.§"#a§);
         this.§%i§.addEventListener(§8!L§.§9$8§,this.§3W§);
         this.§%i§.addEventListener(§8!L§.§'Z§,this.§`!;§);
         this.§#!;§.openPopup(this.§%i§);
      }
      
      private function §`!;§(param1:§8!L§) : void
      {
         this.§%i§.updateState();
      }
      
      private function §3W§(param1:§8!L§) : void
      {
         this.§&![§.§&Z§();
         dispatchEvent(new §8!L§(§8!L§.§9$8§));
      }
      
      private function §"#a§(param1:§5"_§) : void
      {
         this.§%i§.removeEventListener(§5"_§.CLOSE,this.§"#a§);
         this.§%i§.removeEventListener(§8!L§.§9$8§,this.§3W§);
         this.§%i§.removeEventListener(§8!L§.§'Z§,this.§`!;§);
         this.§%i§ = null;
      }
      
      private function §=§(param1:§8!L§) : void
      {
         this.§##O§ = false;
         this.§,!p§ = § l§(param1.data);
         this.§0!+§ = !this.§,!p§.§-$-§() ? uint(§6!"§) : uint(§]#>§);
         if(this.§%i§)
         {
            this.§%i§.updateState();
            this.§%i§.§8"-§(false);
         }
         dispatchEvent(new §8!L§(§8!L§.§!!i§));
      }
      
      public function getState() : uint
      {
         return this.§0!+§;
      }
      
      private function §`#W§(param1:String) : §"#l§
      {
         var _loc4_:§"#l§ = null;
         var _loc2_:§"#l§ = null;
         var _loc3_:Vector.<§"#l§> = this.§,!p§.§`!]§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§=$?§ && _loc4_.§=$?§ == param1 || _loc4_.§1b§ == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         return _loc2_;
      }
   }
}
