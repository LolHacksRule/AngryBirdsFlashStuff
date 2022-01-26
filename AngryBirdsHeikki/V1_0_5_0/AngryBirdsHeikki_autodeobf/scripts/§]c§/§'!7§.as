package §]c§
{
   import § !Y§.§if§;
   import §1!K§.§=t§;
   import §1!a§.§3U§;
   import §1!a§.§7!I§;
   import §6p§.§,!K§;
   import §93§.§^!H§;
   import §97§.StatePlay;
   import §=!S§.§;7§;
   import §=!c§.§#=§;
   import §>!_§.§9!+§;
   import §?!"§.§^!`§;
   import §^i§.§;§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §'!7§ extends Popup implements §7!I§
   {
      
      private static var §%!9§:Class = §`m§;
       
      
      private var §]A§:StatePopupManager;
      
      private var §-N§:StatePlay;
      
      private var §else §:Boolean = false;
      
      private var §[j§:String = "";
      
      public function §'!7§(param1:§if§, param2:StatePopupManager, param3:StatePlay)
      {
         super(§=t§.§1X§(§%!9§),param1);
         §%a§ = param1;
         this.§]A§ = param2;
         this.§-N§ = param3;
         this.§]A§.addEventListener(§,!K§.§+!,§,this.onUiInteraction);
         new §;7§((param1.getItemByName("TextField_HeikkiCodeEnter") as §#=§).§5!R§,§,-§.§[!@§,§,-§.§%Q§,§,-§.§[p§);
      }
      
      private function onUiInteraction(param1:§,!K§) : void
      {
         this.uiInteractionHandler(param1.§,Z§,param1.§@!F§,param1.§+!=§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§^!H§) : void
      {
         var _loc4_:String = null;
         switch(param2)
         {
            case "VISIT":
               navigateToURL(new URLRequest("http://www.facebook.com/Heikki.Kovalainen.Official.Fan.Page"),"_blank");
               break;
            case "LATER":
               this.preClose();
               break;
            case "SUBMIT":
               _loc4_ = §%a§.getText("TextField_HeikkiCodeEnter");
               this.§2!3§(_loc4_);
         }
      }
      
      private function §2!3§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§;§ = null;
         if(this.§else § == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§^!`§.§[K§.§%X§,
               "code":param1
            };
            _loc4_ = new §;§(_loc3_,§,-§.§ 6§ + _loc2_,this,§;§.§@<§);
            this.§else § = true;
         }
      }
      
      override public function close() : void
      {
         §%a§.setText("","TextField_HeikkiCodeEnter");
         (§%a§.getItemByName("TextField_HeikkiCodeEnter") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!W§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§%T§ != null)
            {
               §%T§.stop();
            }
            §%T§ = §9!+§.§;!F§.§`!'§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9!+§.§8!_§);
            §%T§.play();
         }
         super.open(param1);
         §%a§.setText("","TextField_HeikkiCodeEnter");
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§%T§ != null)
            {
               §%T§.stop();
            }
            §%T§ = §9!+§.§;!F§.§`!'§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9!+§.§#! §);
            §%T§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§]A§.removeEventListener(§,!K§.§+!,§,this.onUiInteraction);
         if(§,-§.§?+§.§"0§)
         {
            this.§-N§.§33§ = true;
         }
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §3U§.§'o§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§else § = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §,-§.§?+§.§"0§ = true;
            this.preClose();
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§[!!§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§[!!§(_loc3_);
         }
      }
      
      private function §[!!§(param1:String) : void
      {
         var _loc2_:§#=§ = null;
         if(param1 != "")
         {
            if(§%a§)
            {
               this.§[j§ = §%a§.getText("TextField_HeikkiCodeEnter");
               §%a§.setText(param1,"TextField_HeikkiCodeEnter");
               _loc2_ = §%a§.getItemByName("TextField_HeikkiCodeEnter") as §#=§;
               if(_loc2_ && _loc2_.§5!R§)
               {
                  _loc2_.§5!R§.addEventListener(MouseEvent.MOUSE_DOWN,this.§!!W§);
               }
            }
         }
      }
      
      private function §!!W§(param1:MouseEvent) : void
      {
         (§%a§.getItemByName("TextField_HeikkiCodeEnter") as §#=§).§5!R§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§!!W§);
         §%a§.setText(this.§[j§,"TextField_HeikkiCodeEnter");
      }
      
      public function §4@§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §<!3§(param1:IOErrorEvent) : void
      {
         this.§[!!§("Incorrect code");
         this.§else § = false;
      }
   }
}
