package § each§
{
   import § "C§.§+!D§;
   import § "C§.§-!l§;
   import § "C§.§0]§;
   import §#^§.§7!A§;
   import §%!v§.§[<§;
   import §'!s§.§%?§;
   import §'!s§.§-d§;
   import §'!s§.Popup;
   import §'!s§.StatePopupManager;
   import §+N§.§@!]§;
   import §,V§.§'"5§;
   import §2!i§.§'M§;
   import §3!7§.§>,§;
   import §3!7§.§?!F§;
   import §6o§.§5!C§;
   import §<a§.§!!m§;
   import §<a§.§+!B§;
   import §]!A§.§&A§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §4y§ extends Popup
   {
      
      private static var §9!y§:Class = §#!I§;
       
      
      private var §"!T§:StatePopupManager;
      
      private var §2!>§:String;
      
      private var §2-§:Array;
      
      private var §"C§:Boolean = false;
      
      private var §^"8§:Boolean = false;
      
      private var §;y§:Boolean = false;
      
      private var §?7§:Timer;
      
      private var §2"5§:String;
      
      private var §2g§:int;
      
      private var §?!=§:Boolean = false;
      
      public function §4y§(param1:§7!A§, param2:StatePopupManager, param3:Object)
      {
         this.§"!T§ = param2;
         super(§5!C§.§9G§(§9!y§),param1);
         param1.getItemByName("Container_Popup").setVisibility(true);
         this.§"!T§.addEventListener(§'"5§.§#2§,this.onUiInteraction);
         if(param3 == null)
         {
            getItemByName("Container_BuyStuff").visible = false;
            getItemByName("AngryBirdLoader").visible = true;
            if(§>v§.§ [§ && !§>v§.§=F§)
            {
               §>v§.§=F§ = new §0]§();
               §>v§.§=F§.addEventListener(Event.COMPLETE,this.§!!Q§);
               §>v§.§=F§.addEventListener(IOErrorEvent.IO_ERROR,this.§>%§);
               §>v§.§=F§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§>%§);
               §>v§.§=F§.addEventListener(§+!D§.§25§,this.§>%§);
               §>v§.§=F§.dataFormat = URLLoaderDataFormat.TEXT;
               §>v§.§=F§.load(§-!l§.§%""§(AngryBirdsFP11.§76§ + "/shoplisting"));
            }
         }
         else
         {
            this.§"!3§(param1,param3);
         }
         this.§?7§ = new Timer(2000,1);
      }
      
      protected function §>%§(param1:Event) : void
      {
         if(param1.type == §+!D§.§25§)
         {
            §%?§.§6!7§(§-d§.§]x§);
         }
         else
         {
            §%?§.§4!>§();
         }
      }
      
      private function §!!Q§(param1:Event) : void
      {
         var dataObject:Object = null;
         var dataLoader:§0]§ = null;
         var e:Event = param1;
         try
         {
            dataLoader = e.currentTarget as §0]§;
            dataObject = JSON.parse(dataLoader.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + dataLoader.data,§!!m§.§4H§);
         }
         §>v§.§@",§ = dataObject.powerups;
         §84§.§90§ = dataObject.avatarParts;
         §-!m§.§>!l§ = dataObject.levels;
         if(isOpen)
         {
            this.§4M§();
         }
      }
      
      private function §4M§(param1:Object = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         §]"3§.getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            this.§"!3§(§]"3§,param1);
         }
         else
         {
            for each(_loc2_ in §>v§.§@",§)
            {
               _loc3_ = §>v§.§ [§;
               if(_loc2_.id == _loc3_)
               {
                  this.§"!3§(§]"3§,_loc2_);
               }
            }
         }
         §>v§.§=F§ = null;
      }
      
      private function §"!3§(param1:§7!A§, param2:Object) : void
      {
         var _loc4_:String = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         var _loc10_:* = null;
         getItemByName("Container_BuyStuff").visible = true;
         getItemByName("AngryBirdLoader").visible = false;
         this.§2!>§ = param2.id;
         this.§2-§ = param2.prices;
         §+!B§.§8'§(this.§2!>§);
         getItemByName("Container_XOfEach").visible = true;
         getItemByName("MovieClip_BuyItemAsset1").visible = true;
         getItemByName("MovieClip_BuyItemAsset2").visible = true;
         getItemByName("MovieClip_BuyItemAsset3").visible = true;
         getItemByName("MovieClip_BuyItemAsset4").visible = true;
         getItemByName("MovieClip_BuyItemAsset5").visible = true;
         getItemByName("EasterEgg1Button").visible = false;
         var _loc3_:String = "";
         switch(this.§2!>§)
         {
            case §>,§.§7!C§.§]6§:
               _loc4_ = §>,§.§7!C§.§7!5§;
               param1.setText("Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","TextField_PowerUpDescription");
               break;
            case §>,§.§%!X§.§]6§:
               _loc4_ = §>,§.§%!X§.§7!5§;
               param1.setText("Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","TextField_PowerUpDescription");
               break;
            case §>,§.§^Q§.§]6§:
               _loc4_ = §>,§.§^Q§.§7!5§;
               param1.setText("Supersize your bird! Super Seeds turn any bird into a pig-popping giant.","TextField_PowerUpDescription");
               break;
            case §>,§.§&m§.§]6§:
               _loc4_ = §>,§.§&m§.§7!5§;
               param1.setText("Rattle the battle! Use the Birdquake to bring pigs’ defenses crashing to the ground!","TextField_PowerUpDescription");
               break;
            case §>,§.§^t§.§]6§:
               _loc4_ = §>,§.§^t§.§7!5§;
               param1.setText("Summon the Mighty Eagle to wreak havoc on the pigs. Destroy as much as possible to collect Total Destruction feathers from all your levels!","TextField_PowerUpDescription");
               break;
            case §>v§.§`!M§:
               if(!(AngryBirdsFP11.sUserProgress as §[<§).§6M§("1000-1"))
               {
                  getItemByName("EasterEgg1Button").visible = true;
               }
               _loc4_ = §&A§.§`!M§;
               param1.setText("It’s the perfect solution to all your piggy problems. This bundle contains Sling Scopes, King Slings, Super Seeds and Birdquakes all in equal measure.","TextField_PowerUpDescription");
               _loc3_ = "of each!";
               getItemByName("Container_XOfEach").visible = false;
               getItemByName("MovieClip_BuyItemAsset1").visible = false;
               getItemByName("MovieClip_BuyItemAsset2").visible = false;
               getItemByName("MovieClip_BuyItemAsset3").visible = false;
               getItemByName("MovieClip_BuyItemAsset4").visible = false;
               getItemByName("MovieClip_BuyItemAsset5").visible = false;
         }
         param1.setText(_loc4_,"TextField_PowerUpName");
         param1.setText("Purchase " + _loc4_,"TextField_UpperName");
         getItemByName("MovieClip_BuyItemAsset").mClip.gotoAndStop(this.§2!>§);
         var _loc5_:int = 5;
         for each(_loc6_ in this.§2-§)
         {
            _loc7_ = 0;
            if(_loc6_.cp)
            {
               _loc7_ = _loc6_.cp;
               getItemByName("SaleTag" + _loc5_).visible = true;
            }
            else
            {
               _loc7_ = _loc6_.p;
               getItemByName("SaleTag" + _loc5_).visible = false;
            }
            _loc8_ = _loc6_.fq;
            _loc9_ = String(_loc6_.pq);
            _loc10_ = "";
            if(_loc8_ != 0)
            {
               _loc10_ = "+" + _loc8_ + " free";
            }
            param1.setText("$" + Number(_loc7_ / 10).toFixed(2),"TextField_Price" + _loc5_);
            param1.setText("" + _loc9_,"TextField_Quantity" + _loc5_);
            param1.setText(_loc3_,"TextField_OfEach" + _loc5_);
            param1.setText(_loc10_,"TextField_ForFree" + _loc5_);
            getItemByName("MovieClip_BuyItemAsset" + _loc5_).mClip.gotoAndStop(this.§2!>§);
            if(--_loc5_ == 0)
            {
               break;
            }
         }
         this.§`!V§();
      }
      
      public function §`!V§() : void
      {
      }
      
      private function onUiInteraction(param1:§'"5§) : void
      {
         this.uiInteractionHandler(param1.§"!k§,param1.§[2§,param1.§1!`§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
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
               this.§,y§(4);
               break;
            case "SHOP_BUYPOPUP_BUY2":
               this.§,y§(3);
               break;
            case "SHOP_BUYPOPUP_BUY3":
               this.§,y§(2);
               break;
            case "SHOP_BUYPOPUP_BUY4":
               this.§,y§(1);
               break;
            case "SHOP_BUYPOPUP_BUY5":
               this.§,y§(0);
               break;
            case "EASTER_EGG_1":
               getItemByName("EasterEgg1Button").visible = false;
               (AngryBirdsFP11.sUserProgress as §[<§).§`"3§("1000-1");
         }
      }
      
      private function §,y§(param1:int) : void
      {
         var _loc2_:int = 0;
         if(ExternalInterface.available)
         {
            if(!this.§;y§)
            {
               this.§?!=§ = true;
               _loc2_ = this.§2-§[param1].pq + this.§2-§[param1].fq;
               this.§2"5§ = this.§2!>§ + "_" + _loc2_;
               this.§2g§ = _loc2_;
               AngryBirdsFP11.§@<§.§#m§();
               §@!]§.§9"'§("placeOrder",this.§2"5§);
               this.§;y§ = true;
               this.§?7§.reset();
               this.§?7§.start();
               this.§?7§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§]!#§);
               §+!B§.§1n§(this.§2"5§,this.§2g§);
            }
         }
      }
      
      private function §]!#§(param1:TimerEvent) : void
      {
         this.§?7§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§]!#§);
         this.§;y§ = false;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §@!]§.§[">§("purchaseComplete",this.§+!s§);
         §@!]§.§[">§("purchaseFailed",this.§4!G§);
         this.§"C§ = false;
         this.§^"8§ = false;
         if(this.§;y§)
         {
            this.§?7§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§]!#§);
            this.§;y§ = false;
         }
         this.§"!T§.removeEventListener(§'"5§.§#2§,this.onUiInteraction);
         if(this.§?!=§)
         {
            this.§?!=§ = false;
            §?!F§.§;"§.§-Y§();
         }
         §>v§.§ [§ = null;
         if(§%?§.§?"6§)
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
         this.§4M§();
         if(!this.§"C§)
         {
            §@!]§.addCallback("purchaseComplete",this.§+!s§);
            this.§"C§ = true;
         }
         if(!this.§^"8§)
         {
            §@!]§.addCallback("purchaseFailed",this.§4!G§);
            this.§^"8§ = true;
         }
      }
      
      private function §4!G§() : void
      {
         this.§2"5§ = null;
         this.§2g§ = 0;
      }
      
      private function §+!s§() : void
      {
         this.§?!=§ = false;
         if(this.§2"5§)
         {
            §+!B§.§,Z§(this.§2"5§,this.§2g§);
            this.§2"5§ = null;
            this.§2g§ = 0;
         }
         this.deActivate();
      }
   }
}
