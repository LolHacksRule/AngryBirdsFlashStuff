package § J§
{
   import §""6§.§<a§;
   import §+!d§.§6=§;
   import §;"$§.§8!O§;
   import §;"$§.§`5§;
   
   public class §38§ extends §<a§
   {
      
      public static const §^z§:String = "LevelEndStatePreview";
       
      
      public function §38§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §%""§ = new §`5§(this);
         §%""§.init(§8!O§.§'!J§.Views.View_LevelEndPreview[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6=§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §6"6§.§0!f§(StateLevelPreview.§^z§);
               mNextState = §6"6§.§^z§;
         }
      }
   }
}
