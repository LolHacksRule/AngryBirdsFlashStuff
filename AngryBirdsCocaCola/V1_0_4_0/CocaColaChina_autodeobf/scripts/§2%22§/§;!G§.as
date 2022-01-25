package §2"§
{
   import §'!G§.§4!§;
   import §'P§.§5!_§;
   import §2!<§.§<!R§;
   import §7]§.§;T§;
   import §>9§.§;!?§;
   import §[!=§.§!!K§;
   
   public class §;!G§ extends Popup
   {
      
      private static var §,q§:Class = §7B§;
       
      
      private var §#Z§:StatePopupManager;
      
      public function §;!G§(param1:§^R§, param2:StatePopupManager, param3:int)
      {
         super(§4!§.§[!a§(§,q§),param1);
         §&!Q§ = param1;
         this.§#Z§ = param2;
         this.§#Z§.addEventListener(§<!R§.§]!K§,this.onUiInteraction);
         if(param3 == 5)
         {
            (§&!Q§.getItemByName("TextField_PersonalGoal") as §5!_§).§5r§.text = "您贡献" + §;!?§.PERSONAL_GOAL_1_LIMIT + "个节拍后解锁！";
         }
         else if(param3 == 6)
         {
            (§&!Q§.getItemByName("TextField_PersonalGoal") as §5!_§).§5r§.text = "您贡献" + §;!?§.PERSONAL_GOAL_2_LIMIT + "个节拍后解锁！";
         }
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
