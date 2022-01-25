package §;C§
{
   import §3!`§.§8h§;
   import §6!§.§%H§;
   import §6!Q§.§,![§;
   import §6l§.§#!Z§;
   import §>!8§.§4!0§;
   
   public class §5O§ extends Popup
   {
      
      private static var §9L§:Class = §4A§;
       
      
      private var §;!B§:StatePopupManager;
      
      public function §5O§(param1:§4!0§, param2:StatePopupManager)
      {
         super(§,![§.§6b§(§9L§),param1);
         §0D§ = param1;
         this.§;!B§ = param2;
         this.§;!B§.addEventListener(§%H§.§&!6§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§%H§) : void
      {
         this.uiInteractionHandler(param1.§%+§,param1.§=a§,param1.§&2§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§#!Z§) : void
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
            if(§,!_§ != null)
            {
               §,!_§.stop();
            }
            §,!_§ = §8h§.§`G§.§[O§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§8h§.§#H§);
            §,!_§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§,!_§ != null)
            {
               §,!_§.stop();
            }
            §,!_§ = §8h§.§`G§.§[O§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§8h§.§3!E§);
            §,!_§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§;!B§.removeEventListener(§%H§.§&!6§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
