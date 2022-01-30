package §!!+§
{
   import §,i§.§4!q§;
   import §4!t§.§1!=§;
   import §4!t§.§=p§;
   import §<8§.§7!n§;
   
   public class §+c§ extends §4!q§
   {
      
      public static const §]"2§:String = "LevelEndStatePreview";
       
      
      public function §+c§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §'K§ = new §=p§(this);
         §'K§.init(§1!=§.§8X§.Views.View_LevelEndPreview[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!n§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §4!l§.§"l§(StateLevelPreview.§]"2§);
               mNextState = §4!l§.§]"2§;
         }
      }
   }
}
