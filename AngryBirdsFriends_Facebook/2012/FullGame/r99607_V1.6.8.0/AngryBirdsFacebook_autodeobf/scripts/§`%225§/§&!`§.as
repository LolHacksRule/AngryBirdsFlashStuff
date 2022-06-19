package §`"5§
{
   import §+"§.§'!0§;
   import §+I§.§`!o§;
   import §,"-§.§2!P§;
   import §,b§.§4H§;
   import §0!?§.§1!%§;
   import §1"2§.§,!]§;
   import §7N§.§43§;
   import §7N§.Popup;
   import §7N§.StatePopupManager;
   import §7N§.§]@§;
   import §9"%§.§"!n§;
   import §9"%§.§,!S§;
   import §9"%§.§4!J§;
   import §<!<§.§%!#§;
   import §<!<§.§^!I§;
   import §<"1§.§,U§;
   import §]!F§.§"!j§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §&!`§ extends Popup
   {
      
      private static var §,,§:Class = §[<§;
       
      
      private var §<q§:StatePopupManager;
      
      private var §+%§:String;
      
      private var §`D§:Array;
      
      private var §1y§:Boolean = false;
      
      private var §8"@§:Boolean = false;
      
      private var §set §:Boolean = false;
      
      private var §]p§:Timer;
      
      private var §?k§:String;
      
      private var §3!c§:int;
      
      private var §3"<§:Boolean = false;
      
      public function §&!`§(param1:§"!j§, param2:StatePopupManager, param3:Object)
      {
         this.§<q§ = param2;
         super(§1!%§.§8!?§(§,,§),param1);
         param1.getItemByName("Container_Popup").setVisibility(true);
         this.§<q§.addEventListener(§4H§.§%!g§,this.onUiInteraction);
         if(param3 == null)
         {
            getItemByName("Container_BuyStuff").visible = false;
            getItemByName("AngryBirdLoader").visible = true;
            if(§?Q§.§7""§ && !§?Q§.§["!§)
            {
               §?Q§.§["!§ = new §,!S§();
               §?Q§.§["!§.addEventListener(Event.COMPLETE,this.§,&§);
               §?Q§.§["!§.addEventListener(IOErrorEvent.IO_ERROR,this.§!r§);
               §?Q§.§["!§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§!r§);
               §?Q§.§["!§.addEventListener(§"!n§.§"+§,this.§!r§);
               §?Q§.§["!§.dataFormat = URLLoaderDataFormat.TEXT;
               §?Q§.§["!§.load(§4!J§.§3j§(AngryBirdsFP11.§7!!§ + "/shoplisting"));
            }
         }
         else
         {
            this.§ ]§(param1,param3);
         }
         this.§]p§ = new Timer(2000,1);
      }
      
      protected function §!r§(param1:Event) : void
      {
         if(param1.type == §"!n§.§"+§)
         {
            §43§.§ "6§(§]@§.§76§);
         }
         else
         {
            §43§.§?!S§();
         }
      }
      
      private function §,&§(param1:Event) : void
      {
         var dataObject:Object = null;
         var dataLoader:§,!S§ = null;
         var e:Event = param1;
         try
         {
            dataLoader = e.currentTarget as §,!S§;
            dataObject = JSON.parse(dataLoader.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + dataLoader.data,§^!I§.§50§);
         }
         §?Q§.§+!&§ = dataObject.powerups;
         §<!R§.§+!C§ = dataObject.avatarParts;
         §?!`§.§<"2§ = dataObject.levels;
         if(isOpen)
         {
            this.§>!&§();
         }
      }
      
      private function §>!&§(param1:Object = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         §0!'§.getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            this.§ ]§(§0!'§,param1);
         }
         else
         {
            for each(_loc2_ in §?Q§.§+!&§)
            {
               _loc3_ = §?Q§.§7""§;
               if(_loc2_.id == _loc3_)
               {
                  this.§ ]§(§0!'§,_loc2_);
               }
            }
         }
         §?Q§.§["!§ = null;
      }
      
      private function § ]§(param1:§"!j§, param2:Object) : void
      {
         var _loc3_:String = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         getItemByName("Container_BuyStuff").visible = true;
         getItemByName("AngryBirdLoader").visible = false;
         this.§+%§ = param2.id;
         this.§`D§ = param2.prices;
         §%!#§.§;"!§(this.§+%§);
         getItemByName("Container_OfEach").visible = false;
         getItemByName("Container_XOfEach").visible = true;
         getItemByName("MovieClip_BuyItemAsset1").visible = true;
         getItemByName("MovieClip_BuyItemAsset2").visible = true;
         getItemByName("MovieClip_BuyItemAsset3").visible = true;
         getItemByName("MovieClip_BuyItemAsset4").visible = true;
         getItemByName("MovieClip_BuyItemAsset5").visible = true;
         getItemByName("EasterEgg1Button").visible = false;
         switch(this.§+%§)
         {
            case §?Q§.§^=§:
               _loc3_ = §`!o§.§@!j§;
               param1.setText("Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","TextField_PowerUpDescription");
               break;
            case §?Q§.§;"1§:
               _loc3_ = §`!o§.§?!5§;
               param1.setText("Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","TextField_PowerUpDescription");
               break;
            case §?Q§.§?a§:
               _loc3_ = §`!o§.§7!D§;
               param1.setText("Supersize your bird! Super Seeds turn any bird into a pig-popping giant.","TextField_PowerUpDescription");
               break;
            case §?Q§.§'!O§:
               _loc3_ = §`!o§.§=!M§;
               param1.setText("Rattle the battle! Use the Birdquake to bring pigs’ defenses crashing to the ground!","TextField_PowerUpDescription");
               break;
            case §?Q§.§7C§:
               _loc3_ = §`!o§.POWERUP_BOMB;
               param1.setText("Missing","TextField_PowerUpDescription");
               break;
            case §?Q§.MIGHTY_EAGLE:
               _loc3_ = §`!o§.§[E§;
               param1.setText("Summon the Mighty Eagle to wreak havoc on the pigs. Destroy as much as possible to collect Total Destruction feathers from all your levels!","TextField_PowerUpDescription");
               break;
            case §?Q§.§<",§:
               if(!(AngryBirdsFP11.sUserProgress as §2!P§).isEggUnlocked("1000-1"))
               {
                  getItemByName("EasterEgg1Button").visible = true;
               }
               _loc3_ = §`!o§.§<",§;
               param1.setText("It’s the perfect solution to all your piggy problems. This bundle contains Sling Scopes, King Slings, Super Seeds, Birdquakes and Mighty Eagle all in equal measure.","TextField_PowerUpDescription");
               getItemByName("Container_OfEach").visible = true;
               getItemByName("Container_XOfEach").visible = false;
               getItemByName("MovieClip_BuyItemAsset1").visible = false;
               getItemByName("MovieClip_BuyItemAsset2").visible = false;
               getItemByName("MovieClip_BuyItemAsset3").visible = false;
               getItemByName("MovieClip_BuyItemAsset4").visible = false;
               getItemByName("MovieClip_BuyItemAsset5").visible = false;
         }
         param1.setText(_loc3_,"TextField_PowerUpName");
         param1.setText("Purchase " + _loc3_,"TextField_UpperName");
         getItemByName("MovieClip_BuyItemAsset").mClip.gotoAndStop(this.§+%§);
         var _loc4_:int = 5;
         for each(_loc5_ in this.§`D§)
         {
            _loc6_ = 0;
            if(_loc5_.cp)
            {
               _loc6_ = _loc5_.cp;
               getItemByName("SaleTag" + _loc4_).visible = true;
            }
            else
            {
               _loc6_ = _loc5_.p;
               getItemByName("SaleTag" + _loc4_).visible = false;
            }
            param1.setText("$" + _loc6_ / 10,"TextField_Price" + _loc4_);
            param1.setText("" + _loc5_.q,"TextField_Quantity" + _loc4_);
            getItemByName("MovieClip_BuyItemAsset" + _loc4_).mClip.gotoAndStop(this.§+%§);
            _loc4_--;
         }
         this.§<4§();
      }
      
      public function §<4§() : void
      {
      }
      
      private function onUiInteraction(param1:§4H§) : void
      {
         this.uiInteractionHandler(param1.§@`§,param1.§@C§,param1.§5!+§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§,!]§) : void
      {
         switch(param2)
         {
            case "SHOP_BUYPOPUP_CLOSE":
               this.deActivate();
               break;
            case "SHOP_BUYPOPUP_CANCEL":
               this.deActivate();
               break;
            case "SHOP_BUYPOPUP_BUY1":
               this.§case§(4);
               break;
            case "SHOP_BUYPOPUP_BUY2":
               this.§case§(3);
               break;
            case "SHOP_BUYPOPUP_BUY3":
               this.§case§(2);
               break;
            case "SHOP_BUYPOPUP_BUY4":
               this.§case§(1);
               break;
            case "SHOP_BUYPOPUP_BUY5":
               this.§case§(0);
               break;
            case "EASTER_EGG_1":
               getItemByName("EasterEgg1Button").visible = false;
               (AngryBirdsFP11.sUserProgress as §2!P§).setEggUnlocked("1000-1");
         }
      }
      
      private function §case§(param1:int) : void
      {
         if(ExternalInterface.available)
         {
            if(!this.§set §)
            {
               this.§3"<§ = true;
               this.§?k§ = this.§+%§ + "_" + this.§`D§[param1].q;
               this.§3!c§ = parseInt(this.§`D§[param1].q);
               AngryBirdsFP11.§`"B§.§'H§();
               §,U§.§53§("placeOrder",this.§?k§);
               this.§set § = true;
               this.§]p§.reset();
               this.§]p§.start();
               this.§]p§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§8"&§);
               §%!#§.§%!O§(this.§?k§,this.§3!c§);
            }
         }
      }
      
      private function §8"&§(param1:TimerEvent) : void
      {
         this.§]p§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§8"&§);
         this.§set § = false;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §,U§.§-!N§("purchaseComplete",this.§;7§);
         §,U§.§-!N§("purchaseFailed",this.§+B§);
         this.§1y§ = false;
         this.§8"@§ = false;
         if(this.§set §)
         {
            this.§]p§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§8"&§);
            this.§set § = false;
         }
         this.§<q§.removeEventListener(§4H§.§%!g§,this.onUiInteraction);
         if(this.§3"<§)
         {
            this.§3"<§ = false;
            §'!0§.§8c§.§]!f§();
         }
         §?Q§.§7""§ = null;
         if(§43§.§3!"§)
         {
            close();
         }
         else
         {
            preClose();
         }
      }
      
      override public function open(param1:Boolean = true) : void
      {
         super.open(param1);
         this.§>!&§();
         if(!this.§1y§)
         {
            §,U§.addCallback("purchaseComplete",this.§;7§);
            this.§1y§ = true;
         }
         if(!this.§8"@§)
         {
            §,U§.addCallback("purchaseFailed",this.§+B§);
            this.§8"@§ = true;
         }
      }
      
      private function §+B§() : void
      {
         this.§?k§ = null;
         this.§3!c§ = 0;
      }
      
      private function §;7§() : void
      {
         this.§3"<§ = false;
         if(this.§?k§)
         {
            §%!#§.§9!7§(this.§?k§,this.§3!c§);
            this.§?k§ = null;
            this.§3!c§ = 0;
         }
         this.deActivate();
      }
   }
}
