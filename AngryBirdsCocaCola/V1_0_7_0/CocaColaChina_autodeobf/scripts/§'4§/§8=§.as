package §'4§
{
   import §%!G§.§ !G§;
   import §2!$§.§<!%§;
   import §?@§.§^!M§;
   import §@O§.§7;§;
   import §[!=§.§!!K§;
   
   public class §8=§ extends Popup
   {
      
      private static var §"!A§:Class = §^!U§;
       
      
      private var §1%§:StatePopupManager;
      
      public function §8=§(param1:§ !G§, param2:StatePopupManager)
      {
         super(§^!M§.§2!^§(§"!A§),param1);
         §!!#§ = param1;
         this.§1%§ = param2;
         this.§1%§.addEventListener(§7;§.§;D§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§7;§) : void
      {
         this.uiInteractionHandler(param1.§2!<§,param1.§<!R§,param1.§+!P§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§<!%§) : void
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
            §6!L§ = §!!K§.§'!C§.§'!H§(this.mClip,{
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
            §6!L§ = §!!K§.§'!C§.§'!H§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§!!K§.§<!G§);
            §6!L§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§1%§.removeEventListener(§7;§.§;D§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
