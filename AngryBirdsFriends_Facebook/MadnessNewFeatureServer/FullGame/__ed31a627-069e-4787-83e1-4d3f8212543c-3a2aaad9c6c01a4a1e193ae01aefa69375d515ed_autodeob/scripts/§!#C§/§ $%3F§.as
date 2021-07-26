package §!#C§
{
   import §!h§.§4#Z§;
   import §&!_§.§!!K§;
   import §&!_§.§0I§;
   import §&!_§.§[!j§;
   import §,"v§.§;"n§;
   import §-$!§.§ $<§;
   import §-$!§.§0$@§;
   import §-;§.§+"d§;
   import §-;§.§<!m§;
   import §-;§.§<K§;
   import §0!s§.§5!-§;
   import §0!s§.§]"Y§;
   import §1L§.§!!o§;
   import §1L§.§;#&§;
   import §1L§.§>5§;
   import §>z§.§#"l§;
   import §>z§.AvatarCreatorPopup;
   import §>z§.ErrorPopup;
   import §>z§.ProcessingPopup;
   import §>z§.WarningPopup;
   import §`"3§.§^!Z§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class § $?§ extends EventDispatcher
   {
      
      public static const §["S§:String = "InventoryLoaded";
      
      public static const §&L§:String = "ProcessingPopupClosed";
      
      public static const §&!1§:String = "BoughtLevels";
      
      protected static var §1$8§:§ $?§;
      
      private static const §76§:int = 300;
      
      private static const §@!'§:int = 2000;
      
      private static const §&j§:Array = ["2000-83","Test-PlayLevel"];
       
      
      private var §=w§:Timer;
      
      private var §<!y§:int;
      
      private var §[#F§:ProcessingPopup;
      
      protected var §1#d§:Boolean = false;
      
      protected var §?!O§:§!!o§;
      
      protected var §!$"§:§[!j§;
      
      protected var §7#h§:§[!j§;
      
      protected var §%$?§:§[!j§;
      
      protected var §9!,§:§<!m§;
      
      private var mLevelManager:§;"n§;
      
      public function § $?§()
      {
         var _loc1_:§<K§ = null;
         this.§!$"§ = new §[!j§();
         this.§7#h§ = new §[!j§();
         this.§%$?§ = new §[!j§();
         super();
         if(§1$8§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t create more than one instance of PowerupsInventory."));
         }
         for each(_loc1_ in §+"d§.§]V§)
         {
            this.§!$"§[_loc1_.§1#7§] = 0;
         }
         §1$8§ = this;
      }
      
      public static function get §`"H§() : § $?§
      {
         if(!§1$8§)
         {
            §1$8§ = new § $?§();
         }
         return §1$8§;
      }
      
      protected static function get dataModel() : §4!Q§
      {
         return AngryBirdsBase.singleton.dataModel as §4!Q§;
      }
      
      public function §-!P§(param1:Boolean = false) : void
      {
         if(this.§?!O§)
         {
            this.§?!O§.removeEventListener(Event.COMPLETE,this.§+!s§);
            this.§?!O§.removeEventListener(Event.COMPLETE,this.§53§);
            this.§?!O§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'B§);
            this.§?!O§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'B§);
            this.§?!O§.removeEventListener(§>5§.§@!@§,this.§'B§);
            this.§?!O§ = null;
         }
         this.§?!O§ = new §!!o§();
         this.§?!O§.addEventListener(IOErrorEvent.IO_ERROR,this.§'B§);
         this.§?!O§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'B§);
         this.§?!O§.addEventListener(§>5§.§@!@§,this.§'B§);
         this.§?!O§.dataFormat = URLLoaderDataFormat.TEXT;
         if(param1)
         {
            if(!this.§=w§)
            {
               this.§=w§ = new Timer(§@!'§,1);
               this.§=w§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§,!v§);
               this.§<!y§ = 0;
            }
            this.§?!O§.addEventListener(Event.COMPLETE,this.§53§);
            this.§=w§.start();
            this.§7"O§(true);
         }
         else
         {
            this.§?!O§.addEventListener(Event.COMPLETE,this.§+!s§);
            this.§?!O§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
      }
      
      public function get §>3§() : §<!m§
      {
         return this.§9!,§;
      }
      
      protected function §[`§(param1:Object) : void
      {
         this.§!$"§ = new §[!j§();
         this.§7#h§ = new §[!j§();
         this.§%$?§ = new §[!j§();
         this.§9E§(param1);
         this.§?!O§ = null;
         this.§7"O§(false);
      }
      
      private function §9E§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         var _loc5_:§^!Z§ = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§<K§ = null;
         var _loc11_:int = 0;
         var _loc12_:§ $<§ = null;
         var _loc4_:Array = [];
         if(!this.§9!,§)
         {
            this.§9!,§ = new §<!m§(param1.ownedBundles,param1.claimableBundles,param1.cbc);
         }
         else if(this.§9!,§ && param1.ownedBundles)
         {
            this.§9!,§.§%!8§(param1.ownedBundles);
         }
         else if(this.§9!,§ && param1.claimableBundles)
         {
            this.§9!,§.§1"@§(param1.claimableBundles);
         }
         else if(this.§9!,§ && param1.cbc)
         {
            this.§9!,§.§""d§(param1.cbc);
         }
         for each(_loc5_ in param3)
         {
            if(_loc5_)
            {
               _loc5_.itemName = _loc5_.itemType;
               if(!_loc5_.§'$,§)
               {
                  if(_loc5_.screen == AvatarCreatorPopup.ID)
                  {
                     _loc5_.§'$,§ = "Avatar";
                  }
                  else if(_loc5_.itemType == §null§.§%l§)
                  {
                     _loc5_.§'$,§ = §null§.§%l§;
                  }
                  else if(_loc5_.itemType == §+"d§.§<!Y§)
                  {
                     _loc5_.§'$,§ = §+"d§.§<!Y§;
                  }
                  else if(§0$@§.§"P§(_loc5_.itemType))
                  {
                     _loc5_.§'$,§ = "Slingshot";
                  }
                  else
                  {
                     _loc5_.§'$,§ = "Powerup";
                  }
               }
               _loc5_.§]!?§ = !param1.hasBought;
               §!!K§.§%#S§().§%!D§(_loc5_.§]!?§,_loc5_.itemType,_loc5_.amount,_loc5_.§`"x§,_loc5_.screen,_loc5_.level,_loc5_.itemName,_loc5_.§'$,§,_loc5_.§%#&§,_loc5_.currency,_loc5_.§#Z§);
            }
         }
         for each(_loc6_ in param1.items)
         {
            if(_loc6_ is Array)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Inventory response object can\'t be Array."));
            }
            if(param1.itemsPrev)
            {
               _loc7_ = this.§=X§(_loc6_.i,param1.itemsPrev);
            }
            if(_loc6_.i == §null§.§%l§)
            {
               if(_loc7_)
               {
                  dataModel.§1W§.§ "Y§(_loc7_.q,true);
               }
               if((_loc11_ = dataModel.§1W§.§ "Y§(_loc6_.q,param2)) != 0)
               {
                  _loc4_.push(new §7$ §(_loc11_,§null§.§%l§));
               }
               §0I§.§%L§(_loc6_.q,dataModel.§-!4§.§41§);
            }
            else if(_loc6_.i != §]"W§.§%$,§)
            {
               if((_loc10_ = §+"d§.§,!c§(_loc6_.i)) && _loc6_.s)
               {
                  this.§7#h§[_loc10_.§1#7§] = Number(_loc6_.s);
                  this.§%$?§[_loc6_.i] = true;
                  this.§!$"§[_loc6_.i] = _loc6_.q;
                  _loc4_.push(new §7$ §(1,_loc6_.i));
               }
               else
               {
                  if(_loc12_ = §0$@§.§"P§(_loc6_.i))
                  {
                     _loc12_.§!"8§ = true;
                  }
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.q;
                  }
                  else
                  {
                     _loc8_ = this.§!$"§[_loc6_.i];
                  }
                  _loc9_ = _loc6_.q - _loc8_;
                  this.§!$"§[_loc6_.i] = _loc6_.q;
                  if(_loc9_ != 0)
                  {
                     _loc4_.push(new §7$ §(_loc9_,_loc6_.i));
                  }
                  §0I§.§,"m§(_loc6_.i,_loc6_.q);
               }
            }
         }
         if(param1.items)
         {
            (AngryBirdsBase.singleton.dataModel as §4!Q§).§-!4§.§41§ = param1.items.hasBought;
         }
         dispatchEvent(new §4#Z§(Event.CHANGE,param1.items));
         return _loc4_;
      }
      
      private function §=X§(param1:String, param2:Object) : Object
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
      
      public function § !t§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         if(param1 == null)
         {
            return [];
         }
         return this.§9E§(param1,param2,param3);
      }
      
      protected function §53§(param1:Event) : void
      {
         var _loc2_:Array = this.§9E§(this.§?!O§.data);
         if(!_loc2_ || _loc2_.length == 0)
         {
            if(this.§<!y§ < §76§)
            {
               this.§=w§.start();
               this.§7"O§(true);
            }
            else
            {
               this.§,4§();
               this.§?!O§ = null;
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t update the inventory."));
            }
         }
         else
         {
            this.§,4§();
            this.§?!O§ = null;
         }
      }
      
      private function §,!v§(param1:TimerEvent) : void
      {
         if(this.§?!O§)
         {
            this.§?!O§.load(§;#&§.§ #G§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
         if(this.§=w§)
         {
            this.§=w§.reset();
            ++this.§<!y§;
         }
      }
      
      protected function §+!s§(param1:Event) : void
      {
         this.§[`§(this.§?!O§.data);
         dispatchEvent(new Event(§["S§));
      }
      
      protected function §'B§(param1:Event) : void
      {
         var _loc2_:§5!-§ = null;
         this.§,4§();
         if(param1.type == §>5§.§@!@§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§ $@§);
         }
         else
         {
            _loc2_ = new WarningPopup(§#"l§.ERROR,§]"Y§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§?!O§ = null;
      }
      
      public function §2"g§(param1:String) : Number
      {
         if(!this.isTournament())
         {
            return 0;
         }
         if(this.§7#h§[param1] < new Date().time)
         {
            delete this.§7#h§[param1];
            delete this.§%$?§[param1];
         }
         return Number(this.§7#h§[param1]) || Number(0);
      }
      
      public function §0#s§(param1:String, param2:Boolean = true) : int
      {
         if(this.§2"g§(param1) > 0 && param2)
         {
            if(this.§!$"§[param1])
            {
               return this.§!$"§[param1];
            }
            return 1;
         }
         return this.§!$"§[param1];
      }
      
      public function §+q§(param1:String, param2:int) : void
      {
         this.§!$"§[param1] = param2;
      }
      
      public function §@!c§(param1:String) : void
      {
         var _loc2_:Object = null;
         if(this.§2"g§(param1) > 0)
         {
            _loc2_ = new Object();
            _loc2_.i = param1;
            dispatchEvent(new §4#Z§(Event.CHANGE,[_loc2_]));
            return;
         }
         if(this.§0#s§(param1) <= 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§@!x§,"Can\'t use powerup " + param1 + ", user doesn\'t have any left."));
         }
         --this.§!$"§[param1];
      }
      
      private function isTournament() : Boolean
      {
         return this.mLevelManager.getCurrentEpisodeModel().isTournament;
      }
      
      public function §3#c§(param1:String) : Boolean
      {
         if(!this.§7#h§[param1] || this.§7#h§[param1] < new Date().time)
         {
            delete this.§7#h§[param1];
            delete this.§%$?§[param1];
         }
         return this.§%$?§[param1];
      }
      
      public function get §6#J§() : Boolean
      {
         return this.§?!O§ != null;
      }
      
      private function §7"O§(param1:Boolean) : void
      {
         if(param1 && !this.§[#F§)
         {
            this.§[#F§ = new ProcessingPopup(§#"l§.§?!b§,§]"Y§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§[#F§);
         }
         else if(!param1 && this.§[#F§)
         {
            this.§[#F§.close();
            this.§[#F§ = null;
            dispatchEvent(new Event(§&L§));
         }
      }
      
      private function §,4§() : void
      {
         if(this.§=w§)
         {
            this.§=w§.stop();
            this.§=w§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§,!v§);
            this.§=w§ = null;
         }
         this.§7"O§(false);
      }
      
      public function §4F§(param1:§;"n§) : void
      {
         this.mLevelManager = param1;
      }
      
      public function §9!f§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(this.§!$"§[param1])
         {
            _loc2_ = this.§!$"§[param1];
         }
         return _loc2_;
      }
   }
}
