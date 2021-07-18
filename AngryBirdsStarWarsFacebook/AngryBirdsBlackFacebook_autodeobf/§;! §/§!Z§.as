package §;! §
{
   import §!"W§.§="g§;
   import §!"e§.§`"W§;
   import §#!'§.§6"]§;
   import §'y§.§^!B§;
   import §+!!§.§9"i§;
   import §+D§.§ #^§;
   import §,"N§.§""t§;
   import §,"N§.§%"[§;
   import §,"N§.§=o§;
   import §,"N§.§@#B§;
   import §-#a§.§>,§;
   import §2!f§.§]!J§;
   import §7!$§.§&$§;
   import §7K§.§,T§;
   import §8#I§.§ q§;
   import §;"Y§.§&#X§;
   import §;@§.§5!U§;
   import §<o§.§^i§;
   import §="2§.§?!r§;
   import §>"$§.§?g§;
   import §[!m§.§+5§;
   import §[!m§.AbstractPopup;
   import §[!m§.§[!j§;
   import flash.display.MovieClip;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class §!Z§ extends AbstractPopup implements §>,§
   {
      
      public static var §%!h§:String = "shop";
      
      private static const §]m§:int = 500;
      
      public static var §]"y§:int = 0;
      
      public static var §1#]§:String = "";
       
      
      protected var §+!F§:Vector.<§5!U§>;
      
      protected var §6"d§:MovieClip;
      
      protected var §#M§:§4!l§;
      
      protected var §2"O§:§""t§;
      
      protected var §@!E§:§=o§;
      
      protected var §[!;§:Boolean;
      
      protected var §6#L§:§?g§;
      
      protected var §1J§:Timer;
      
      public function §!Z§(param1:int, param2:int, param3:int = -1, param4:String = "")
      {
         super(param1,param2,§&$§.§@8§.Popups.Popup_Shop[0],§%!h§);
         this.§2"O§ = §@#B§(§4#;§.singleton.dataModel).§1!f§;
         this.§@!E§ = §@#B§(§4#;§.singleton.dataModel).§`!W§;
         if(param3 >= 0)
         {
            §]"y§ = param3;
         }
         §1#]§ = param4;
      }
      
      public function get isLoaded() : Boolean
      {
         if(!this.§+!F§)
         {
            return false;
         }
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!F§.length)
         {
            if(!this.§+!F§[_loc1_].isLoaded)
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
      
      override protected function init() : void
      {
         this.§6"d§ = § #^§(§^c§.getItemByName("Container_Tabs")).mClip;
         var _loc1_:§^!B§ = new §^!B§(§ #^§(§^c§.getItemByName("Container_PowerUpsTab")),§^"N§);
         _loc1_.addEventListener(§^i§.§-#>§,this.§1"Q§);
         _loc1_.addEventListener(§^i§.§+]§,this.§3!7§);
         _loc1_.addEventListener(§^i§.§5!B§,this.§`#6§);
         var _loc2_:§ q§ = new § q§(§ #^§(§^c§.getItemByName("Container_EnergyTab")),§^"N§);
         _loc2_.addEventListener(§^i§.§-#>§,this.§1"Q§);
         _loc2_.addEventListener(§^i§.§?!A§,this.§3!7§);
         _loc2_.addEventListener(§^i§.§5!B§,this.§`#6§);
         _loc2_.addEventListener(§^i§.§@"v§,this.§-;§);
         this.§+!F§ = new Vector.<§5!U§>();
         this.§+!F§.push(_loc1_);
         this.§+!F§.push(_loc2_);
         this.§#M§ = new §4!l§(§ #^§(§^c§.getItemByName("Container_StarCoin")));
         this.§[!;§ = false;
         this.§2"O§.addEventListener(§="g§.§?6§,this.§?#P§);
         this.§2"O§.addEventListener(§="g§.§=#2§,this.§?K§);
         if(!this.§2"O§.§9"'§())
         {
            if(this.§2"O§.§^5§)
            {
               this.§&!f§(this.§2"O§.§^5§);
            }
            else
            {
               this.§2"O§.§9"'§(true);
            }
         }
      }
      
      override protected function show(param1:Boolean = false) : void
      {
         super.show(param1);
         §6"]§.§>!=§();
         this.§&#`§(§]"y§);
      }
      
      override protected function hide(param1:Boolean = false, param2:Boolean = false) : void
      {
         super.hide(param1);
      }
      
      private function §?#P§(param1:§="g§) : void
      {
         this.§&!f§(param1.§^5§);
      }
      
      private function §?K§(param1:§="g§) : void
      {
         this.§[!;§ = false;
      }
      
      private function §2!&§() : void
      {
         if(this.§1J§)
         {
            this.§1J§.reset();
            this.§1J§.removeEventListener(TimerEvent.TIMER,this.§2!#§);
         }
         this.§1J§ = null;
      }
      
      private function §2!#§(param1:TimerEvent) : void
      {
         var _loc3_:int = 0;
         var _loc4_:§5!U§ = null;
         var _loc2_:§%"[§ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
         if(_loc2_.isLoaded)
         {
            this.§2!&§();
            if(this.§6#L§)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§+!F§.length)
               {
                  (_loc4_ = this.§+!F§[_loc3_]).initData(this.§6#L§);
                  _loc3_++;
               }
            }
            this.§6#L§ = null;
         }
      }
      
      private function §&!f§(param1:§?g§) : void
      {
         var _loc2_:§%"[§ = null;
         var _loc3_:int = 0;
         var _loc4_:§5!U§ = null;
         if(param1)
         {
            _loc2_ = §@#B§(§4#;§.singleton.dataModel).§&"9§;
            if(_loc2_.isLoaded)
            {
               _loc3_ = 0;
               while(_loc3_ < this.§+!F§.length)
               {
                  (_loc4_ = this.§+!F§[_loc3_]).initData(param1);
                  _loc3_++;
               }
            }
            else
            {
               this.§6#L§ = param1;
               this.§2!&§();
               this.§1J§ = new Timer(§]m§,0);
               this.§1J§.addEventListener(TimerEvent.TIMER,this.§2!#§);
               this.§1J§.start();
            }
         }
      }
      
      override protected function onUIInteraction(param1:int, param2:String, param3:§&#X§) : void
      {
         super.onUIInteraction(param1,param2,param3);
      }
      
      protected function §1"Q§(param1:§^i§) : void
      {
         §?!r§.§"#_§("misc_menubuttonproceed_1");
         this.§&#`§(this.§+!F§.indexOf(§5!U§(param1.currentTarget)));
      }
      
      protected function §3!7§(param1:§^i§) : void
      {
         var _loc2_:§5!U§ = §5!U§(param1.currentTarget);
         var _loc3_:Boolean = this.§8@§(param1.prices);
         _loc2_.purchaseAccepted(_loc3_);
      }
      
      protected function §`#6§(param1:§^i§) : void
      {
         §2!P§.§;%§(param1.prices);
      }
      
      protected function §-;§(param1:§^i§) : void
      {
         var _loc2_:§[!j§ = new §9"i§(§`"W§.§+v§,§+5§.TOP,§9"i§.§%!§);
         §4#;§.singleton.popupManager.openPopup(_loc2_,true,true,true);
      }
      
      protected function §8@§(param1:§,T§) : Boolean
      {
         if(this.§[!;§)
         {
            return false;
         }
         if(this.§@!E§.§1#9§(param1.price))
         {
            this.§@!E§.§12§(param1.price);
            this.§[!;§ = true;
            this.§2"O§.§9?§(param1);
            return true;
         }
         this.§7"r§();
         return false;
      }
      
      protected function §7"r§() : void
      {
         var _loc1_:§[!j§ = §]!J§.§9P§(§`"W§.§+v§,§+5§.TOP,§]!J§.§[!v§);
         §4#;§.singleton.popupManager.openPopup(_loc1_,true,true);
      }
      
      override public function dispose() : void
      {
         var _loc2_:§5!U§ = null;
         this.§2!&§();
         this.§2"O§.removeEventListener(§="g§.§?6§,this.§?#P§);
         this.§2"O§.removeEventListener(§="g§.§=#2§,this.§?K§);
         var _loc1_:int = 0;
         while(_loc1_ < this.§+!F§.length)
         {
            _loc2_ = this.§+!F§[_loc1_];
            _loc2_.removeEventListener(§^i§.§-#>§,this.§1"Q§);
            _loc2_.removeEventListener(§^i§.§+]§,this.§3!7§);
            _loc2_.removeEventListener(§^i§.§?!A§,this.§3!7§);
            _loc2_.removeEventListener(§^i§.§5!B§,this.§`#6§);
            _loc2_.removeEventListener(§^i§.§@"v§,this.§-;§);
            _loc2_.dispose();
            _loc1_++;
         }
         this.§+!F§ = null;
         this.§#M§.dispose();
         this.§#M§ = null;
         super.dispose();
      }
      
      public function §&#`§(param1:int) : void
      {
         var _loc2_:§5!U§ = null;
         var _loc3_:int = 0;
         while(_loc3_ < this.§+!F§.length)
         {
            _loc2_ = this.§+!F§[_loc3_];
            if(_loc3_ == param1)
            {
               §]"y§ = _loc3_;
               _loc2_.enable(§1#]§);
               this.§6"d§.setChildIndex(_loc2_.§`Z§.mClip,this.§6"d§.numChildren - 1);
               §1#]§ = "";
            }
            else
            {
               _loc2_.disable();
            }
            _loc3_++;
         }
      }
   }
}
