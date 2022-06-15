package §@$'§
{
   import §#"b§.§'q§;
   import §#"b§.§-O§;
   import §#"b§.§["I§;
   import §#"b§.§^,§;
   import §%$!§.§%h§;
   import §%$!§.§+3§;
   import §%$!§.§=]§;
   import §1"0§.§4$#§;
   import §3!B§.§9##§;
   import §>!#§.§-#A§;
   import §?"R§.ErrorPopup;
   import §?"R§.§[W§;
   import §?"e§.§,##§;
   import §^!,§.;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §&#%§ extends EventDispatcher implements §9#S§
   {
      
      private static var §7#E§:§&#%§ = new §&#%§();
      
      public static const §^n§:uint = 0;
      
      public static const §9Q§:uint = 1;
      
      public static const §-h§:uint = 3;
      
      private static var §+!0§:Dictionary;
       
      
      private var § ",§:§#9§;
      
      private var § each§:§^,§;
      
      private var §3"X§:§["I§;
      
      private var §4#l§:§#!=§;
      
      private var §6j§:Boolean;
      
      private var §&"R§:uint;
      
      private var §6#j§:§-#A§;
      
      private var §@;§:Boolean;
      
      public function §&#%§()
      {
         super();
         this.§`#_§();
         if(§7#E§)
         {
            throw new Error("SpinningWheelController is singleton");
         }
      }
      
      public static function get §3!]§() : §&#%§
      {
         return §7#E§;
      }
      
      private function §`#_§() : void
      {
         §+!0§ = new Dictionary();
         §+!0§["VirtualCurrency"] = "BIRDCOINS";
         §+!0§["BirdFood"] = "POWERPOTION";
         §+!0§["LaserSight"] = "SLINGSCOPE";
         §+!0§["Earthquake"] = "BIRDQUAKE";
         §+!0§["ExtraBird"] = "WINGMAN";
         §+!0§["ExtraSpeed"] = "KINGSLING";
         this.§6#j§ = §-#A§.§6$2§();
      }
      
      public function init(param1:§#9§) : void
      {
         this.§6j§ = true;
         this.§ ",§ = param1;
         this.§ each§ = new §^,§();
         this.§ each§.addEventListener(§,##§.§-2§,this.§"$'§);
         this.§ each§.addEventListener(§,##§.§>#v§,this.§2! §);
         this.§ each§.addEventListener(§,##§.§&"N§,this.§-J§);
         this.§ each§.§9]§();
      }
      
      private function §-J§(param1:§,##§) : void
      {
         var _loc2_:§8!H§ = new ErrorPopup(§[W§.ERROR,§<d§.TOP,ErrorPopup.§^#x§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §2! §(param1:§,##§) : void
      {
         var _loc2_:§'q§ = this.§3"X§.§9#d§();
         var _loc3_:§'q§ = this.§3"X§.§0V§(this.§3"X§.§"#<§());
         var _loc4_:String;
         if((_loc4_ = _loc2_.§2G§) == §=]§.§;Q§)
         {
            if((_loc4_ = this.§1!I§(_loc3_.quantity)) == null)
            {
               throw new Error("Failed to find the right VC Package name for the quantity " + _loc3_.quantity);
            }
         }
         this.§"";§(_loc2_);
         this.§?"H§(_loc3_);
         if(this.§4#l§)
         {
            this.§4#l§.§4" §(_loc4_);
         }
         this.§&"R§ = §-h§;
         dispatchEvent(new §,##§(§,##§.§>#v§,null));
      }
      
      private function §8[§() : uint
      {
         var _loc1_:Vector.<§-O§> = this.§3"X§.§<#A§();
         return _loc1_.length;
      }
      
      private function §?"H§(param1:§'q§) : void
      {
         var _loc2_:String = §+!0§[param1.§2G§];
         if(_loc2_ == null)
         {
            _loc2_ = param1.§2G§;
         }
         var _loc3_:uint = param1.quantity;
         this.§6#j§.§["#§(_loc2_,_loc3_,this.§8[§());
      }
      
      private function §0#y§(param1:§-O§) : void
      {
         var _loc2_:* = param1.§2G§;
         if(_loc2_ == §=]§.§;Q§)
         {
            _loc2_ = param1.quantity + "COINS";
         }
         else
         {
            _loc2_ = §+!0§[param1.§2G§];
         }
         if(_loc2_ == null)
         {
            _loc2_ = param1.§2G§;
         }
         this.§6#j§.§&e§(_loc2_);
      }
      
      private function §"";§(param1:§'q§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:§9##§ = new §9##§();
         _loc3_.§;"O§ = §#!=§.ID;
         if(param1.§2G§ == §=]§.§;Q§)
         {
            _loc3_.currency = "IVC";
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §+3§).§<$&§.§[#u§;
            _loc3_.amount = param1.quantity - _loc4_;
            _loc2_ = true;
         }
         else
         {
            _loc5_ = §%h§.§3!]§.§7#S§(param1.§2G§);
            _loc3_.amount = param1.quantity - _loc5_;
         }
         _loc3_.itemType = param1.§2G§;
         _loc3_.gainType = §-#A§.§'!>§;
         §%h§.§3!]§.§1!0§(this.§3"X§.§%4§(),_loc2_,[_loc3_]);
      }
      
      private function §1!I§(param1:uint) : String
      {
         var _loc4_:§-O§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§-O§> = this.§3"X§.§<#A§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§2G§ == §=]§.§;Q§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§+#w§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §>#A§() : Boolean
      {
         return this.§&"R§ == §9Q§;
      }
      
      public function §>#"§() : Boolean
      {
         return this.§6j§;
      }
      
      public function §?c§() : void
      {
         this.§4#l§ = new §#!=§(this.§3"X§,this);
         this.§4#l§.addEventListener(§4$#§.CLOSE,this.§-"a§);
         this.§4#l§.addEventListener(§,##§.§?"P§,this.§<'§);
         this.§4#l§.addEventListener(§,##§.§-$1§,this.§'#W§);
         this.§ ",§.openPopup(this.§4#l§);
      }
      
      private function §'#W§(param1:§,##§) : void
      {
         this.§4#l§.updateState();
      }
      
      private function §<'§(param1:§,##§) : void
      {
         this.§ each§.§ $7§();
         dispatchEvent(new §,##§(§,##§.§?"P§));
      }
      
      private function §-"a§(param1:§4$#§) : void
      {
         this.§4#l§.removeEventListener(§4$#§.CLOSE,this.§-"a§);
         this.§4#l§.removeEventListener(§,##§.§?"P§,this.§<'§);
         this.§4#l§.removeEventListener(§,##§.§-$1§,this.§'#W§);
         this.§4#l§ = null;
      }
      
      private function §"$'§(param1:§,##§) : void
      {
         this.§6j§ = false;
         this.§3"X§ = §["I§(param1.data);
         this.§&"R§ = !this.§3"X§.§'"7§() ? uint(§-h§) : uint(§9Q§);
         if(this.§4#l§)
         {
            this.§4#l§.updateState();
            this.§4#l§.§&!b§(false);
         }
         dispatchEvent(new §,##§(§,##§.§0#s§));
      }
      
      public function getState() : uint
      {
         return this.§&"R§;
      }
      
      private function §>"G§(param1:String) : §-O§
      {
         var _loc4_:§-O§ = null;
         var _loc2_:§-O§ = null;
         var _loc3_:Vector.<§-O§> = this.§3"X§.§<#A§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§+#w§ && _loc4_.§+#w§ == param1 || _loc4_.§2G§ == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         return _loc2_;
      }
   }
}
