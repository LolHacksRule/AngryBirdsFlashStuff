package §2"§
{
   import §'!G§.§4!§;
   import §2!<§.§<!R§;
   import §7]§.§;T§;
   import §[!=§.§!!K§;
   
   public class §!s§ extends Popup
   {
      
      private static var §>b§:Class = §3G§;
       
      
      private var §#Z§:StatePopupManager;
      
      public function §!s§(param1:§^R§, param2:StatePopupManager)
      {
         super(§4!§.§[!a§(§>b§),param1);
         §&!Q§ = param1;
         this.§#Z§ = param2;
         this.§#Z§.addEventListener(§<!R§.§]!K§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§<!R§) : void
      {
         this.uiInteractionHandler(param1.§+!P§,param1.§;D§,param1.§in§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§;T§) : void
      {
         switch(param2)
         {
            case "CLOSE":
               this.preClose();
         }
      }
      
      override public function close() : void
      {
         super.close();
         this.deActivate();
      }
      
      override public function open(param1:Boolean = true) : void
      {
         if(param1)
         {
            mClip.scaleX = 0;
            mClip.scaleY = 0;
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§@!c§.§'!H§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§!!K§.§#,§);
            §6!L§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§6!L§ != null)
            {
               §6!L§.stop();
            }
            §6!L§ = §!!K§.§@!c§.§'!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§!!K§.§<!G§);
            §6!L§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§#Z§.removeEventListener(§<!R§.§]!K§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
