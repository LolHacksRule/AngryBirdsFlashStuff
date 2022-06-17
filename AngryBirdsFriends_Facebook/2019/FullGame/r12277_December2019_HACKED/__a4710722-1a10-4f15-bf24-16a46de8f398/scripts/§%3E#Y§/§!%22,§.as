package §>#Y§
{
   import § h§.§-!S§;
   import § h§.AvatarCreatorPopup;
   import § h§.ErrorPopup;
   import § h§.ProcessingPopup;
   import § h§.WarningPopup;
   import §-"e§.§[9§;
   import §-"e§.§^#i§;
   import §2E§.§&#a§;
   import §2E§.§'@§;
   import §2E§.§]!P§;
   import §7!3§.§-!>§;
   import §7"1§.§!"`§;
   import §7"1§.§5"f§;
   import §7"1§.§;" §;
   import §9!6§.§## §;
   import §9!6§.§?!y§;
   import §<"I§.§ !,§;
   import §<"I§.§1!^§;
   import §<"I§.§<$B§;
   import §?o§.§4#?§;
   import §@!R§.§'O§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §!",§ extends EventDispatcher
   {
      
      public static const §#$&§:String = "InventoryLoaded";
      
      public static const §6p§:String = "ProcessingPopupClosed";
      
      public static const §%#v§:String = "BoughtLevels";
      
      protected static var §!#m§:§!",§;
      
      private static const §2"-§:int = 300;
      
      private static const §"#!§:int = 2000;
      
      private static const §%"H§:Array = ["2000-83","Test-PlayLevel"];
       
      
      private var §2@§:Timer;
      
      private var §3$1§:int;
      
      private var §2d§:ProcessingPopup;
      
      protected var §@"h§:Boolean = false;
      
      protected var §>#N§:§5"f§;
      
      protected var §#z§:§&#a§;
      
      protected var §`!Z§:§&#a§;
      
      protected var §]!V§:§&#a§;
      
      protected var §;!!§:§ !,§;
      
      private var mLevelManager:§4#?§;
      
      public function §!",§()
      {
         var _loc1_:§1!^§ = null;
         this.§#z§ = new §&#a§();
         this.§`!Z§ = new §&#a§();
         this.§]!V§ = new §&#a§();
         super();
         if(§!#m§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t create more than one instance of PowerupsInventory."));
         }
         for each(_loc1_ in §<$B§.§6#P§)
         {
            this.§#z§[_loc1_.§=#@§] = 0;
         }
         §!#m§ = this;
      }
      
      public static function get §3"1§() : §!",§
      {
         if(!§!#m§)
         {
            §!#m§ = new §!",§();
         }
         return §!#m§;
      }
      
      protected static function get dataModel() : §,#b§
      {
         return AngryBirdsBase.singleton.dataModel as §,#b§;
      }
      
      public function §,"&§(param1:Boolean = false) : void
      {
         if(this.§>#N§)
         {
            this.§>#N§.removeEventListener(Event.COMPLETE,this.§!#x§);
            this.§>#N§.removeEventListener(Event.COMPLETE,this.§ "1§);
            this.§>#N§.removeEventListener(IOErrorEvent.IO_ERROR,this.§'$B§);
            this.§>#N§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'$B§);
            this.§>#N§.removeEventListener(§;" §.§`S§,this.§'$B§);
            this.§>#N§ = null;
         }
         this.§>#N§ = new §5"f§();
         this.§>#N§.addEventListener(IOErrorEvent.IO_ERROR,this.§'$B§);
         this.§>#N§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§'$B§);
         this.§>#N§.addEventListener(§;" §.§`S§,this.§'$B§);
         this.§>#N§.dataFormat = URLLoaderDataFormat.TEXT;
         if(param1)
         {
            if(!this.§2@§)
            {
               this.§2@§ = new Timer(§"#!§,1);
               this.§2@§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§6e§);
               this.§3$1§ = 0;
            }
            this.§>#N§.addEventListener(Event.COMPLETE,this.§ "1§);
            this.§2@§.start();
            this.§#$D§(true);
         }
         else
         {
            this.§>#N§.addEventListener(Event.COMPLETE,this.§!#x§);
            this.§>#N§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
      }
      
      public function get §%$7§() : § !,§
      {
         return this.§;!!§;
      }
      
      protected function §7!&§(param1:Object) : void
      {
         this.§#z§ = new §&#a§();
         this.§`!Z§ = new §&#a§();
         this.§]!V§ = new §&#a§();
         this.§%"i§(param1);
         this.§>#N§ = null;
         this.§#$D§(false);
      }
      
      private function §%"i§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         var _loc5_:§-!>§ = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§1!^§ = null;
         var _loc11_:int = 0;
         var _loc12_:§^#i§ = null;
         var _loc4_:Array = [];
         if(!this.§;!!§)
         {
            this.§;!!§ = new § !,§(param1.ownedBundles,param1.claimableBundles,param1.cbc);
         }
         else if(this.§;!!§ && param1.ownedBundles)
         {
            this.§;!!§.§^?§(param1.ownedBundles);
         }
         else if(this.§;!!§ && param1.claimableBundles)
         {
            this.§;!!§.§6$9§(param1.claimableBundles);
         }
         else if(this.§;!!§ && param1.cbc)
         {
            this.§;!!§.§3#]§(param1.cbc);
         }
         for each(_loc5_ in param3)
         {
            if(_loc5_)
            {
               _loc5_.itemName = _loc5_.itemType;
               if(!_loc5_.§>#$§)
               {
                  if(_loc5_.screen == AvatarCreatorPopup.ID)
                  {
                     _loc5_.§>#$§ = "Avatar";
                  }
                  else if(_loc5_.itemType == §2$8§.§,"p§)
                  {
                     _loc5_.§>#$§ = §2$8§.§,"p§;
                  }
                  else if(_loc5_.itemType == §<$B§.§3M§)
                  {
                     _loc5_.§>#$§ = §<$B§.§3M§;
                  }
                  else if(§[9§.§%"%§(_loc5_.itemType))
                  {
                     _loc5_.§>#$§ = "Slingshot";
                  }
                  else
                  {
                     _loc5_.§>#$§ = "Powerup";
                  }
               }
               _loc5_.§!#f§ = !param1.hasBought;
               §]!P§.§1!7§().§=#3§(_loc5_.§!#f§,_loc5_.itemType,_loc5_.amount,_loc5_.§'#w§,_loc5_.screen,_loc5_.level,_loc5_.itemName,_loc5_.§>#$§,_loc5_.§7$&§,_loc5_.currency,_loc5_.§;"u§);
            }
         }
         for each(_loc6_ in param1.items)
         {
            if(_loc6_ is Array)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Inventory response object can\'t be Array."));
            }
            if(param1.itemsPrev)
            {
               _loc7_ = this.§%#+§(_loc6_.i,param1.itemsPrev);
            }
            if(_loc6_.i == §2$8§.§,"p§)
            {
               if(_loc7_)
               {
                  dataModel.§%$;§.§finally§(_loc7_.q,true);
               }
               if((_loc11_ = dataModel.§%$;§.§finally§(_loc6_.q,param2)) != 0)
               {
                  _loc4_.push(new §3"H§(_loc11_,§2$8§.§,"p§));
               }
               §'@§.§3#O§(_loc6_.q,dataModel.§0&§.§ $6§);
            }
            else if(_loc6_.i != §7#H§.§?"7§)
            {
               if((_loc10_ = §<$B§.§-"N§(_loc6_.i)) && _loc6_.s)
               {
                  this.§`!Z§[_loc10_.§=#@§] = Number(_loc6_.s);
                  this.§]!V§[_loc6_.i] = true;
                  this.§#z§[_loc6_.i] = _loc6_.q;
                  _loc4_.push(new §3"H§(1,_loc6_.i));
               }
               else
               {
                  if(_loc12_ = §[9§.§%"%§(_loc6_.i))
                  {
                     _loc12_.§3$<§ = true;
                  }
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.q;
                  }
                  else
                  {
                     _loc8_ = this.§#z§[_loc6_.i];
                  }
                  _loc9_ = _loc6_.q - _loc8_;
                  this.§#z§[_loc6_.i] = _loc6_.q;
                  if(_loc9_ != 0)
                  {
                     _loc4_.push(new §3"H§(_loc9_,_loc6_.i));
                  }
                  §'@§.§ y§(_loc6_.i,_loc6_.q);
               }
            }
         }
         if(param1.items)
         {
            (AngryBirdsBase.singleton.dataModel as §,#b§).§0&§.§ $6§ = param1.items.hasBought;
         }
         dispatchEvent(new §'O§(Event.CHANGE,param1.items));
         return _loc4_;
      }
      
      private function §%#+§(param1:String, param2:Object) : Object
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
      
      public function §"#t§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         if(param1 == null)
         {
            return [];
         }
         return this.§%"i§(param1,param2,param3);
      }
      
      protected function § "1§(param1:Event) : void
      {
         var _loc2_:Array = this.§%"i§(this.§>#N§.data);
         if(!_loc2_ || _loc2_.length == 0)
         {
            if(this.§3$1§ < §2"-§)
            {
               this.§2@§.start();
               this.§#$D§(true);
            }
            else
            {
               this.§0#§();
               this.§>#N§ = null;
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t update the inventory."));
            }
         }
         else
         {
            this.§0#§();
            this.§>#N§ = null;
         }
      }
      
      private function §6e§(param1:TimerEvent) : void
      {
         if(this.§>#N§)
         {
            this.§>#N§.load(§!"`§.§@!A§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
         if(this.§2@§)
         {
            this.§2@§.reset();
            ++this.§3$1§;
         }
      }
      
      protected function §!#x§(param1:Event) : void
      {
         this.§7!&§(this.§>#N§.data);
         dispatchEvent(new Event(§#$&§));
      }
      
      protected function §'$B§(param1:Event) : void
      {
         var _loc2_:§?!y§ = null;
         this.§0#§();
         if(param1.type == §;" §.§`S§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§&_§);
         }
         else
         {
            _loc2_ = new WarningPopup(§-!S§.ERROR,§## §.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§>#N§ = null;
      }
      
      public function §4#<§(param1:String) : Number
      {
         if(!this.isTournament())
         {
            return 0;
         }
         if(this.§`!Z§[param1] < new Date().time)
         {
            delete this.§`!Z§[param1];
            delete this.§]!V§[param1];
         }
         return Number(this.§`!Z§[param1]) || Number(0);
      }
      
      public function §2![§(param1:String, param2:Boolean = true) : int
      {
         if(param1 != "MightyEagle")
         {
            return 99;
         }
         if(this.§4#<§(param1) > 0 && param2)
         {
            if(this.§#z§[param1])
            {
               return this.§#z§[param1];
            }
            return 1;
         }
         return this.§#z§[param1];
      }
      
      public function §;R§(param1:String, param2:int) : void
      {
         this.§#z§[param1] = param2;
      }
      
      public function §,"9§(param1:String) : void
      {
         if(param1 != "MightyEagle")
         {
            return;
         }
         var _loc2_:Object = null;
         if(this.§4#<§(param1) > 0)
         {
            _loc2_ = new Object();
            _loc2_.i = param1;
            dispatchEvent(new §'O§(Event.CHANGE,[_loc2_]));
            return;
         }
         if(this.§2![§(param1) <= 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ !I§,"Can\'t use powerup " + param1 + ", user doesn\'t have any left."));
         }
         --this.§#z§[param1];
      }
      
      private function isTournament() : Boolean
      {
         return this.mLevelManager.getCurrentEpisodeModel().isTournament;
      }
      
      public function §=#P§(param1:String) : Boolean
      {
         if(!this.§`!Z§[param1] || this.§`!Z§[param1] < new Date().time)
         {
            delete this.§`!Z§[param1];
            delete this.§]!V§[param1];
         }
         return this.§]!V§[param1];
      }
      
      public function get §#!?§() : Boolean
      {
         return this.§>#N§ != null;
      }
      
      private function §#$D§(param1:Boolean) : void
      {
         if(param1 && !this.§2d§)
         {
            this.§2d§ = new ProcessingPopup(§-!S§.§ !^§,§## §.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§2d§);
         }
         else if(!param1 && this.§2d§)
         {
            this.§2d§.close();
            this.§2d§ = null;
            dispatchEvent(new Event(§6p§));
         }
      }
      
      private function §0#§() : void
      {
         if(this.§2@§)
         {
            this.§2@§.stop();
            this.§2@§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§6e§);
            this.§2@§ = null;
         }
         this.§#$D§(false);
      }
      
      public function §2"O§(param1:§4#?§) : void
      {
         this.mLevelManager = param1;
      }
      
      public function §@Q§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(this.§#z§[param1])
         {
            _loc2_ = this.§#z§[param1];
         }
         return _loc2_;
      }
   }
}
