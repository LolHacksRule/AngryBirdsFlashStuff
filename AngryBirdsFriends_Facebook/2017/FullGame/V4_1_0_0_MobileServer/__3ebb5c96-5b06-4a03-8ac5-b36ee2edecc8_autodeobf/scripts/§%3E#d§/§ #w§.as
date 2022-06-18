package §>#d§
{
   import § o§.§%"!§;
   import § o§.ErrorPopup;
   import §&"J§.§4"W§;
   import §&"J§.§6$0§;
   import §&"J§.§`]§;
   import §4$<§.§?§;
   import §4R§.§ e§;
   import §4R§.§+!J§;
   import §4R§.§-#`§;
   import §4R§.§=§;
   import §6V§.§?!=§;
   import §;#r§.§"g§;
   import §<#m§.§!"<§;
   import §<#m§.§0r§;
   import §<#m§.§^#o§;
   import §?!@§.§%§;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class § #w§ extends EventDispatcher implements §]3§
   {
      
      private static var §?L§:§ #w§ = new § #w§();
      
      public static const §-"A§:uint = 0;
      
      public static const §-!z§:uint = 1;
      
      public static const §;$7§:uint = 3;
      
      private static var § c§:Dictionary;
       
      
      private var §1"]§:§0r§;
      
      private var §+"§:§=#0§;
      
      private var §0!§:§-#`§;
      
      private var §4y§:§5!s§;
      
      private var §5$+§:Boolean;
      
      private var §-"W§:uint;
      
      private var §,#"§:§?!=§;
      
      private var §3#Y§:Boolean;
      
      public function § #w§()
      {
         super();
         this.§5Q§();
         if(§?L§)
         {
            throw new Error("SpinningWheelController is singleton");
         }
      }
      
      public static function get § "D§() : § #w§
      {
         return §?L§;
      }
      
      private function §5Q§() : void
      {
         § c§ = new Dictionary();
         § c§["VirtualCurrency"] = "BIRDCOINS";
         § c§["BirdFood"] = "POWERPOTION";
         § c§["LaserSight"] = "SLINGSCOPE";
         § c§["Earthquake"] = "BIRDQUAKE";
         § c§["ExtraBird"] = "WINGMAN";
         § c§["ExtraSpeed"] = "KINGSLING";
         § c§["PowerupBundle"] = "POWERUPBUNDLE";
         this.§,#"§ = §?!=§.§3!q§();
      }
      
      public function init(param1:§0r§) : void
      {
         this.§5$+§ = true;
         this.§1"]§ = param1;
         this.§+"§ = new §=#0§();
         this.§+"§.addEventListener(§%#2§.§?#=§,this.§>"k§);
         this.§+"§.addEventListener(§%#2§.§6"?§,this.§4!f§);
         this.§+"§.addEventListener(§%#2§.§5#p§,this.§8#6§);
         this.§+"§.§6!Z§();
      }
      
      private function §8#6§(param1:§%#2§) : void
      {
         var _loc2_:§!"<§ = new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§^#c§);
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §4!f§(param1:§%#2§) : void
      {
         var _loc2_:§ e§ = this.§0!§.§!"4§(this.§0!§.§&c§());
         var _loc3_:String = _loc2_.§1!1§;
         if(_loc3_ == §6$0§.§3#j§)
         {
            _loc3_ = this.§0"a§(_loc2_.quantity);
            if(_loc3_ == null)
            {
               throw new Error("Failed to find the right VC Package name for the quantity " + _loc2_.quantity);
            }
         }
         this.§+"i§(_loc2_);
         this.§&!2§(_loc2_);
         if(this.§4y§)
         {
            this.§4y§.§4U§(_loc3_);
         }
         this.§-"W§ = §;$7§;
         dispatchEvent(new §%#2§(§%#2§.§6"?§,null));
      }
      
      private function §1;§() : uint
      {
         var _loc1_:Vector.<§+!J§> = this.§0!§.§&#Z§();
         return _loc1_.length;
      }
      
      private function §&!2§(param1:§ e§) : void
      {
         var _loc2_:String = § c§[param1.§1!1§];
         if(_loc2_ == null)
         {
            _loc2_ = param1.§1!1§;
         }
         var _loc3_:uint = param1.quantity;
         this.§,#"§.§8"&§(_loc2_,_loc3_,this.§1;§());
      }
      
      private function §5#u§(param1:§+!J§) : void
      {
         var _loc2_:* = param1.§1!1§;
         if(_loc2_ == §6$0§.§3#j§)
         {
            _loc2_ = param1.quantity + "COINS";
         }
         else
         {
            _loc2_ = § c§[param1.§1!1§];
         }
         if(_loc2_ == null)
         {
            _loc2_ = param1.§1!1§;
         }
         this.§,#"§.§,"J§(_loc2_);
      }
      
      private function §+"i§(param1:§ e§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:§"g§ = new §"g§();
         _loc3_.screen = §5!s§.ID;
         if(param1.§1!1§ == §6$0§.§3#j§)
         {
            _loc3_.currency = "IVC";
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §`]§).§>p§.§5##§;
            _loc3_.amount = param1.quantity - _loc4_;
            _loc2_ = true;
         }
         else
         {
            _loc5_ = §4"W§.§ "D§.§04§(param1.§1!1§);
            _loc3_.amount = param1.quantity - _loc5_;
         }
         _loc3_.itemType = param1.§1!1§;
         _loc3_.§>"j§ = §?!=§.§2!&§;
         §4"W§.§ "D§.§+#<§(this.§0!§.§9!'§(),_loc2_,[_loc3_]);
      }
      
      private function §0"a§(param1:uint) : String
      {
         var _loc4_:§+!J§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§+!J§> = this.§0!§.§&#Z§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§1!1§ == §6$0§.§3#j§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§7#n§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §'H§() : Boolean
      {
         return this.§-"W§ == §-!z§;
      }
      
      public function § #<§() : Boolean
      {
         return this.§5$+§;
      }
      
      public function §&"V§() : void
      {
         this.§4y§ = new §5!s§(this.§0!§,this);
         this.§4y§.addEventListener(§?#7§.CLOSE,this.§0"F§);
         this.§4y§.addEventListener(§%#2§.§]$,§,this.§`#%§);
         this.§4y§.addEventListener(§%#2§.§3E§,this.§""+§);
         this.§1"]§.openPopup(this.§4y§);
      }
      
      private function §""+§(param1:§%#2§) : void
      {
         this.§4y§.updateState();
      }
      
      private function §`#%§(param1:§%#2§) : void
      {
         this.§+"§.§`#K§();
         dispatchEvent(new §%#2§(§%#2§.§]$,§));
      }
      
      private function §0"F§(param1:§?#7§) : void
      {
         this.§4y§.removeEventListener(§?#7§.CLOSE,this.§0"F§);
         this.§4y§.removeEventListener(§%#2§.§]$,§,this.§`#%§);
         this.§4y§.removeEventListener(§%#2§.§3E§,this.§""+§);
         this.§4y§ = null;
      }
      
      private function §>"k§(param1:§%#2§) : void
      {
         this.§5$+§ = false;
         this.§0!§ = §-#`§(param1.data);
         this.§-"W§ = !this.§0!§.§-P§() ? uint(§;$7§) : uint(§-!z§);
         if(this.§4y§)
         {
            this.§4y§.updateState();
            this.§4y§.§ #'§(false);
         }
         dispatchEvent(new §%#2§(§%#2§.§'#X§));
      }
      
      public function getState() : uint
      {
         return this.§-"W§;
      }
      
      private function §0!,§(param1:String) : §+!J§
      {
         var _loc4_:§+!J§ = null;
         var _loc2_:§+!J§ = null;
         var _loc3_:Vector.<§+!J§> = this.§0!§.§&#Z§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§7#n§ && _loc4_.§7#n§ == param1 || _loc4_.§1!1§ == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         return _loc2_;
      }
   }
}
