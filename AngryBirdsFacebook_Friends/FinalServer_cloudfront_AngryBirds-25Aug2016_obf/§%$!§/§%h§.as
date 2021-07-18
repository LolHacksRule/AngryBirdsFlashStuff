package §%$!§
{
   import §#v§.§#!?§;
   import §'"-§.§'§;
   import §'"-§.§;!T§;
   import §'"-§.§`j§;
   import §+!d§.§&b§;
   import §+!d§.§3§;
   import §3!B§.§9##§;
   import §>!#§.§'"R§;
   import §>!#§.§,"W§;
   import §>!#§.§-#A§;
   import §?"R§.AvatarCreatorPopup;
   import §?"R§.ErrorPopup;
   import §?"R§.ProcessingPopup;
   import §?"R§.WarningPopup;
   import §?"R§.§[W§;
   import §]$9§.§5$!§;
   import §]$9§.§>#J§;
   import §]$9§.§>J§;
   import §^!,§.§8!H§;
   import §^!,§.§<d§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §%h§ extends EventDispatcher
   {
      
      public static const §>#?§:String = "InventoryLoaded";
      
      public static const §!#"§:String = "ProcessingPopupClosed";
      
      public static const §^J§:String = "BoughtLevels";
      
      protected static var §,!m§:§%h§;
      
      private static const §6$+§:int = 300;
      
      private static const §'"c§:int = 2000;
      
      private static const §6"i§:Array = ["2000-83","Test-PlayLevel"];
       
      
      private var §%W§:Timer;
      
      private var §4r§:int;
      
      private var §="x§:ProcessingPopup;
      
      protected var §1!"§:Boolean = false;
      
      protected var §5!J§:§5$!§;
      
      protected var §5&§:§'"R§;
      
      protected var §+c§:§'"R§;
      
      protected var §!"S§:§'"R§;
      
      protected var §+"3§:§;!T§;
      
      private var mLevelManager:§#!?§;
      
      public function §%h§()
      {
         var _loc1_:§'#3§ = null;
         this.§5&§ = new §'"R§();
         this.§+c§ = new §'"R§();
         this.§!"S§ = new §'"R§();
         super();
         if(§,!m§)
         {
            throw new Error("Only one instance of PowerupsInventory should exist at a time.");
         }
         for each(_loc1_ in §`j§.§1"f§)
         {
            this.§5&§[_loc1_.§"!E§] = 0;
         }
         §,!m§ = this;
      }
      
      public static function get §3!]§() : §%h§
      {
         if(!§,!m§)
         {
            §,!m§ = new §%h§();
         }
         return §,!m§;
      }
      
      protected static function get dataModel() : §+3§
      {
         return AngryBirdsBase.singleton.dataModel as §+3§;
      }
      
      public function §=L§(param1:Boolean = false) : void
      {
         if(this.§5!J§)
         {
            this.§5!J§.removeEventListener(Event.COMPLETE,this.§2n§);
            this.§5!J§.removeEventListener(Event.COMPLETE,this.§,!k§);
            this.§5!J§.removeEventListener(IOErrorEvent.IO_ERROR,this.§6!]§);
            this.§5!J§.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6!]§);
            this.§5!J§.removeEventListener(§>#J§.§-$%§,this.§6!]§);
            this.§5!J§ = null;
         }
         this.§5!J§ = new §5$!§();
         this.§5!J§.addEventListener(IOErrorEvent.IO_ERROR,this.§6!]§);
         this.§5!J§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§6!]§);
         this.§5!J§.addEventListener(§>#J§.§-$%§,this.§6!]§);
         this.§5!J§.dataFormat = URLLoaderDataFormat.TEXT;
         if(param1)
         {
            if(!this.§%W§)
            {
               this.§%W§ = new Timer(§'"c§,1);
               this.§%W§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§>S§);
               this.§4r§ = 0;
            }
            this.§5!J§.addEventListener(Event.COMPLETE,this.§,!k§);
            this.§%W§.start();
            this.§1§(true);
         }
         else
         {
            this.§5!J§.addEventListener(Event.COMPLETE,this.§2n§);
            this.§5!J§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
      }
      
      public function get §@!3§() : §;!T§
      {
         return this.§+"3§;
      }
      
      protected function §[$7§(param1:Object) : void
      {
         this.§5&§ = new §'"R§();
         this.§+c§ = new §'"R§();
         this.§!"S§ = new §'"R§();
         this.§7"q§(param1);
         this.§5!J§ = null;
         this.§1§(false);
      }
      
      private function §7"q§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         var _loc5_:§9##§ = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:§'#3§ = null;
         var _loc11_:int = 0;
         var _loc12_:§&b§ = null;
         var _loc4_:Array = [];
         if(!this.§+"3§)
         {
            this.§+"3§ = new §;!T§(param1.ownedBundles,param1.claimableBundles,param1.cbc);
         }
         else if(this.§+"3§ && param1.ownedBundles)
         {
            this.§+"3§.§'!p§(param1.ownedBundles);
         }
         else if(this.§+"3§ && param1.claimableBundles)
         {
            this.§+"3§.§&R§(param1.claimableBundles);
         }
         else if(this.§+"3§ && param1.cbc)
         {
            this.§+"3§.§ else§(param1.cbc);
         }
         for each(_loc5_ in param3)
         {
            if(_loc5_)
            {
               _loc5_.itemName = _loc5_.itemType;
               if(!_loc5_.iapType)
               {
                  if(_loc5_.§;"O§ == AvatarCreatorPopup.ID)
                  {
                     _loc5_.iapType = "Avatar";
                  }
                  else if(_loc5_.itemType == §=]§.§;Q§)
                  {
                     _loc5_.iapType = §=]§.§;Q§;
                  }
                  else if(_loc5_.itemType == §`j§.§8!3§)
                  {
                     _loc5_.iapType = §`j§.§8!3§;
                  }
                  else if(§3#8§.§6#o§(_loc5_.itemType))
                  {
                     _loc5_.iapType = "Slingshot";
                  }
                  else
                  {
                     _loc5_.iapType = "Powerup";
                  }
               }
               _loc5_.§[B§ = !param1.hasBought;
               §-#A§.§6$2§().§]!H§(_loc5_.§[B§,_loc5_.itemType,_loc5_.amount,_loc5_.gainType,_loc5_.§;"O§,_loc5_.level,_loc5_.itemName,_loc5_.iapType,_loc5_.§#!v§,_loc5_.currency,_loc5_.§'$§);
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
               _loc7_ = this.§[M§(_loc6_.i,param1.itemsPrev);
            }
            if(_loc6_.i == §=]§.§;Q§)
            {
               if(_loc7_)
               {
                  dataModel.§<$&§.§1u§(_loc7_.q,true);
               }
               if((_loc11_ = dataModel.§<$&§.§1u§(_loc6_.q,param2)) != 0)
               {
                  _loc4_.push(new §`!g§(_loc11_,§=]§.§;Q§));
                  if(_loc11_ < 0)
                  {
                     if(param3 && param3.length > 0)
                     {
                        §-#A§.§6$2§().§-G§(Math.abs(_loc11_),param3[0].gainType,param3[0].iapType,param3[0].itemType,param3[0].amount);
                     }
                  }
               }
               §,"W§.§2#w§(_loc6_.q,dataModel.§6!N§.§`"m§);
            }
            else if(_loc6_.i != §<>§.§<!w§)
            {
               if((_loc10_ = §`j§.§6p§(_loc6_.i)) && _loc6_.s)
               {
                  this.§+c§[_loc10_.§"!E§] = Number(_loc6_.s);
                  this.§!"S§[_loc6_.i] = true;
                  this.§5&§[_loc6_.i] = _loc6_.q;
                  _loc4_.push(new §`!g§(1,_loc6_.i));
               }
               else
               {
                  if(_loc12_ = §3#8§.§6#o§(_loc6_.i))
                  {
                     _loc12_.§?C§ = true;
                  }
                  if(_loc7_)
                  {
                     _loc8_ = _loc7_.q;
                  }
                  else
                  {
                     _loc8_ = this.§5&§[_loc6_.i];
                  }
                  _loc9_ = _loc6_.q - _loc8_;
                  this.§5&§[_loc6_.i] = _loc6_.q;
                  if(_loc9_ != 0)
                  {
                     _loc4_.push(new §`!g§(_loc9_,_loc6_.i));
                  }
                  §,"W§.§%"B§(_loc6_.i,_loc6_.q);
               }
            }
         }
         if(param1.boughtLevels)
         {
            this.§5&§[§^J§] = param1.boughtLevels;
         }
         if(param1.items)
         {
            (AngryBirdsBase.singleton.dataModel as §+3§).§6!N§.§`"m§ = param1.items.hasBought;
         }
         dispatchEvent(new Event(Event.CHANGE));
         return _loc4_;
      }
      
      private function §[M§(param1:String, param2:Object) : Object
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
      
      public function §1!0§(param1:Object, param2:Boolean = false, param3:Array = null) : Array
      {
         if(param1 == null)
         {
            return [];
         }
         return this.§7"q§(param1,param2,param3);
      }
      
      protected function §,!k§(param1:Event) : void
      {
         var _loc2_:Array = this.§7"q§(this.§5!J§.data);
         if(!_loc2_ || _loc2_.length == 0)
         {
            if(this.§4r§ < §6$+§)
            {
               this.§%W§.start();
               this.§1§(true);
            }
            else
            {
               this.§1$'§();
               this.§5!J§ = null;
               AngryBirdsBase.singleton.popupManager.openPopup(new ErrorPopup(§[W§.ERROR,§<d§.TOP,ErrorPopup.§^#x§));
            }
         }
         else
         {
            this.§1$'§();
            this.§5!J§ = null;
         }
      }
      
      private function §>S§(param1:TimerEvent) : void
      {
         if(this.§5!J§)
         {
            this.§5!J§.load(§>J§.§'[§(AngryBirdsBase.SERVER_ROOT + "/getitems"));
         }
         if(this.§%W§)
         {
            this.§%W§.reset();
            ++this.§4r§;
         }
      }
      
      protected function §2n§(param1:Event) : void
      {
         this.§[$7§(this.§5!J§.data);
         dispatchEvent(new Event(§>#?§));
      }
      
      protected function §6!]§(param1:Event) : void
      {
         var _loc2_:§8!H§ = null;
         this.§1$'§();
         if(param1.type == §>#J§.§-$%§)
         {
            _loc2_ = new ErrorPopup(§[W§.ERROR,§<d§.TOP,ErrorPopup.§`"4§);
         }
         else
         {
            _loc2_ = new WarningPopup(§[W§.ERROR,§<d§.TOP);
         }
         AngryBirdsBase.singleton.popupManager.openPopup(_loc2_);
         this.§5!J§ = null;
      }
      
      public function §"#k§(param1:String) : Number
      {
         if(this.§+c§[param1] < new Date().time)
         {
            delete this.§+c§[param1];
            delete this.§!"S§[param1];
         }
         return Number(this.§+c§[param1]) || Number(0);
      }
      
      public function §7#S§(param1:String, param2:Boolean = true) : int
      {
         if(param1 != "MightyEagle")
         {
            return 99;
         }
         if(this.§"#k§(param1) > 0 && param2)
         {
            if(this.§5&§[param1])
            {
               return this.§5&§[param1];
            }
            return 1;
         }
         return this.§5&§[param1];
      }
      
      public function §@#c§(param1:String, param2:int) : void
      {
         this.§5&§[param1] = param2;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function §?!r§(param1:String) : void
      {
         if(param1 != "MightyEagle")
         {
            return;
         }
         if(this.§7#S§(param1) <= 0)
         {
            throw new Error("Can\'t user powerup " + param1 + ", user doesn\'t have any left.");
         }
         if(this.§"#k§(param1) <= 0 || !this.isTournament())
         {
            --this.§5&§[param1];
            dispatchEvent(new Event(Event.CHANGE));
         }
      }
      
      private function isTournament() : Boolean
      {
         return this.mLevelManager.getCurrentEpisodeModel().isTournament;
      }
      
      public function §-!_§(param1:String) : Boolean
      {
         if(!this.§+c§[param1] || this.§+c§[param1] < new Date().time)
         {
            delete this.§+c§[param1];
            delete this.§!"S§[param1];
         }
         return this.§!"S§[param1];
      }
      
      public function get §-#!§() : Boolean
      {
         return this.§5!J§ != null;
      }
      
      private function §1§(param1:Boolean) : void
      {
         if(param1 && !this.§="x§)
         {
            this.§="x§ = new ProcessingPopup(§[W§.§5Z§,§<d§.DEFAULT);
            AngryBirdsBase.singleton.popupManager.openPopup(this.§="x§);
         }
         else if(!param1 && this.§="x§)
         {
            this.§="x§.close();
            this.§="x§ = null;
            dispatchEvent(new Event(§!#"§));
         }
      }
      
      private function §1$'§() : void
      {
         if(this.§%W§)
         {
            this.§%W§.stop();
            this.§%W§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§>S§);
            this.§%W§ = null;
         }
         this.§1§(false);
      }
      
      public function §#$§(param1:§#!?§) : void
      {
         this.mLevelManager = param1;
      }
      
      public function §"!A§(param1:String) : Boolean
      {
         var _loc2_:String = null;
         if(this.§5&§[§^J§])
         {
            for each(_loc2_ in this.§5&§[§^J§])
            {
               if(param1 == _loc2_)
               {
                  return true;
               }
            }
         }
         return false;
      }
   }
}
