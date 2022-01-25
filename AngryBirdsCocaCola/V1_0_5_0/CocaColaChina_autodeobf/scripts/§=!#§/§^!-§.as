package §=!#§
{
   import §%3§.§7b§;
   import §6a§.§;!a§;
   import §7!H§.§12§;
   import §<!!§.§=§;
   import §<"§.§7!'§;
   
   public class §^!-§ extends Popup
   {
      
      private static var § Z§:Class = §@!W§;
       
      
      private var §]a§:StatePopupManager;
      
      public function §^!-§(param1:§7b§, param2:StatePopupManager)
      {
         super(§=§.§!B§(§ Z§),param1);
         §]o§ = param1;
         this.§]a§ = param2;
         this.§]a§.addEventListener(§7!'§.§=&§,this.onUiInteraction);
      }
      
      private function onUiInteraction(param1:§7!'§) : void
      {
         this.uiInteractionHandler(param1.§,!<§,param1.§`+§,param1.§<?§);
      }
      
      public function uiInteractionHandler(param1:int, param2:String, param3:§12§) : void
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
            if(§3!_§ != null)
            {
               §3!_§.stop();
            }
            §3!_§ = §;!a§.§0%§.§,w§(this.mClip,{
               "scaleX":1,
               "scaleY":1
            },{
               "scaleX":0,
               "scaleY":0
            },0.25,§;!a§.§!!D§);
            §3!_§.play();
         }
         super.open(param1);
      }
      
      override public function preClose(param1:Boolean = true) : void
      {
         super.preClose(param1);
         if(param1)
         {
            if(§3!_§ != null)
            {
               §3!_§.stop();
            }
            §3!_§ = §;!a§.§0%§.§,w§(this.mClip,{
               "scaleX":0,
               "scaleY":0
            },null,0.25,§;!a§.§5!L§);
            §3!_§.play();
         }
      }
      
      override public function deActivate() : void
      {
         this.§]a§.removeEventListener(§7!'§.§=&§,this.onUiInteraction);
         super.deActivate();
      }
   }
}
