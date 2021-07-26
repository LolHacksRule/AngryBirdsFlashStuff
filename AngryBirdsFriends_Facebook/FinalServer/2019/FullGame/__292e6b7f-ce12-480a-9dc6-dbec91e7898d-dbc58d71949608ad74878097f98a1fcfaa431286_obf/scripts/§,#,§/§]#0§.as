package §,#,§
{
   import § $0§.§,#@§;
   import § $0§.§5R§;
   import §#"4§.§&r§;
   import §#"4§.§3";§;
   import §#"4§.§<"G§;
   import §&=§.§<#V§;
   import §+!Y§.§3!B§;
   import §+!Y§.§[@§;
   import §,"5§.§ r§;
   import §4S§.§+!p§;
   import §4S§.§-$C§;
   import §4S§.§?#l§;
   import §7#$§.§]#q§;
   import §9T§.§ "T§;
   import §9T§.§!#;§;
   import §9T§.§%#-§;
   import §?Q§.§@#D§;
   import §?Q§.AvatarCreatorPopup;
   import §?Q§.ErrorPopup;
   import §?Q§.ProcessingPopup;
   import §?Q§.WarningPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §]#0§ extends EventDispatcher
   {
      
      public static const §>"K§:String = "InventoryLoaded";
      
      public static const §2#Z§:String = "ProcessingPopupClosed";
      
      public static const §8!T§:String = "BoughtLevels";
      
      protected static var §+#!§:§]#0§;
      
      private static const §>1§:int = 300;
      
      private static const §1"[§:int = 2000;
      
      private static const §5s§:Array = ["2000-83","Test-PlayLevel"];
       
      
      private var §!#f§:Timer;
      
      private var §`!0§:int;
      
      private var §3=§:ProcessingPopup;
      
      protected var §="d§:Boolean = false;
      
      protected var §,N§:§-$C§;
      
      protected var §2p§:§&r§;
      
      protected var §;#+§:§&r§;
      
      protected var §'!`§:§&r§;
      
      protected var §^"q§:§%#-§;
      
      private var mLevelManager:§]#q§;
      
      public function §]#0§()
      {
         var _loc1_:§!#;§ = null;
         this.§2p§ = new §&r§();
         this.§;#+§ = new §&r§();
         this.§'!`§ = new §&r§();
         super();
         if(§+#!§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t create more than one instance of PowerupsInventory."));
         }
         for each(_loc1_ in § "T§.§"!K§)
         {
            this.§2p§[_loc1_.§8t§] = 0;
         }
         §+#!§ = this;
      }
      
      public static function get §+!,§() : §]#0§
      {
         if(!§+#!§)
         {
            §+#!§ = new §]#0§();
         }
         return §+#!§;
      }
      
      protected static function get dataModel() : §=#o§
      {
         return AngryBirdsBase.singleton.dataModel as §=#o§;
      }
      
      public function §@!z§(param1:Boolean = false) : void
      {
         if(this.§,N§)
         {
            this.§,N§.removeEventListener(Event.COMPLETE,this.§6"l§);
            this.§,N§.removeEventListener(Event.COMPLETE,this.§4"'§);
            this.§,N§.removeEventListener(IOErrorEvent.IO_ERROR,this.§?$!§);
            this.§,N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?$!§);
            this.§,N§.removeEventListener(§+!p§.§2$9§,this.§?$!§);
            this.§,N§ = null;
         }
         this.§,N§ = new §-$C§();
         this.§,N§.addEventListener(IOErrorEvent.IO_ERROR,this.§?$!§);
         this.§,N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§?$!§);
         this.§,N§.addEventListener(§+!p§.§2$9§,this.§?$!§);
         this.§,N§.dataFormat = URLLoaderDataFormat.TEXT;
         if(param1)
         {
            if(!this.§!#f§)
            {
               this.§!#f§ = new Timer(§1"[§,1);
               this.§!#f§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§5!R§);
               this.§`!0§ = 0;
            }
            this.§,N§.addEventListener(Event.COMPLETE,this.§4"'§);
            this.§!#f§.start();
            this.§#U§(true);
         }
         else
         {
            this.§,N§.addEventListener(Event.COMPLETE,this.§6"l§);
            this.§,N§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
      }
      
      public function get §'!u§() : §%#-§
      {
         return this.§^"q§;
      }
      
      protected function §5&§(param1:Object) : void
      {
         this.§2p§ = new §&r§();
         this.§;#+§ = new §&r§();
         this.§'!`§ = new §&r§();
         this.§2"9§(param1);
         this.§,N§ = null;
         this.§#U§(false);
      }
      
      private function §2"9§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         var _loc5_:§<#V§ = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§!#;§ = null;
         var _loc11_:int = 0;
         var _loc12_:§3!B§ = null;
         var _loc4_:Array = [];
         if(!this.§^"q§)
         {
            this.§^"q§ = new §%#-§(param1.ownedBundles,param1.claimableBundles,param1.cbc);
         }
         else if(this.§^"q§ && param1.ownedBundles)
         {
            this.§^"q§.§'q§(param1.ownedBundles);
         }
         else if(this.§^"q§ && param1.claimableBundles)
         {
            this.§^"q§.§^!x§(param1.claimableBundles);
         }
         else if(this.§^"q§ && param1.cbc)
         {
            this.§^"q§.§^"4§(param1.cbc);
         }
         for each(_loc5_ in param3)
         {
            if(_loc5_)
            {
               _loc5_.itemName = _loc5_.itemType;
               if(!_loc5_.§#!D§)
               {
                  if(_loc5_.screen == AvatarCreatorPopup.ID)
                  {
                     _loc5_.§#!D§ = "Avatar";
                  }
                  else if(_loc5_.itemType == §>#g§.§=-§)
                  {
                     _loc5_.§#!D§ = §>#g§.§=-§;
                  }
                  else if(_loc5_.itemType == § "T§.§]",§)
                  {
                     _loc5_.§#!D§ = § "T§.§]",§;
                  }
                  else if(§[@§.§[#P§(_loc5_.itemType))
                  {
                     _loc5_.§#!D§ = "Slingshot";
                  }
                  else
                  {
                     _loc5_.§#!D§ = "Powerup";
                  }
               }
               _loc5_.§=!;§ = !param1.hasBought;
               §3";§.§#"'§().§7"Q§(_loc5_.§=!;§,_loc5_.itemType,_loc5_.amount,_loc5_.§]#=§,_loc5_.screen,_loc5_.level,_loc5_.itemName,_loc5_.§#!D§,_loc5_.§&$3§,_loc5_.currency,_loc5_.§>$%§);
            }
         }
         for each(_loc6_ in param1.items)
         {
            if(_loc6_ is Array)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Inventory response object can\'t be Array."));
            }
            if(param1.itemsPrev)
            {
               _loc7_ = this.§@"a§(_loc6_.i,param1.itemsPrev);
            }
            if(_loc6_.i == §>#g§.§=-§)
            {
               if(_loc7_)
               {
                  dataModel.§1q§.§?"K§(_loc7_.q,true);
               }
               if((_loc11_ = dataModel.§1q§.§?"K§(_loc6_.q,param2)) != 0)
               {
                  _loc4_.push(new §^",§(_loc11_,§>#g§.§=-§));
               }
               §<"G§.§@#$§(_loc6_.q,dataModel.§;8§.§]m§);
            }
            else if(_loc6_.i != §2"X§.§>x§)
            {
               if((_loc10_ = § "T§.§7#?§(_loc6_.i)) && _loc6_.s)
               {
                  this.§;#+§[_loc10_.§8t§] = Number(_loc6_.s);
                  this.§'!`§[_loc6_.i] = true;
                  this.§2p§[_loc6_.i] = _loc6_.q;
                  _loc4_.push(new §^",§(1,_loc6_.i));
               }
               else
               {
                  if(_loc12_ = §[@§.§[#P§(_loc6_.i))
                  {
                     _loc12_.§[#T§ = true;
                  }
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.q;
                  }
                  else
                  {
                     _loc8_ = this.§2p§[_loc6_.i];
                  }
                  _loc9_ = _loc6_.q - _loc8_;
                  this.§2p§[_loc6_.i] = _loc6_.q;
                  if(_loc9_ != 0)
                  {
                     _loc4_.push(new §^",§(_loc9_,_loc6_.i));
                  }
                  §<"G§.§>r§(_loc6_.i,_loc6_.q);
               }
            }
         }
         if(param1.items)
         {
            (AngryBirdsBase.singleton.dataModel as §=#o§).§;8§.§]m§ = param1.items.hasBought;
         }
         dispatchEvent(new § r§(Event.CHANGE,param1.items));
         return _loc4_;
      }
      
      private function §@"a§(param1:String, param2:Object) : Object
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param2)
         {
            if(_loc3_.i == param1)
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function §&$@§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         if(param1 == null)
         {
            return [];
         }
         return this.§2"9§(param1,param2,param3);
      }
      
      protected function §4"'§(param1:Event) : void
      {
         var _loc2_:Array = this.§2"9§(this.§,N§.data);
         if(!_loc2_ || _loc2_.length == 0)
         {
            if(this.§`!0§ < §>1§)
            {
               this.§!#f§.start();
               this.§#U§(true);
            }
            else
            {
               this.§##0§();
               this.§,N§ = null;
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t update the inventory."));
            }
         }
         else
         {
            this.§##0§();
            this.§,N§ = null;
         }
      }
      
      private function §5!R§(param1:TimerEvent) : void
      {
         if(this.§,N§)
         {
            this.§,N§.load(§?#l§.§2#=§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
         if(this.§!#f§)
         {
            this.§!#f§.reset();
            ++this.§`!0§;
         }
      }
      
      protected function §6"l§(param1:Event) : void
      {
         this.§5&§(this.§,N§.data);
         dispatchEvent(new Event(§>"K§));
      }
      
      protected function §?$!§(param1:Event) : void
      {
         var _loc2_:§,#@§ = null;
         this.§##0§();
         if(param1.type == §+!p§.§2$9§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§-#d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§@#D§.ERROR,§5R§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§,N§ = null;
      }
      
      public function §9n§(param1:String) : Number
      {
         if(!this.isTournament())
         {
            return 0;
         }
         if(this.§;#+§[param1] < new Date().time)
         {
            delete this.§;#+§[param1];
            delete this.§'!`§[param1];
         }
         return Number(this.§;#+§[param1]) || Number(0);
      }
      
      public function §,#k§(param1:String, param2:Boolean = true) : int
      {
         if(this.§9n§(param1) > 0 && param2)
         {
            if(this.§2p§[param1])
            {
               return this.§2p§[param1];
            }
            return 1;
         }
         return this.§2p§[param1];
      }
      
      public function §<+§(param1:String, param2:int) : void
      {
         this.§2p§[param1] = param2;
      }
      
      public function §"#u§(param1:String) : void
      {
         var _loc2_:Object = null;
         if(this.§9n§(param1) > 0)
         {
            _loc2_ = new Object();
            _loc2_.i = param1;
            dispatchEvent(new § r§(Event.CHANGE,[_loc2_]));
            return;
         }
         if(this.§,#k§(param1) <= 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§[#w§,"Can\'t use powerup " + param1 + ", user doesn\'t have any left."));
         }
         --this.§2p§[param1];
      }
      
      private function isTournament() : Boolean
      {
         return this.mLevelManager.getCurrentEpisodeModel().isTournament;
      }
      
      public function §2I§(param1:String) : Boolean
      {
         if(!this.§;#+§[param1] || this.§;#+§[param1] < new Date().time)
         {
            delete this.§;#+§[param1];
            delete this.§'!`§[param1];
         }
         return this.§'!`§[param1];
      }
      
      public function get §9$$§() : Boolean
      {
         return this.§,N§ != null;
      }
      
      private function §#U§(param1:Boolean) : void
      {
         if(param1 && !this.§3=§)
         {
            this.§3=§ = new ProcessingPopup(§@#D§.§,"4§,§5R§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§3=§);
         }
         else if(!param1 && this.§3=§)
         {
            this.§3=§.close();
            this.§3=§ = null;
            dispatchEvent(new Event(§2#Z§));
         }
      }
      
      private function §##0§() : void
      {
         if(this.§!#f§)
         {
            this.§!#f§.stop();
            this.§!#f§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§5!R§);
            this.§!#f§ = null;
         }
         this.§#U§(false);
      }
      
      public function § !0§(param1:§]#q§) : void
      {
         this.mLevelManager = param1;
      }
      
      public function §!#r§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(this.§2p§[param1])
         {
            _loc2_ = this.§2p§[param1];
         }
         return _loc2_;
      }
   }
}
