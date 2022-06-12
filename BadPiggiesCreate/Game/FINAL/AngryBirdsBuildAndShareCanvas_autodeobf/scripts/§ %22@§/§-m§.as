package § "@§
{
   import §'!A§.§-!S§;
   import §0![§.§@8§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   
   public class §-m§ extends §@8§
   {
      
      public static const §'=§:String = "LevelEndStatePreview";
       
      
      public function §-m§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §?E§ = new §'s§(this);
         §?E§.init(§`7§.§>"?§.Views.View_LevelEndPreview[0]);
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
