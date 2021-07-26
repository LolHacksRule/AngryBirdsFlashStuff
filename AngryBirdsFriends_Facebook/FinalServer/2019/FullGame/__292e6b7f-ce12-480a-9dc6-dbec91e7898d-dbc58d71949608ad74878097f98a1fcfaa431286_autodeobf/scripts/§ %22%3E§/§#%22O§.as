package § ">§
{
   import § $0§.§,#@§;
   import § $0§.§=!C§;
   import §#"4§.§3";§;
   import §#"R§.§?""§;
   import §&=§.§<#V§;
   import §,#,§.§=#o§;
   import §,#,§.§>#g§;
   import §,#,§.§]§;
   import §5,§.§!"t§;
   import §5,§.§&"G§;
   import §5,§.§,$-§;
   import §5,§.§@"m§;
   import §;#>§.§7!^§;
   import §?Q§.ErrorPopup;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   
   public class §#"O§ extends EventDispatcher implements §,#8§
   {
      
      private static var §'#=§:§#"O§ = new §#"O§();
      
      public static const § #X§:uint = 0;
      
      public static const §#q§:uint = 1;
      
      public static const §2"#§:uint = 3;
      
      private static var §;"+§:Dictionary;
       
      
      private var §="Y§:§=!C§;
      
      private var §@$2§:§!"t§;
      
      private var §=H§:§,$-§;
      
      private var §>R§:§3"+§;
      
      private var §2!e§:Boolean;
      
      private var §7B§:uint;
      
      private var §4#4§:§3";§;
      
      private var §4"r§:Boolean;
      
      public function §#"O§()
      {
         super();
         this.§5!a§();
         if(§'#=§)
         {
            throw new Error("SpinningWheelController is singleton");
         }
      }
      
      public static function get §+!,§() : §#"O§
      {
         return §'#=§;
      }
      
      private function §5!a§() : void
      {
         §;"+§ = new Dictionary();
         §;"+§["VirtualCurrency"] = "BIRDCOINS";
         §;"+§["BirdFood"] = "POWERPOTION";
         §;"+§["LaserSight"] = "SLINGSCOPE";
         §;"+§["Earthquake"] = "BIRDQUAKE";
         §;"+§["ExtraBird"] = "WINGMAN";
         §;"+§["ExtraSpeed"] = "KINGSLING";
         §;"+§["PowerupBundle"] = "POWERUPBUNDLE";
         this.§4#4§ = §3";§.§#"'§();
      }
      
      public function init(param1:§=!C§) : void
      {
         this.§2!e§ = true;
         this.§="Y§ = param1;
         this.§@$2§ = new §!"t§();
         this.§@$2§.addEventListener(§?""§.§'I§,this.§+#l§);
         this.§@$2§.addEventListener(§?""§.§#§,this.§2#Q§);
         this.§@$2§.addEventListener(§?""§.§3!P§,this.§?Y§);
         this.§@$2§.§#s§();
      }
      
      private function §?Y§(param1:§?""§) : void
      {
         var _loc2_:§,#@§ = new ErrorPopup(ErrorPopup.§[#w§,§?""§.§3!P§ + " : " + param1.toString());
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
      }
      
      private function §2#Q§(param1:§?""§) : void
      {
         var _loc2_:§@"m§ = this.§=H§.§`$1§(this.§=H§.§>N§());
         var _loc3_:String = _loc2_.§<"K§;
         if(_loc3_ == §>#g§.§=-§)
         {
            _loc3_ = this.§^J§(_loc2_.quantity);
            if(_loc3_ == null)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Failed to find the right VC Package name for the quantity " + _loc2_.quantity));
            }
         }
         this.§^"[§(_loc2_);
         this.§6]§(_loc2_);
         if(this.§>R§)
         {
            this.§>R§.§@!5§(_loc3_);
         }
         this.§7B§ = §2"#§;
         dispatchEvent(new §?""§(§?""§.§#§,null));
      }
      
      private function §<#J§() : uint
      {
         var _loc1_:Vector.<§&"G§> = this.§=H§.§["=§();
         return _loc1_.length;
      }
      
      private function §6]§(param1:§@"m§) : void
      {
         var _loc2_:String = §;"+§[param1.§<"K§];
         if(_loc2_ == null)
         {
            _loc2_ = param1.§<"K§;
         }
         var _loc3_:uint = param1.quantity;
         this.§4#4§.§1$5§(_loc2_,_loc3_,this.§<#J§());
      }
      
      private function §8"F§(param1:§&"G§) : void
      {
         var _loc2_:* = param1.§<"K§;
         if(_loc2_ == §>#g§.§=-§)
         {
            _loc2_ = param1.quantity + "COINS";
         }
         else
         {
            _loc2_ = §;"+§[param1.§<"K§];
         }
         if(_loc2_ == null)
         {
            _loc2_ = param1.§<"K§;
         }
         this.§4#4§.§[!G§(_loc2_);
      }
      
      private function §^"[§(param1:§@"m§) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc2_:Boolean = false;
         var _loc3_:§<#V§ = new §<#V§();
         _loc3_.screen = §3"+§.ID;
         if(param1.§<"K§ == §>#g§.§=-§)
         {
            _loc3_.currency = "IVC";
            _loc4_ = (AngryBirdsBase.singleton.dataModel as §=#o§).§1q§.§#"+§;
            _loc3_.amount = param1.quantity - _loc4_;
            _loc2_ = true;
         }
         else
         {
            _loc5_ = §]#0§.§+!,§.§,#k§(param1.§<"K§);
            _loc3_.amount = param1.quantity - _loc5_;
         }
         _loc3_.itemType = param1.§<"K§;
         _loc3_.§]#=§ = §3";§.§+!V§;
         §]#0§.§+!,§.§&$@§(this.§=H§.§!$1§(),_loc2_,[_loc3_]);
      }
      
      private function §^J§(param1:uint) : String
      {
         var _loc4_:§&"G§ = null;
         var _loc2_:String = null;
         var _loc3_:Vector.<§&"G§> = this.§=H§.§["=§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§<"K§ == §>#g§.§=-§ && _loc4_.quantity == param1)
            {
               _loc2_ = _loc4_.§2"G§;
               break;
            }
         }
         return _loc2_;
      }
      
      public function §,#3§() : Boolean
      {
         return this.§7B§ == §#q§;
      }
      
      public function §,"e§() : Boolean
      {
         return this.§2!e§;
      }
      
      public function §;#M§() : void
      {
         this.§>R§ = new §3"+§(this.§=H§,this);
         this.§>R§.addEventListener(§7!^§.CLOSE,this.§#!c§);
         this.§>R§.addEventListener(§?""§.§!![§,this.§&_§);
         this.§>R§.addEventListener(§?""§.§5"u§,this.§="x§);
         this.§="Y§.openPopup(this.§>R§);
      }
      
      private function §="x§(param1:§?""§) : void
      {
         this.§>R§.updateState();
      }
      
      private function §&_§(param1:§?""§) : void
      {
         this.§@$2§.§=#'§();
         dispatchEvent(new §?""§(§?""§.§!![§));
      }
      
      private function §#!c§(param1:§7!^§) : void
      {
         this.§>R§.removeEventListener(§7!^§.CLOSE,this.§#!c§);
         this.§>R§.removeEventListener(§?""§.§!![§,this.§&_§);
         this.§>R§.removeEventListener(§?""§.§5"u§,this.§="x§);
         this.§>R§ = null;
      }
      
      private function §+#l§(param1:§?""§) : void
      {
         this.§2!e§ = false;
         this.§=H§ = §,$-§(param1.data);
         this.§7B§ = !this.§=H§.§2U§() ? uint(§2"#§) : uint(§#q§);
         if(this.§>R§)
         {
            this.§>R§.updateState();
            this.§>R§.§-!F§(false);
         }
         dispatchEvent(new §?""§(§?""§.§^"N§));
      }
      
      public function getState() : uint
      {
         return this.§7B§;
      }
      
      private function §,!B§(param1:String) : §&"G§
      {
         var _loc4_:§&"G§ = null;
         var _loc2_:§&"G§ = null;
         var _loc3_:Vector.<§&"G§> = this.§=H§.§["=§();
         for each(_loc4_ in _loc3_)
         {
            if(_loc4_.§2"G§ && _loc4_.§2"G§ == param1 || _loc4_.§<"K§ == param1)
            {
               _loc2_ = _loc4_;
               break;
            }
         }
         return _loc2_;
      }
   }
}
