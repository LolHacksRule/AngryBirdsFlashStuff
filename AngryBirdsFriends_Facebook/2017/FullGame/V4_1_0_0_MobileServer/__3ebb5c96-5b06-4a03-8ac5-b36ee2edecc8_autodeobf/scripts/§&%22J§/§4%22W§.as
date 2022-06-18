package §&"J§
{
   import § $%§.§%§;
   import § $%§.§4"v§;
   import § $%§.§]e§;
   import § o§.§%"!§;
   import § o§.AvatarCreatorPopup;
   import § o§.ErrorPopup;
   import § o§.ProcessingPopup;
   import § o§.WarningPopup;
   import §6V§.§&"g§;
   import §6V§.§?!=§;
   import §6V§.§`"5§;
   import §8!§.§#!%§;
   import §;#r§.§"g§;
   import §;P§.§-#b§;
   import §;P§.§<#U§;
   import §;P§.§super§;
   import §<#m§.§!"<§;
   import §<#m§.§^#o§;
   import §=#C§.§6!u§;
   import §=#C§.§7"G§;
   import §@#§.§^#Q§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §4"W§ extends EventDispatcher
   {
      
      public static const §8!Z§:String = "InventoryLoaded";
      
      public static const §`!X§:String = "ProcessingPopupClosed";
      
      public static const §0x§:String = "BoughtLevels";
      
      protected static var §%#b§:§4"W§;
      
      private static const §>f§:int = 300;
      
      private static const §-#n§:int = 2000;
      
      private static const §,#>§:Array = ["2000-83","Test-PlayLevel"];
       
      
      private var §8$"§:Timer;
      
      private var §%V§:int;
      
      private var §;#C§:ProcessingPopup;
      
      protected var §0!I§:Boolean = false;
      
      protected var §3!$§:§4"v§;
      
      protected var §+G§:§&"g§;
      
      protected var §0;§:§&"g§;
      
      protected var §;"g§:§&"g§;
      
      protected var §?!`§:§<#U§;
      
      private var mLevelManager:§^#Q§;
      
      public function §4"W§()
      {
         var _loc1_:§-#b§ = null;
         this.§+G§ = new §&"g§();
         this.§0;§ = new §&"g§();
         this.§;"g§ = new §&"g§();
         super();
         if(§%#b§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         for each(_loc1_ in §super§.§[#>§)
         {
            this.§+G§[_loc1_.§?"9§] = 0;
         }
         §%#b§ = this;
      }
      
      public static function get § "D§() : §4"W§
      {
         if(!§%#b§)
         {
            §%#b§ = new §4"W§();
         }
         return §%#b§;
      }
      
      protected static function get dataModel() : §`]§
      {
         return AngryBirdsBase.singleton.dataModel as §`]§;
      }
      
      public function §@!z§(param1:Boolean = false) : void
      {
         if(this.§3!$§)
         {
            this.§3!$§.removeEventListener(Event.COMPLETE,this.§["V§);
            this.§3!$§.removeEventListener(Event.COMPLETE,this.§-"T§);
            this.§3!$§.removeEventListener(IOErrorEvent.IO_ERROR,this.§=!d§);
            this.§3!$§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!d§);
            this.§3!$§.removeEventListener(§]e§.§5!;§,this.§=!d§);
            this.§3!$§ = null;
         }
         this.§3!$§ = new §4"v§();
         this.§3!$§.addEventListener(IOErrorEvent.IO_ERROR,this.§=!d§);
         this.§3!$§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§=!d§);
         this.§3!$§.addEventListener(§]e§.§5!;§,this.§=!d§);
         this.§3!$§.dataFormat = URLLoaderDataFormat.TEXT;
         if(param1)
         {
            if(!this.§8$"§)
            {
               this.§8$"§ = new Timer(§-#n§,1);
               this.§8$"§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§-!^§);
               this.§%V§ = 0;
            }
            this.§3!$§.addEventListener(Event.COMPLETE,this.§-"T§);
            this.§8$"§.start();
            this.§-$"§(true);
         }
         else
         {
            this.§3!$§.addEventListener(Event.COMPLETE,this.§["V§);
            this.§3!$§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
      }
      
      public function get §^$!§() : §<#U§
      {
         return this.§?!`§;
      }
      
      protected function §!#W§(param1:Object) : void
      {
         this.§+G§ = new §&"g§();
         this.§0;§ = new §&"g§();
         this.§;"g§ = new §&"g§();
         this.§^S§(param1);
         this.§3!$§ = null;
         this.§-$"§(false);
      }
      
      private function §^S§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         var _loc5_:§"g§ = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§-#b§ = null;
         var _loc11_:int = 0;
         var _loc12_:§6!u§ = null;
         var _loc4_:Array = [];
         if(!this.§?!`§)
         {
            this.§?!`§ = new §<#U§(param1.ownedBundles,param1.claimableBundles,param1.cbc);
         }
         else if(this.§?!`§ && param1.ownedBundles)
         {
            this.§?!`§.§0"b§(param1.ownedBundles);
         }
         else if(this.§?!`§ && param1.claimableBundles)
         {
            this.§?!`§.§^"D§(param1.claimableBundles);
         }
         else if(this.§?!`§ && param1.cbc)
         {
            this.§?!`§.§>!l§(param1.cbc);
         }
         for each(_loc5_ in param3)
         {
            if(_loc5_)
            {
               _loc5_.itemName = _loc5_.itemType;
               if(!_loc5_.§;!1§)
               {
                  if(_loc5_.screen == AvatarCreatorPopup.ID)
                  {
                     _loc5_.§;!1§ = "Avatar";
                  }
                  else if(_loc5_.itemType == §6$0§.§3#j§)
                  {
                     _loc5_.§;!1§ = §6$0§.§3#j§;
                  }
                  else if(_loc5_.itemType == §super§.§5"b§)
                  {
                     _loc5_.§;!1§ = §super§.§5"b§;
                  }
                  else if(§7"G§.§-o§(_loc5_.itemType))
                  {
                     _loc5_.§;!1§ = "Slingshot";
                  }
                  else
                  {
                     _loc5_.§;!1§ = "Powerup";
                  }
               }
               _loc5_.§9#6§ = !param1.hasBought;
               §?!=§.§3!q§().§%"X§(_loc5_.§9#6§,_loc5_.itemType,_loc5_.amount,_loc5_.§>"j§,_loc5_.screen,_loc5_.level,_loc5_.itemName,_loc5_.§;!1§,_loc5_.§^$9§,_loc5_.currency,_loc5_.§]$9§);
            }
         }
         for each(_loc6_ in param1.items)
         {
            if(_loc6_ is Array)
            {
               throw new Error("Responseobject should not be Array!! Inject object.items instead");
            }
            if(param1.itemsPrev)
            {
               _loc7_ = this.§4!U§(_loc6_.i,param1.itemsPrev);
            }
            if(_loc6_.i == §6$0§.§3#j§)
            {
               if(_loc7_)
               {
                  dataModel.§>p§.§`"p§(_loc7_.q,true);
               }
               if((_loc11_ = dataModel.§>p§.§`"p§(_loc6_.q,param2)) != 0)
               {
                  _loc4_.push(new §8S§(_loc11_,§6$0§.§3#j§));
               }
               §`"5§.§^$;§(_loc6_.q,dataModel.§'u§.§=3§);
            }
            else if(_loc6_.i != §2"e§.§&#o§)
            {
               if((_loc10_ = §super§.§="=§(_loc6_.i)) && _loc6_.s)
               {
                  this.§0;§[_loc10_.§?"9§] = Number(_loc6_.s);
                  this.§;"g§[_loc6_.i] = true;
                  this.§+G§[_loc6_.i] = _loc6_.q;
                  _loc4_.push(new §8S§(1,_loc6_.i));
               }
               else
               {
                  if(_loc12_ = §7"G§.§-o§(_loc6_.i))
                  {
                     _loc12_.§3"i§ = true;
                  }
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.q;
                  }
                  else
                  {
                     _loc8_ = this.§+G§[_loc6_.i];
                  }
                  _loc9_ = _loc6_.q - _loc8_;
                  this.§+G§[_loc6_.i] = _loc6_.q;
                  if(_loc9_ != 0)
                  {
                     _loc4_.push(new §8S§(_loc9_,_loc6_.i));
                  }
                  §`"5§.§1"j§(_loc6_.i,_loc6_.q);
               }
            }
         }
         if(param1.boughtLevels)
         {
            this.§+G§[§0x§] = param1.boughtLevels;
         }
         if(param1.items)
         {
            (AngryBirdsBase.singleton.dataModel as §`]§).§'u§.§=3§ = param1.items.hasBought;
         }
         dispatchEvent(new §#!%§(Event.CHANGE,param1.items));
         return _loc4_;
      }
      
      private function §4!U§(param1:String, param2:Object) : Object
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
      
      public function §+#<§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         if(param1 == null)
         {
            return [];
         }
         return this.§^S§(param1,param2,param3);
      }
      
      protected function §-"T§(param1:Event) : void
      {
         var _loc2_:Array = this.§^S§(this.§3!$§.data);
         if(!_loc2_ || _loc2_.length == 0)
         {
            if(this.§%V§ < §>f§)
            {
               this.§8$"§.start();
               this.§-$"§(true);
            }
            else
            {
               this.§!$2§();
               this.§3!$§ = null;
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§^#c§));
            }
         }
         else
         {
            this.§!$2§();
            this.§3!$§ = null;
         }
      }
      
      private function §-!^§(param1:TimerEvent) : void
      {
         if(this.§3!$§)
         {
            this.§3!$§.load(§%#9§.§`#<§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
         if(this.§8$"§)
         {
            this.§8$"§.reset();
            ++this.§%V§;
         }
      }
      
      protected function §["V§(param1:Event) : void
      {
         this.§!#W§(this.§3!$§.data);
         dispatchEvent(new Event(§8!Z§));
      }
      
      protected function §=!d§(param1:Event) : void
      {
         var _loc2_:§!"<§ = null;
         this.§!$2§();
         if(param1.type == §]e§.§5!;§)
         {
            _loc2_ = new ErrorPopup(§%"!§.ERROR,§^#o§.TOP,ErrorPopup.§?"V§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%"!§.ERROR,§^#o§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§3!$§ = null;
      }
      
      public function §@^§(param1:String) : Number
      {
         if(!this.isTournament())
         {
            return 0;
         }
         if(this.§0;§[param1] < new Date().time)
         {
            delete this.§0;§[param1];
            delete this.§;"g§[param1];
         }
         return Number(this.§0;§[param1]) || Number(0);
      }
      
      public function §04§(param1:String, param2:Boolean = true) : int
      {
         if(this.§@^§(param1) > 0 && param2)
         {
            if(this.§+G§[param1])
            {
               return this.§+G§[param1];
            }
            return 1;
         }
         return this.§+G§[param1];
      }
      
      public function §']§(param1:String, param2:int) : void
      {
         this.§+G§[param1] = param2;
      }
      
      public function §>$7§(param1:String) : void
      {
         if(this.§@^§(param1) > 0)
         {
            return;
         }
         if(this.§04§(param1) <= 0)
         {
            throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
         }
         --this.§+G§[param1];
      }
      
      private function isTournament() : Boolean
      {
         return this.mLevelManager.getCurrentEpisodeModel().isTournament;
      }
      
      public function §]O§(param1:String) : Boolean
      {
         if(!this.§0;§[param1] || this.§0;§[param1] < new Date().time)
         {
            delete this.§0;§[param1];
            delete this.§;"g§[param1];
         }
         return this.§;"g§[param1];
      }
      
      public function get §"$1§() : Boolean
      {
         return this.§3!$§ != null;
      }
      
      private function §-$"§(param1:Boolean) : void
      {
         if(param1 && !this.§;#C§)
         {
            this.§;#C§ = new ProcessingPopup(§%"!§.§4!P§,§^#o§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§;#C§);
         }
         else if(!param1 && this.§;#C§)
         {
            this.§;#C§.close();
            this.§;#C§ = null;
            dispatchEvent(new Event(§`!X§));
         }
      }
      
      private function §!$2§() : void
      {
         if(this.§8$"§)
         {
            this.§8$"§.stop();
            this.§8$"§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§-!^§);
            this.§8$"§ = null;
         }
         this.§-$"§(false);
      }
      
      public function §5?§(param1:§^#Q§) : void
      {
         this.mLevelManager = param1;
      }
      
      public function §-!-§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§+G§[§0x§])
         {
            for each(_loc2_ in this.§+G§[§0x§])
            {
               if(param1 == _loc2_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §5!@§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(this.§+G§[param1])
         {
            _loc2_ = this.§+G§[param1];
         }
         return _loc2_;
      }
   }
}
