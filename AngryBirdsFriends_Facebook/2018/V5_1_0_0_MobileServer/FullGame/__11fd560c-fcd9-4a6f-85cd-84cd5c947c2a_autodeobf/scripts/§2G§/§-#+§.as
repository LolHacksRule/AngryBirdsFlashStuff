package §2G§
{
   import §&$!§.§##a§;
   import §&$!§.§%#]§;
   import §&$!§.§%#k§;
   import §1!=§.§%#;§;
   import §1!=§.§^"U§;
   import §4"R§.§'#v§;
   import §4"R§.§4"c§;
   import §5"7§.§+$"§;
   import §;$3§.§8=§;
   import §?P§.AvatarCreatorPopup;
   import §?P§.ErrorPopup;
   import §?P§.ProcessingPopup;
   import §?P§.WarningPopup;
   import §?P§.§]"$§;
   import §@T§.§`!Y§;
   import §@V§.§1"V§;
   import §@V§.§;m§;
   import §@V§.§["0§;
   import §`7§.§ try§;
   import §`7§.§0t§;
   import §`7§.§`"x§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §-#+§ extends EventDispatcher
   {
      
      public static const §6+§:String = "InventoryLoaded";
      
      public static const §;"[§:String = "ProcessingPopupClosed";
      
      public static const §-!6§:String = "BoughtLevels";
      
      protected static var §!c§:§-#+§;
      
      private static const §=!8§:int = 300;
      
      private static const §1#b§:int = 2000;
      
      private static const §"v§:Array = ["2000-83","Test-PlayLevel"];
       
      
      private var §^$;§:Timer;
      
      private var §&!G§:int;
      
      private var §0#n§:ProcessingPopup;
      
      protected var §@#x§:Boolean = false;
      
      protected var §7#"§:§1"V§;
      
      protected var §6$!§:§0t§;
      
      protected var §4"^§:§0t§;
      
      protected var §;"z§:§0t§;
      
      protected var §7!X§:§%#]§;
      
      private var mLevelManager:§8=§;
      
      public function §-#+§()
      {
         var _loc1_:§##a§ = null;
         this.§6$!§ = new §0t§();
         this.§4"^§ = new §0t§();
         this.§;"z§ = new §0t§();
         super();
         if(§!c§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Can\'t create more than one instance of PowerupsInventory."));
         }
         for each(_loc1_ in §%#k§.§1"E§)
         {
            this.§6$!§[_loc1_.§5"g§] = 0;
         }
         §!c§ = this;
      }
      
      public static function get §6!§() : §-#+§
      {
         if(!§!c§)
         {
            §!c§ = new §-#+§();
         }
         return §!c§;
      }
      
      protected static function get dataModel() : §#"8§
      {
         return AngryBirdsBase.singleton.dataModel as §#"8§;
      }
      
      public function §<"k§(param1:Boolean = false) : void
      {
         if(this.§7#"§)
         {
            this.§7#"§.removeEventListener(Event.COMPLETE,this.§%u§);
            this.§7#"§.removeEventListener(Event.COMPLETE,this.§,!K§);
            this.§7#"§.removeEventListener(IOErrorEvent.IO_ERROR,this.§+!^§);
            this.§7#"§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+!^§);
            this.§7#"§.removeEventListener(§;m§.§!$5§,this.§+!^§);
            this.§7#"§ = null;
         }
         this.§7#"§ = new §1"V§();
         this.§7#"§.addEventListener(IOErrorEvent.IO_ERROR,this.§+!^§);
         this.§7#"§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§+!^§);
         this.§7#"§.addEventListener(§;m§.§!$5§,this.§+!^§);
         this.§7#"§.dataFormat = URLLoaderDataFormat.TEXT;
         if(param1)
         {
            if(!this.§^$;§)
            {
               this.§^$;§ = new Timer(§1#b§,1);
               this.§^$;§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§ "E§);
               this.§&!G§ = 0;
            }
            this.§7#"§.addEventListener(Event.COMPLETE,this.§,!K§);
            this.§^$;§.start();
            this.§5!?§(true);
         }
         else
         {
            this.§7#"§.addEventListener(Event.COMPLETE,this.§%u§);
            this.§7#"§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
      }
      
      public function get §0!,§() : §%#]§
      {
         return this.§7!X§;
      }
      
      protected function §`"E§(param1:Object) : void
      {
         this.§6$!§ = new §0t§();
         this.§4"^§ = new §0t§();
         this.§;"z§ = new §0t§();
         this.§+!F§(param1);
         this.§7#"§ = null;
         this.§5!?§(false);
      }
      
      private function §+!F§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         var _loc5_:§+$"§ = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§##a§ = null;
         var _loc11_:int = 0;
         var _loc12_:§'#v§ = null;
         var _loc4_:Array = [];
         if(!this.§7!X§)
         {
            this.§7!X§ = new §%#]§(param1.ownedBundles,param1.claimableBundles,param1.cbc);
         }
         else if(this.§7!X§ && param1.ownedBundles)
         {
            this.§7!X§.§;!P§(param1.ownedBundles);
         }
         else if(this.§7!X§ && param1.claimableBundles)
         {
            this.§7!X§.§>d§(param1.claimableBundles);
         }
         else if(this.§7!X§ && param1.cbc)
         {
            this.§7!X§.§?!v§(param1.cbc);
         }
         for each(_loc5_ in param3)
         {
            if(_loc5_)
            {
               _loc5_.itemName = _loc5_.itemType;
               if(!_loc5_.§ #5§)
               {
                  if(_loc5_.screen == AvatarCreatorPopup.ID)
                  {
                     _loc5_.§ #5§ = "Avatar";
                  }
                  else if(_loc5_.itemType == §"G§.§6!@§)
                  {
                     _loc5_.§ #5§ = §"G§.§6!@§;
                  }
                  else if(_loc5_.itemType == §%#k§.§6#%§)
                  {
                     _loc5_.§ #5§ = §%#k§.§6#%§;
                  }
                  else if(§4"c§.§2;§(_loc5_.itemType))
                  {
                     _loc5_.§ #5§ = "Slingshot";
                  }
                  else
                  {
                     _loc5_.§ #5§ = "Powerup";
                  }
               }
               _loc5_.§<0§ = !param1.hasBought;
               § try§.§!!t§().§ #D§(_loc5_.§<0§,_loc5_.itemType,_loc5_.amount,_loc5_.§2>§,_loc5_.screen,_loc5_.level,_loc5_.itemName,_loc5_.§ #5§,_loc5_.§7#?§,_loc5_.currency,_loc5_.§0"q§);
            }
         }
         for each(_loc6_ in param1.items)
         {
            if(_loc6_ is Array)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Inventory response object can\'t be Array."));
            }
            if(param1.itemsPrev)
            {
               _loc7_ = this.§=!B§(_loc6_.i,param1.itemsPrev);
            }
            if(_loc6_.i == §"G§.§6!@§)
            {
               if(_loc7_)
               {
                  dataModel.§""[§.§6!w§(_loc7_.q,true);
               }
               if((_loc11_ = dataModel.§""[§.§6!w§(_loc6_.q,param2)) != 0)
               {
                  _loc4_.push(new §7#y§(_loc11_,§"G§.§6!@§));
               }
               §`"x§.§'"[§(_loc6_.q,dataModel.§&!`§.§5#!§);
            }
            else if(_loc6_.i != §["n§.§+"F§)
            {
               if((_loc10_ = §%#k§.§62§(_loc6_.i)) && _loc6_.s)
               {
                  this.§4"^§[_loc10_.§5"g§] = Number(_loc6_.s);
                  this.§;"z§[_loc6_.i] = true;
                  this.§6$!§[_loc6_.i] = _loc6_.q;
                  _loc4_.push(new §7#y§(1,_loc6_.i));
               }
               else
               {
                  if(_loc12_ = §4"c§.§2;§(_loc6_.i))
                  {
                     _loc12_.§<b§ = true;
                  }
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.q;
                  }
                  else
                  {
                     _loc8_ = this.§6$!§[_loc6_.i];
                  }
                  _loc9_ = _loc6_.q - _loc8_;
                  this.§6$!§[_loc6_.i] = _loc6_.q;
                  if(_loc9_ != 0)
                  {
                     _loc4_.push(new §7#y§(_loc9_,_loc6_.i));
                  }
                  §`"x§.§5"V§(_loc6_.i,_loc6_.q);
               }
            }
         }
         if(param1.boughtLevels)
         {
            this.§6$!§[§-!6§] = param1.boughtLevels;
         }
         if(param1.items)
         {
            (AngryBirdsBase.singleton.dataModel as §#"8§).§&!`§.§5#!§ = param1.items.hasBought;
         }
         dispatchEvent(new §`!Y§(Event.CHANGE,param1.items));
         return _loc4_;
      }
      
      private function §=!B§(param1:String, param2:Object) : Object
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
      
      public function §,"0§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         if(param1 == null)
         {
            return [];
         }
         return this.§+!F§(param1,param2,param3);
      }
      
      protected function §,!K§(param1:Event) : void
      {
         var _loc2_:Array = this.§+!F§(this.§7#"§.data);
         if(!_loc2_ || _loc2_.length == 0)
         {
            if(this.§&!G§ < §=!8§)
            {
               this.§^$;§.start();
               this.§5!?§(true);
            }
            else
            {
               this.§2H§();
               this.§7#"§ = null;
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Can\'t update the inventory."));
            }
         }
         else
         {
            this.§2H§();
            this.§7#"§ = null;
         }
      }
      
      private function § "E§(param1:TimerEvent) : void
      {
         if(this.§7#"§)
         {
            this.§7#"§.load(§["0§.§ G§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
         if(this.§^$;§)
         {
            this.§^$;§.reset();
            ++this.§&!G§;
         }
      }
      
      protected function §%u§(param1:Event) : void
      {
         this.§`"E§(this.§7#"§.data);
         dispatchEvent(new Event(§6+§));
      }
      
      protected function §+!^§(param1:Event) : void
      {
         var _loc2_:§%#;§ = null;
         this.§2H§();
         if(param1.type == §;m§.§!$5§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§=!%§);
         }
         else
         {
            _loc2_ = new WarningPopup(§]"$§.ERROR,§^"U§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§7#"§ = null;
      }
      
      public function §+o§(param1:String) : Number
      {
         if(!this.isTournament())
         {
            return 0;
         }
         if(this.§4"^§[param1] < new Date().time)
         {
            delete this.§4"^§[param1];
            delete this.§;"z§[param1];
         }
         return Number(this.§4"^§[param1]) || Number(0);
      }
      
      public function §=b§(param1:String, param2:Boolean = true) : int
      {
         if(this.§+o§(param1) > 0 && param2)
         {
            if(this.§6$!§[param1])
            {
               return this.§6$!§[param1];
            }
            return 1;
         }
         return this.§6$!§[param1];
      }
      
      public function §&"v§(param1:String, param2:int) : void
      {
         this.§6$!§[param1] = param2;
      }
      
      public function §"t§(param1:String) : void
      {
         var _loc2_:Object = null;
         if(this.§+o§(param1) > 0)
         {
            _loc2_ = new Object();
            _loc2_.i = param1;
            dispatchEvent(new §`!Y§(Event.CHANGE,[_loc2_]));
            return;
         }
         if(this.§=b§(param1) <= 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§'#k§,"Can\'t use powerup " + param1 + ", user doesn\'t have any left."));
         }
         --this.§6$!§[param1];
      }
      
      private function isTournament() : Boolean
      {
         return this.mLevelManager.getCurrentEpisodeModel().isTournament;
      }
      
      public function §`!`§(param1:String) : Boolean
      {
         if(!this.§4"^§[param1] || this.§4"^§[param1] < new Date().time)
         {
            delete this.§4"^§[param1];
            delete this.§;"z§[param1];
         }
         return this.§;"z§[param1];
      }
      
      public function get §8R§() : Boolean
      {
         return this.§7#"§ != null;
      }
      
      private function §5!?§(param1:Boolean) : void
      {
         if(param1 && !this.§0#n§)
         {
            this.§0#n§ = new ProcessingPopup(§]"$§.§[#=§,§^"U§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§0#n§);
         }
         else if(!param1 && this.§0#n§)
         {
            this.§0#n§.close();
            this.§0#n§ = null;
            dispatchEvent(new Event(§;"[§));
         }
      }
      
      private function §2H§() : void
      {
         if(this.§^$;§)
         {
            this.§^$;§.stop();
            this.§^$;§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§ "E§);
            this.§^$;§ = null;
         }
         this.§5!?§(false);
      }
      
      public function §2! §(param1:§8=§) : void
      {
         this.mLevelManager = param1;
      }
      
      public function §5#o§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§6$!§[§-!6§])
         {
            for each(_loc2_ in this.§6$!§[§-!6§])
            {
               if(param1 == _loc2_)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      public function §8#%§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(this.§6$!§[param1])
         {
            _loc2_ = this.§6$!§[param1];
         }
         return _loc2_;
      }
   }
}
