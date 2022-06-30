package §'!F§
{
   import §#%§.§70§;
   import §&!b§.§2!L§;
   import §+!M§.§7!0§;
   import §+B§.StatePlay;
   import §-!f§.§ else§;
   import §0!X§.§!!Z§;
   import §0!X§.§8!F§;
   import §1!d§.§9m§;
   import §9!Q§.§&o§;
   import §9!f§.§3!N§;
   import §>!M§.§2?§;
   import §]!&§.§1E§;
   import flash.events.Event;
   import flash.events.HTTPStatusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §]!Q§ extends Popup implements §!!Z§
   {
      
      private static var §7@§:Class = §3^§;
       
      
      private var §+M§:StatePopupManager;
      
      private var §!b§:StatePlay;
      
      private var §7>§:Boolean = false;
      
      private var §^!1§:String = "";
      
      public function §]!Q§(param1:§ else§, param2:StatePopupManager, param3:StatePlay)
      {
         super(§2!L§.§-!7§(§7@§),param1);
         §<8§ = param1;
         this.§+M§ = param2;
         this.§!b§ = param3;
         this.§+M§.addEventListener(§3!N§.§+<§,this.onUiInteraction);
         new §&o§((param1.getItemByName("TextField_HeikkiCodeEnter") as §1E§).§;+§,§"!R§.§4F§,§"!R§.§7![§,§"!R§.§ <§);
      }
      
      private function onUiInteraction(param1:§3!N§) : void
      {
         this.uiInteractionHandler(param1.§`!g§,param1.§[t§,param1.§^r§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§7!0§) : void
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
               _loc4_ = §<8§.getText("TextField_HeikkiCodeEnter");
               this.§<u§(_loc4_);
         }
      }
      
      private function §<u§(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:§2?§ = null;
         if(this.§7>§ == false && (param1 != "Incorrect code" || param1 != "Code already used"))
         {
            _loc2_ = "code";
            _loc3_ = {
               "playerId":§70§.§6d§.§6!X§,
               "code":param1
            };
            _loc4_ = new §2?§(_loc3_,§"!R§.§['§ + _loc2_,this,§2?§.§&!g§);
            this.§7>§ = true;
         }
      }
      
      override public function close() : void
      {
         §<8§.setText("","TextField_HeikkiCodeEnter");
         (§<8§.getItemByName("TextField_HeikkiCodeEnter") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;p§);
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§3x§ != null)
            {
               §3x§.stop();
            }
            §3x§ = §9m§.§?! §.§]C§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§9m§.§7l§);
            §3x§.play();
         }
         super.open(param1);
         §<8§.setText("","TextField_HeikkiCodeEnter");
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§3x§ != null)
            {
               §3x§.stop();
            }
            §3x§ = §9m§.§?! §.§]C§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§9m§.§4`§);
            §3x§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§+M§.removeEventListener(§3!N§.§+<§,this.onUiInteraction);
         if(§"!R§.§0!P§.§4g§)
         {
            this.§!b§.§!!3§ = true;
         }
         super.deActivate();
      }
      
      public function onComplete(param1:Event) : void
      {
         var _loc2_:Object = §8!F§.§[<§((param1.currentTarget as URLLoader).data);
         var _loc3_:String = "";
         this.§7>§ = false;
         if(_loc2_ && _loc2_.powerUp == true)
         {
            §"!R§.§0!P§.§4g§ = true;
            this.preClose();
         }
         else if(_loc2_ && _loc2_.error == "CODE_USED")
         {
            _loc3_ = "Code already used";
            this.§"q§(_loc3_);
         }
         else
         {
            _loc3_ = "Incorrect code";
            this.§"q§(_loc3_);
         }
      }
      
      private function §"q§(param1:String) : void
      {
         var _loc2_:§1E§ = null;
         if(param1 != "")
         {
            if(§<8§)
            {
               this.§^!1§ = §<8§.getText("TextField_HeikkiCodeEnter");
               §<8§.setText(param1,"TextField_HeikkiCodeEnter");
               _loc2_ = §<8§.getItemByName("TextField_HeikkiCodeEnter") as §1E§;
               if(_loc2_ && _loc2_.§;+§)
               {
                  _loc2_.§;+§.addEventListener(MouseEvent.MOUSE_DOWN,this.§;p§);
               }
            }
         }
      }
      
      private function §;p§(param1:MouseEvent) : void
      {
         (§<8§.getItemByName("TextField_HeikkiCodeEnter") as §1E§).§;+§.removeEventListener(MouseEvent.MOUSE_DOWN,this.§;p§);
         §<8§.setText(this.§^!1§,"TextField_HeikkiCodeEnter");
      }
      
      public function §;!Q§(param1:HTTPStatusEvent) : void
      {
      }
      
      public function §>!6§(param1:IOErrorEvent) : void
      {
         this.§"q§("Incorrect code");
         this.§7>§ = false;
      }
   }
}
