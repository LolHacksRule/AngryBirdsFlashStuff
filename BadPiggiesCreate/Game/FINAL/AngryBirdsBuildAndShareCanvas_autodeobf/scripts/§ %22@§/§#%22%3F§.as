package § "@§
{
   import §'!A§.§-!S§;
   import §0![§.§7!Y§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   
   public class §#"?§ extends §7!Y§
   {
      
      public static const §'=§:String = "LevelEndFailStatePreview";
       
      
      public function §#"?§(param1:Boolean = false, param2:String = "LevelEndFailStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelEndFailPreview[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §%!3§.§4[§(StateLevelPreview.§'=§);
               mNextState = §%!3§.§'=§;
         }
      }
   }
}
