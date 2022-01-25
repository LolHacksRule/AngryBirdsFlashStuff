package §]n§
{
   import §&V§.§9t§;
   import §7H§.§8Q§;
   import §?8§.§%!]§;
   import §^6§.§;l§;
   import §^=§.§4S§;
   
   public class §@§ extends Popup
   {
      
      private static var §6L§:Class = §+!`§;
       
      
      private var §4!]§:StatePopupManager;
      
      public function §@§(param1:§;l§, param2:StatePopupManager)
      {
         super(§4S§.§+X§(§6L§),param1);
         §'B§ = param1;
         this.§4!]§ = param2;
         this.§4!]§.addEventListener(§%!]§.§]V§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§%!]§) : void
      {
         this.uiInteractionHandler(param1.§>N§,param1.§ !=§,param1.§?E§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§9t§) : void
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
            if(§@!M§ != null)
            {
               §@!M§.stop();
            }
            §@!M§ = §8Q§.§]!D§.§^w§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§8Q§.§,j§);
            §@!M§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§@!M§ != null)
            {
               §@!M§.stop();
            }
            §@!M§ = §8Q§.§]!D§.§^w§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§8Q§.§;!'§);
            §@!M§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§4!]§.removeEventListener(§%!]§.§]V§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
