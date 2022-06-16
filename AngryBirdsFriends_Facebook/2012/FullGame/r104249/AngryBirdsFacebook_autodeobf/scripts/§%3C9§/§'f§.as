package §<9§
{
   import §!G§.§+!#§;
   import §""L§.§'!X§;
   import §#M§.§^0§;
   import §%!'§.§"!e§;
   import §%!'§.§8o§;
   import §&!"§.§5"§;
   import §&!"§.Popup;
   import §&!"§.StatePopupManager;
   import §&!"§.§`B§;
   import §2!6§.§ !h§;
   import §2!6§.§`"J§;
   import §;n§.§^!;§;
   import §<";§.§'y§;
   import §<<§.§=!L§;
   import §?!z§.§6"@§;
   import §[!-§.§9!S§;
   import §[!-§.§="B§;
   import §[!-§.§?x§;
   import §[x§.§?-§;
   import §each §.§@x§;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.external.ExternalInterface;
   import flash.net.URLLoaderDataFormat;
   import flash.utils.Timer;
   
   public class §'f§ extends Popup
   {
      
      private static var §#!I§:Class = §+t§;
       
      
      private var §[!g§:StatePopupManager;
      
      private var §=-§:String;
      
      private var §,!%§:Array;
      
      private var §;>§:Boolean = false;
      
      private var §;![§:Boolean = false;
      
      private var §]"9§:Boolean = false;
      
      private var §<x§:Timer;
      
      private var §+!Q§:String;
      
      private var §["8§:int;
      
      private var §7!c§:Boolean = false;
      
      private const §=!Z§:String = "ShopVisuals1";
      
      private const GROUP_X_PLUS_Y_FREE_G1:String = "xPlusYFreeG1";
      
      private const GROUP_X_PLUS_Y_FREE_G2:String = "xPlusYFreeG2";
      
      private const §7c§:String = "xPlusYFreeR";
      
      private const § !m§:String = "xPlusYPercentFree";
      
      private const §;",§:String = "xTotalYFree";
      
      private const §#!`§:String = "xTotal";
      
      public function §'f§(param1:§^0§, param2:StatePopupManager, param3:Object)
      {
         this.§[!g§ = param2;
         super(§?-§.§9E§(§#!I§),param1);
         param1.getItemByName("Container_Popup").setVisibility(true);
         this.§[!g§.addEventListener(§+!#§.§@=§,this.onUiInteraction);
         if(param3 == null)
         {
            getItemByName("Container_BuyStuff").visible = false;
            getItemByName("AngryBirdLoader").visible = true;
            if(§ ">§.§8q§ && !§ ">§.§?!-§)
            {
               § ">§.§?!-§ = new §9!S§();
               § ">§.§?!-§.addEventListener(Event.COMPLETE,this.§2P§);
               § ">§.§?!-§.addEventListener(IOErrorEvent.IO_ERROR,this.§ !9§);
               § ">§.§?!-§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§ !9§);
               § ">§.§?!-§.addEventListener(§="B§.§2"B§,this.§ !9§);
               § ">§.§?!-§.dataFormat = URLLoaderDataFormat.TEXT;
               § ">§.§?!-§.load(§?x§.§>t§(AngryBirdsFP11.§#"@§ + "/shoplisting"));
            }
         }
         else
         {
            this.§@w§(param1,param3);
         }
         this.§<x§ = new Timer(2000,1);
      }
      
      protected function § !9§(param1:Event) : void
      {
         if(param1.type == §="B§.§2"B§)
         {
            §`B§.§#!i§(§5"§.§;s§);
         }
         else
         {
            §`B§.§-!§();
         }
      }
      
      private function §2P§(param1:Event) : void
      {
         var dataObject:Object = null;
         var dataLoader:§9!S§ = null;
         var e:Event = param1;
         try
         {
            dataLoader = e.currentTarget as §9!S§;
            dataObject = JSON.parse(dataLoader.data);
         }
         catch(e:Error)
         {
            throw new Error("Error parsing JSON: " + dataLoader.data,§8o§.§1!d§);
         }
         § ">§.§%!b§ = dataObject.powerups;
         §6">§.§`!J§ = dataObject.avatarParts;
         §3"9§.§=!I§ = dataObject.levels;
         if(isOpen)
         {
            this.§!!I§();
         }
      }
      
      private function §!!I§(param1:Object = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         §&"D§.getItemByName("Container_Popup").setVisibility(true);
         if(param1)
         {
            this.§@w§(§&"D§,param1);
         }
         else
         {
            for each(_loc2_ in § ">§.§%!b§)
            {
               _loc3_ = § ">§.§8q§;
               if(_loc2_.id == _loc3_)
               {
                  this.§@w§(§&"D§,_loc2_);
               }
            }
         }
         § ">§.§?!-§ = null;
      }
      
      private function §@w§(param1:§^0§, param2:Object) : void
      {
         var _loc4_:String = null;
         var _loc9_:Object = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc14_:* = null;
         var _loc15_:String = null;
         getItemByName("Container_BuyStuff").visible = true;
         getItemByName("AngryBirdLoader").visible = false;
         this.§=-§ = param2.id;
         this.§,!%§ = param2.prices;
         §"!e§.§1b§(this.§=-§);
         getItemByName("Container_XOfEach").visible = true;
         getItemByName("MovieClip_BuyItemAsset1").visible = true;
         getItemByName("MovieClip_BuyItemAsset2").visible = true;
         getItemByName("MovieClip_BuyItemAsset3").visible = true;
         getItemByName("MovieClip_BuyItemAsset4").visible = true;
         getItemByName("MovieClip_BuyItemAsset5").visible = true;
         getItemByName("EasterEgg1Button").visible = false;
         var _loc3_:String = "";
         switch(this.§=-§)
         {
            case § !h§.§]!^§.§5"5§:
               _loc4_ = § !h§.§]!^§.§&Z§;
               param1.setText("Fling your birds with style AND speed. Upgrade to the almighty King Sling for maximum power and velocity!","TextField_PowerUpDescription");
               break;
            case § !h§.§="'§.§5"5§:
               _loc4_ = § !h§.§="'§.§&Z§;
               param1.setText("Looking for the perfect shot? Use Sling Scope laser targeting for pinpoint precision!","TextField_PowerUpDescription");
               break;
            case § !h§.§+!<§.§5"5§:
               _loc4_ = § !h§.§+!<§.§&Z§;
               param1.setText("Supersize your bird! Super Seeds turn any bird into a pig-popping giant.","TextField_PowerUpDescription");
               break;
            case § !h§.§@"<§.§5"5§:
               _loc4_ = § !h§.§@"<§.§&Z§;
               param1.setText("Rattle the battle! Use the Birdquake to bring pigs’ defenses crashing to the ground!","TextField_PowerUpDescription");
               break;
            case § !h§.§]W§.§5"5§:
               _loc4_ = § !h§.§]W§.§&Z§;
               param1.setText("Summon the Mighty Eagle to wreak havoc on the pigs. Destroy as much as possible to collect Total Destruction feathers from all your levels!","TextField_PowerUpDescription");
               break;
            case § ">§.§ !V§:
               if(!(AngryBirdsFP11.sUserProgress as §'y§).§#!e§("1000-1"))
               {
                  getItemByName("EasterEgg1Button").visible = true;
               }
               _loc4_ = §6"@§.§ !V§;
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
         getItemByName("MovieClip_BuyItemAsset").mClip.gotoAndStop(this.§=-§);
         var _loc5_:String = §'!X§.§0!b§(this.§=!Z§);
         var _loc6_:String = this.§?!@§(_loc5_);
         var _loc7_:int = 5;
         var _loc8_:Boolean = §@x§.§11§();
         for each(_loc9_ in this.§,!%§)
         {
            _loc10_ = 0;
            _loc11_ = 0;
            if(_loc9_.p)
            {
               _loc10_ = _loc9_.p;
            }
            if(_loc9_.cp)
            {
               _loc11_ = _loc9_.cp;
            }
            _loc12_ = _loc9_.fq;
            _loc13_ = String(_loc9_.pq);
            _loc14_ = "";
            if(_loc12_ != 0)
            {
               _loc14_ = "+" + _loc12_ + " free";
            }
            if(!_loc8_)
            {
               _loc11_ = _loc10_;
            }
            param1.setText(§ ">§.§"!]§.§`!T§(_loc11_),"TextField_Price" + _loc7_);
            param1.setText(§ ">§.§"!]§.§`!T§(_loc10_),"TextField_OldPrice" + _loc7_);
            param1.setText(this.§-"I§(_loc5_,_loc9_.pq,_loc9_.fq),"TextField_Quantity" + _loc7_);
            param1.setText(_loc3_,"TextField_OfEach" + _loc7_);
            _loc15_ = this.§0c§(_loc5_,_loc9_.pq,_loc9_.fq);
            param1.getItemByName("TextField_ForFree" + _loc7_ + _loc6_).setVisibility(_loc15_ != "");
            param1.setText(_loc15_,"TextField_ForFree" + _loc7_ + _loc6_);
            getItemByName("MovieClip_BuyItemAsset" + _loc7_).mClip.gotoAndStop(this.§=-§);
            if(--_loc7_ == 0)
            {
               break;
            }
         }
         param1.getItemByName("Container_Sales_Tags").setVisibility(_loc8_);
         param1.getItemByName("Container_OldPrices").setVisibility(_loc8_);
         this.§"t§();
      }
      
      public function §"t§() : void
      {
      }
      
      private function onUiInteraction(param1:§+!#§) : void
      {
         this.uiInteractionHandler(param1.§`!>§,param1.§4W§,param1.§91§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!;§) : void
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
               this.§-U§(4);
               break;
            case "SHOP_BUYPOPUP_BUY2":
               this.§-U§(3);
               break;
            case "SHOP_BUYPOPUP_BUY3":
               this.§-U§(2);
               break;
            case "SHOP_BUYPOPUP_BUY4":
               this.§-U§(1);
               break;
            case "SHOP_BUYPOPUP_BUY5":
               this.§-U§(0);
               break;
            case "EASTER_EGG_1":
               getItemByName("EasterEgg1Button").visible = false;
               (AngryBirdsFP11.sUserProgress as §'y§).§?"%§("1000-1");
         }
      }
      
      private function §-U§(param1:int) : void
      {
         var _loc2_:int = 0;
         if(ExternalInterface.available)
         {
            if(!this.§]"9§)
            {
               this.§7!c§ = true;
               _loc2_ = this.§,!%§[param1].pq + this.§,!%§[param1].fq;
               this.§+!Q§ = this.§=-§ + "_" + _loc2_;
               this.§["8§ = _loc2_;
               AngryBirdsFP11.§#!4§.§1z§();
               §=!L§.§+">§("placeOrder",this.§+!Q§);
               this.§]"9§ = true;
               this.§<x§.reset();
               this.§<x§.start();
               this.§<x§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§0!§);
               §"!e§.§<I§(this.§+!Q§,this.§["8§);
            }
         }
      }
      
      private function §0!§(param1:TimerEvent) : void
      {
         this.§<x§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§0!§);
         this.§]"9§ = false;
      }
      
      override public function deActivate() : void
      {
         super.deActivate();
         §=!L§.§>7§("purchaseComplete",this.§"A§);
         §=!L§.§>7§("purchaseFailed",this.§%#§);
         this.§;>§ = false;
         this.§;![§ = false;
         if(this.§]"9§)
         {
            this.§<x§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§0!§);
            this.§]"9§ = false;
         }
         this.§[!g§.removeEventListener(§+!#§.§@=§,this.onUiInteraction);
         if(this.§7!c§)
         {
            this.§7!c§ = false;
            §`"J§.§1[§.§'!p§();
         }
         § ">§.§8q§ = null;
         if(§`B§.§0!_§)
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
         this.§!!I§();
         if(!this.§;>§)
         {
            §=!L§.addCallback("purchaseComplete",this.§"A§);
            this.§;>§ = true;
         }
         if(!this.§;![§)
         {
            §=!L§.addCallback("purchaseFailed",this.§%#§);
            this.§;![§ = true;
         }
      }
      
      private function §%#§() : void
      {
         this.§+!Q§ = null;
         this.§["8§ = 0;
      }
      
      private function §"A§() : void
      {
         this.§7!c§ = false;
         if(this.§+!Q§)
         {
            §"!e§.§8!?§(this.§+!Q§,this.§["8§);
            §"!e§.§3"E§(§"!e§.§1r§,this.§=-§,this.§["8§);
            this.§+!Q§ = null;
            this.§["8§ = 0;
         }
         this.deActivate();
      }
      
      private function §0c§(param1:String, param2:int, param3:int) : String
      {
         if(param3 <= 0)
         {
            return "";
         }
         switch(param1)
         {
            case this.GROUP_X_PLUS_Y_FREE_G1:
            case this.GROUP_X_PLUS_Y_FREE_G2:
            case this.§7c§:
            default:
               if(param3 > 0)
               {
                  return "+" + param3 + " free";
               }
               break;
            case this.§ !m§:
               break;
            case this.§;",§:
               return "(" + param3 + " free)";
            case this.§#!`§:
               return "";
         }
         return "+" + Math.round(param3 / (param2 + param3) * 100) + "% free";
      }
      
      private function §-"I§(param1:String, param2:int, param3:int) : String
      {
         switch(param1)
         {
            case this.GROUP_X_PLUS_Y_FREE_G1:
            case this.GROUP_X_PLUS_Y_FREE_G2:
            case this.§7c§:
               break;
            default:
               break;
            case this.§#!`§:
            case this.§ !m§:
            case this.§;",§:
               return String(param2 + param3);
         }
         return String(param2);
      }
      
      private function §?!@§(param1:String) : String
      {
         switch(param1)
         {
            case this.GROUP_X_PLUS_Y_FREE_G1:
            case this.GROUP_X_PLUS_Y_FREE_G2:
               break;
            default:
               break;
            case this.§7c§:
            case this.§ !m§:
            case this.§;",§:
            case this.§#!`§:
               return "red";
         }
         return "green";
      }
   }
}
