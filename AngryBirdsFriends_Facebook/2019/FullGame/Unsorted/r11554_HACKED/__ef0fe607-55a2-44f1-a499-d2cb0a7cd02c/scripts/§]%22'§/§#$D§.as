package §]"'§
{
   import § O§.§6f§;
   import § O§.§7!S§;
   import §"$=§.§'![§;
   import §+#B§.§+$A§;
   import §+#B§.§4"[§;
   import §+#B§.§5"w§;
   import §-!"§.§7z§;
   import §-#R§.§0!w§;
   import §-#R§.§4"p§;
   import §-#R§.§>!;§;
   import §;$5§.§9§;
   import §;$5§.§@#G§;
   import §;$>§.§^#J§;
   import §>"Q§.§"!;§;
   import §>"Q§.§'!n§;
   import §>"Q§.§2"6§;
   import §?!N§.§%#§;
   import §?!N§.AvatarCreatorPopup;
   import §?!N§.ErrorPopup;
   import §?!N§.ProcessingPopup;
   import §?!N§.WarningPopup;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §#$D§ extends EventDispatcher
   {
      
      public static const §-"q§:String = "InventoryLoaded";
      
      public static const §-$6§:String = "ProcessingPopupClosed";
      
      public static const §6P§:String = "BoughtLevels";
      
      protected static var §#!5§:§#$D§;
      
      private static const §]"n§:int = 300;
      
      private static const §-!K§:int = 2000;
      
      private static const §[!V§:Array = ["2000-83","Test-PlayLevel"];
       
      
      private var §3"=§:Timer;
      
      private var §-#l§:int;
      
      private var §0#L§:ProcessingPopup;
      
      protected var §#Q§:Boolean = false;
      
      protected var §#w§:§'!n§;
      
      protected var §,#i§:§4"[§;
      
      protected var §["z§:§4"[§;
      
      protected var §#t§:§4"[§;
      
      protected var §4!w§:§>!;§;
      
      private var mLevelManager:§'![§;
      
      public function §#$D§()
      {
         var _loc1_:§4"p§ = null;
         this.§,#i§ = new §4"[§();
         this.§["z§ = new §4"[§();
         this.§#t§ = new §4"[§();
         super();
         if(§#!5§)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t create more than one instance of PowerupsInventory."));
         }
         for each(_loc1_ in §0!w§.§'#v§)
         {
            this.§,#i§[_loc1_.§]'§] = 0;
         }
         §#!5§ = this;
      }
      
      public static function get §?q§() : §#$D§
      {
         if(!§#!5§)
         {
            §#!5§ = new §#$D§();
         }
         return §#!5§;
      }
      
      protected static function get dataModel() : §@"%§
      {
         return AngryBirdsBase.singleton.dataModel as §@"%§;
      }
      
      public function §>!'§(param1:Boolean = false) : void
      {
         if(this.§#w§)
         {
            this.§#w§.removeEventListener(Event.COMPLETE,this.§`!#§);
            this.§#w§.removeEventListener(Event.COMPLETE,this.§7#"§);
            this.§#w§.removeEventListener(IOErrorEvent.IO_ERROR,this.§ !+§);
            this.§#w§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ !+§);
            this.§#w§.removeEventListener(§"!;§.§ #x§,this.§ !+§);
            this.§#w§ = null;
         }
         this.§#w§ = new §'!n§();
         this.§#w§.addEventListener(IOErrorEvent.IO_ERROR,this.§ !+§);
         this.§#w§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ !+§);
         this.§#w§.addEventListener(§"!;§.§ #x§,this.§ !+§);
         this.§#w§.dataFormat = URLLoaderDataFormat.TEXT;
         if(param1)
         {
            if(!this.§3"=§)
            {
               this.§3"=§ = new Timer(§-!K§,1);
               this.§3"=§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§'!§);
               this.§-#l§ = 0;
            }
            this.§#w§.addEventListener(Event.COMPLETE,this.§7#"§);
            this.§3"=§.start();
            this.§-$%§(true);
         }
         else
         {
            this.§#w§.addEventListener(Event.COMPLETE,this.§`!#§);
            this.§#w§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
      }
      
      public function get §;p§() : §>!;§
      {
         return this.§4!w§;
      }
      
      protected function §0$<§(param1:Object) : void
      {
         this.§,#i§ = new §4"[§();
         this.§["z§ = new §4"[§();
         this.§#t§ = new §4"[§();
         this.§'#j§(param1);
         this.§#w§ = null;
         this.§-$%§(false);
      }
      
      private function §'#j§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         var _loc5_:§7z§ = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§4"p§ = null;
         var _loc11_:int = 0;
         var _loc12_:§6f§ = null;
         var _loc4_:Array = [];
         if(!this.§4!w§)
         {
            this.§4!w§ = new §>!;§(param1.ownedBundles,param1.claimableBundles,param1.cbc);
         }
         else if(this.§4!w§ && param1.ownedBundles)
         {
            this.§4!w§.§#!d§(param1.ownedBundles);
         }
         else if(this.§4!w§ && param1.claimableBundles)
         {
            this.§4!w§.§^#I§(param1.claimableBundles);
         }
         else if(this.§4!w§ && param1.cbc)
         {
            this.§4!w§.§,"m§(param1.cbc);
         }
         for each(_loc5_ in param3)
         {
            if(_loc5_)
            {
               _loc5_.itemName = _loc5_.itemType;
               if(!_loc5_.§6"d§)
               {
                  if(_loc5_.screen == AvatarCreatorPopup.ID)
                  {
                     _loc5_.§6"d§ = "Avatar";
                  }
                  else if(_loc5_.itemType == §>I§.§ !C§)
                  {
                     _loc5_.§6"d§ = §>I§.§ !C§;
                  }
                  else if(_loc5_.itemType == §0!w§.§3#0§)
                  {
                     _loc5_.§6"d§ = §0!w§.§3#0§;
                  }
                  else if(§7!S§.§%$<§(_loc5_.itemType))
                  {
                     _loc5_.§6"d§ = "Slingshot";
                  }
                  else
                  {
                     _loc5_.§6"d§ = "Powerup";
                  }
               }
               _loc5_.§,!A§ = !param1.hasBought;
               §+$A§.§@"i§().§%!+§(_loc5_.§,!A§,_loc5_.itemType,_loc5_.amount,_loc5_.§+#;§,_loc5_.screen,_loc5_.level,_loc5_.itemName,_loc5_.§6"d§,_loc5_.§#!z§,_loc5_.currency,_loc5_.§-!G§);
            }
         }
         for each(_loc6_ in param1.items)
         {
            if(_loc6_ is Array)
            {
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Inventory response object can\'t be Array."));
            }
            if(param1.itemsPrev)
            {
               _loc7_ = this.§>#G§(_loc6_.i,param1.itemsPrev);
            }
            if(_loc6_.i == §>I§.§ !C§)
            {
               if(_loc7_)
               {
                  dataModel.§8!8§.§2#[§(_loc7_.q,true);
               }
               if((_loc11_ = dataModel.§8!8§.§2#[§(_loc6_.q,param2)) != 0)
               {
                  _loc4_.push(new §'"X§(_loc11_,§>I§.§ !C§));
               }
               §5"w§.§#"c§(_loc6_.q,dataModel.§=#e§.§=5§);
            }
            else if(_loc6_.i != §8"n§.§%!3§)
            {
               if((_loc10_ = §0!w§.§7$§(_loc6_.i)) && _loc6_.s)
               {
                  this.§["z§[_loc10_.§]'§] = Number(_loc6_.s);
                  this.§#t§[_loc6_.i] = true;
                  this.§,#i§[_loc6_.i] = _loc6_.q;
                  _loc4_.push(new §'"X§(1,_loc6_.i));
               }
               else
               {
                  if(_loc12_ = §7!S§.§%$<§(_loc6_.i))
                  {
                     _loc12_.§%!`§ = true;
                  }
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.q;
                  }
                  else
                  {
                     _loc8_ = this.§,#i§[_loc6_.i];
                  }
                  _loc9_ = _loc6_.q - _loc8_;
                  this.§,#i§[_loc6_.i] = _loc6_.q;
                  if(_loc9_ != 0)
                  {
                     _loc4_.push(new §'"X§(_loc9_,_loc6_.i));
                  }
                  §5"w§.§ !]§(_loc6_.i,_loc6_.q);
               }
            }
         }
         if(param1.items)
         {
            (AngryBirdsBase.singleton.dataModel as §@"%§).§=#e§.§=5§ = param1.items.hasBought;
         }
         dispatchEvent(new §^#J§(Event.CHANGE,param1.items));
         return _loc4_;
      }
      
      private function §>#G§(param1:String, param2:Object) : Object
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
      
      public function §["a§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         if(param1 == null)
         {
            return [];
         }
         return this.§'#j§(param1,param2,param3);
      }
      
      protected function §7#"§(param1:Event) : void
      {
         var _loc2_:Array = this.§'#j§(this.§#w§.data);
         if(!_loc2_ || _loc2_.length == 0)
         {
            if(this.§-#l§ < §]"n§)
            {
               this.§3"=§.start();
               this.§-$%§(true);
            }
            else
            {
               this.§1!z§();
               this.§#w§ = null;
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t update the inventory."));
            }
         }
         else
         {
            this.§1!z§();
            this.§#w§ = null;
         }
      }
      
      private function §'!§(param1:TimerEvent) : void
      {
         if(this.§#w§)
         {
            this.§#w§.load(§2"6§.§;z§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
         if(this.§3"=§)
         {
            this.§3"=§.reset();
            ++this.§-#l§;
         }
      }
      
      protected function §`!#§(param1:Event) : void
      {
         this.§0$<§(this.§#w§.data);
         dispatchEvent(new Event(§-"q§));
      }
      
      protected function § !+§(param1:Event) : void
      {
         var _loc2_:§@#G§ = null;
         this.§1!z§();
         if(param1.type == §"!;§.§ #x§)
         {
            _loc2_ = new ErrorPopup(ErrorPopup.§]"d§);
         }
         else
         {
            _loc2_ = new WarningPopup(§%#§.ERROR,§9#5§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§#w§ = null;
      }
      
      public function §if§(param1:String) : Number
      {
         if(!this.isTournament())
         {
            return 0;
         }
         if(this.§["z§[param1] < new Date().time)
         {
            delete this.§["z§[param1];
            delete this.§#t§[param1];
         }
         return Number(this.§["z§[param1]) || Number(0);
      }
      
      public function §<"M§(param1:String, param2:Boolean = true) : int
      {
         if(param1 != "MightyEagle")
         {
            return 99;
         }
         if(this.§if§(param1) > 0 && param2)
         {
            if(this.§,#i§[param1])
            {
               return this.§,#i§[param1];
            }
            return 1;
         }
         return this.§,#i§[param1];
      }
      
      public function §+""§(param1:String, param2:int) : void
      {
         this.§,#i§[param1] = param2;
      }
      
      public function §?z§(param1:String) : void
      {
         if(param1 != "MightyEagle")
         {
            return;
         }
         var _loc2_:Object = null;
         if(this.§if§(param1) > 0)
         {
            _loc2_ = new Object();
            _loc2_.i = param1;
            dispatchEvent(new §^#J§(Event.CHANGE,[_loc2_]));
            return;
         }
         if(this.§<"M§(param1) <= 0)
         {
            AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(ErrorPopup.§ $<§,"Can\'t use powerup " + param1 + ", user doesn\'t have any left."));
         }
         --this.§,#i§[param1];
      }
      
      private function isTournament() : Boolean
      {
         return this.mLevelManager.getCurrentEpisodeModel().isTournament;
      }
      
      public function § #,§(param1:String) : Boolean
      {
         if(!this.§["z§[param1] || this.§["z§[param1] < new Date().time)
         {
            delete this.§["z§[param1];
            delete this.§#t§[param1];
         }
         return this.§#t§[param1];
      }
      
      public function get §0"§() : Boolean
      {
         return this.§#w§ != null;
      }
      
      private function §-$%§(param1:Boolean) : void
      {
         if(param1 && !this.§0#L§)
         {
            this.§0#L§ = new ProcessingPopup(§%#§.§3t§,§9#5§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§0#L§);
         }
         else if(!param1 && this.§0#L§)
         {
            this.§0#L§.close();
            this.§0#L§ = null;
            dispatchEvent(new Event(§-$6§));
         }
      }
      
      private function §1!z§() : void
      {
         if(this.§3"=§)
         {
            this.§3"=§.stop();
            this.§3"=§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§'!§);
            this.§3"=§ = null;
         }
         this.§-$%§(false);
      }
      
      public function §'!a§(param1:§'![§) : void
      {
         this.mLevelManager = param1;
      }
      
      public function §7!N§(param1:String) : int
      {
         var _loc2_:int = 0;
         if(this.§,#i§[param1])
         {
            _loc2_ = this.§,#i§[param1];
         }
         return _loc2_;
      }
   }
}
