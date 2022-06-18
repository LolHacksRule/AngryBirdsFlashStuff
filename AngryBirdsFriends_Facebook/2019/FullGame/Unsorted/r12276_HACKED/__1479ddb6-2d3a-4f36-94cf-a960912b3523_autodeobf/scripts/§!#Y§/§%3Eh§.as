package §!#Y§
{
   import § h§.ErrorPopup;
   import §2E§.§]!P§;
   import §5"l§.§0!b§;
   import §5#<§.§-"q§;
   import §7!3§.§-!>§;
   import §9!6§.§8#v§;
   import §9!6§.§?!y§;
   import §>#Y§.§!",§;
   import §>#Y§.§,#b§;
   import §>#Y§.§2$8§;
   import §^!&§.§'-§;
   import §^!&§.§--§;
   import §^!&§.§0"p§;
   import §^!&§.§2§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §>h§ extends EventDispatcher implements §;L§
   {
      
      private static var §=#N§:§>h§ = new §>h§();
      
      public static const §1$ §:uint = 0;
      
      public static const §^!e§:uint = 1;
      
      public static const § #+§:uint = 3;
      
      private static var §5",§:Dictionary;
       
      
      private var §4#9§:§8#v§;
      
      private var §<#G§:§2#0§;
      
      private var §@!U§:§'-§;
      
      private var §6#w§:§3!6§;
      
      private var §'#$§:Boolean;
      
      private var §`"Y§:uint;
      
      private var §4"7§:§]!P§;
      
      private var §2!,§:Boolean;
      
      public function §>h§()
      {
         super();
         this.§8c§();
         if(§=#N§)
         {
            throw new Error("SpinningWheelController is singleton");
         }
      }
      
      public static function get §3"1§() : §>h§
      {
         return §=#N§;
      }
      
      private function §8c§() : void
      {
         §5",§ = new Dictionary();
         §5",§["VirtualCurrency"] = "BIRDCOINS";
         §5",§["BirdFood"] = "POWERPOTION";
         §5",§["LaserSight"] = "SLINGSCOPE";
         §5",§["Earthquake"] = "BIRDQUAKE";
         §5",§["ExtraBird"] = "WINGMAN";
         §5",§["ExtraSpeed"] = "KINGSLING";
         §5",§["PowerupBundle"] = "POWERUPBUNDLE";
         this.§4"7§ = §]!P§.§1!7§();
      }
      
      public function init(param1:§8#v§) : void
      {
         this.§'#$§ = true;
         this.§4#9§ = param1;
         this.§<#G§ = new §2#0§();
         this.§<#G§.addEventListener(§-"q§.§2"9§,this.§>$-§);
         this.§<#G§.addEventListener(§-"q§.§[!P§,this.§6!d§);
         this.§<#G§.addEventListener(§-"q§.§,"Q§,this.§^#U§);
         this.§<#G§.§?#2§();
      }
      
      private function §^#U§(param1:§-"q§) : void
      {
         var _loc2_:§?!y§ = new ErrorPopup(ErrorPopup.§ !I§,§-"q§.§,"Q§ + " : " + param1.toString());
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §6!d§(param1:§-"q§) : void
      {
         var _loc2_:§0"p§ = this.§@!U§.§>$4§(this.§@!U§.§!v§());
         var _loc3_:String = _loc2_.§4!'§;
         if(_loc3_ == §2$8§.§,"p§)
         {
            _loc3_ = this.§-$ §(_loc2_.quantity);
            if(_loc3_ == null)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Failed to find the right VC Package name for the quantity " + _loc2_.quantity));
            }
         }
         this.§7""§(_loc2_);
         this.§,"g§(_loc2_);
         if(this.§6#w§)
         {
            this.§6#w§.§^M§(_loc3_);
         }
         this.§`"Y§ = § #+§;
         dispatchEvent(new §-"q§(§-"q§.§[!P§,null));
      }
      
      private function § #0§() : uint
      {
         var _loc1_:Vector.<§--§> = this.§@!U§.§9$#§();
         return _loc1_.length;
      }
      
      private function §,"g§(param1:§0"p§) : void
      {
         var _loc2_:String = §5",§[param1.§4!'§];
         if(_loc2_ == null)
         {
            _loc2_ = param1.§4!'§;
         }
         var _loc3_:uint = param1.quantity;
         this.§4"7§.§^"f§(_loc2_,_loc3_,this.§ #0§());
      }
      
      private function §6"2§(param1:§--§) : void
      {
         var _loc2_:* = param1.§4!'§;
         if(_loc2_ == §2$8§.§,"p§)
         {
            _loc2_ = param1.quantity + "COINS";
         }
         else
         {
            _loc2_ = §5",§[param1.§4!'§];
         }
         if(_loc2_ == null)
         {
            _loc2_ = param1.§4!'§;
         }
         this.§4"7§.§&g§(_loc2_);
      }
      
      private function §7""§(param1:§0"p§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:§-!>§ = new §-!>§();
         _loc3_.screen = §3!6§.ID;
         if(param1.§4!'§ == §2$8§.§,"p§)
         {
            _loc3_.currency = "IVC";
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §,#b§).§%$;§.§5"i§;
            _loc3_.amount = param1.quantity - _loc4_;
            _loc2_ = true;
         }
         else
         {
            _loc5_ = §!",§.§3"1§.§2![§(param1.§4!'§);
            _loc3_.amount = param1.quantity - _loc5_;
         }
         _loc3_.itemType = param1.§4!'§;
         _loc3_.§'#w§ = §]!P§.§-$6§;
         §!",§.§3"1§.§"#t§(this.§@!U§.§4!+§(),_loc2_,[_loc3_]);
      }
      
      private function §-$ §(param1:uint) : String
      {
         var _loc4_:§--§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§--§> = this.§@!U§.§9$#§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§4!'§ == §2$8§.§,"p§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§4!$§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §>!W§() : Boolean
      {
         return this.§`"Y§ == §^!e§;
      }
      
      public function §'#f§() : Boolean
      {
         return this.§'#$§;
      }
      
      public function §>"w§() : void
      {
         this.§6#w§ = new §3!6§(this.§@!U§,this);
         this.§6#w§.addEventListener(§0!b§.CLOSE,this.§+b§);
         this.§6#w§.addEventListener(§-"q§.§1#d§,this.§0"&§);
         this.§6#w§.addEventListener(§-"q§.§>"#§,this.§@"7§);
         this.§4#9§.openPopup(this.§6#w§);
      }
      
      private function §@"7§(param1:§-"q§) : void
      {
         this.§6#w§.updateState();
      }
      
      private function §0"&§(param1:§-"q§) : void
      {
         this.§<#G§.§;!§();
         dispatchEvent(new §-"q§(§-"q§.§1#d§));
      }
      
      private function §+b§(param1:§0!b§) : void
      {
         this.§6#w§.removeEventListener(§0!b§.CLOSE,this.§+b§);
         this.§6#w§.removeEventListener(§-"q§.§1#d§,this.§0"&§);
         this.§6#w§.removeEventListener(§-"q§.§>"#§,this.§@"7§);
         this.§6#w§ = null;
      }
      
      private function §>$-§(param1:§-"q§) : void
      {
         this.§'#$§ = false;
         this.§@!U§ = §'-§(param1.data);
         this.§`"Y§ = !this.§@!U§.§@$&§() ? uint(§ #+§) : uint(§^!e§);
         if(this.§6#w§)
         {
            this.§6#w§.updateState();
            this.§6#w§.§?"!§(false);
         }
         dispatchEvent(new §-"q§(§-"q§.§%!D§));
      }
      
      public function getState() : uint
      {
         return this.§`"Y§;
      }
      
      private function §,+§(param1:String) : §--§
      {
         var _loc4_:§--§ = null;
         var _loc2_:§--§ = null;
         var _loc3_:Vector.<§--§> = this.§@!U§.§9$#§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§4!$§ && _loc4_.§4!$§ == param1 || _loc4_.§4!'§ == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         return _loc2_;
      }
   }
}
