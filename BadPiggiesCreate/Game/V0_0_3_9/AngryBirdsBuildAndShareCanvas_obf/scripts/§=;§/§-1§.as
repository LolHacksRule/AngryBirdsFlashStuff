package §=;§
{
   import §&!&§.§7!8§;
   import §9!#§.§=!A§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   
   public class §-1§ extends §=!A§
   {
      
      public static const §8G§:String = "LevelEndFailStatePreview";
       
      
      public function §-1§(param1:Boolean = false, param2:String = "LevelEndFailStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelEndFailPreview[0]);
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!8§) : void
      {
         switch(param2)
         {
            case "REPLAY":
               §=!"§.§2!2§(StateLevelPreview.§8G§);
               mNextState = §=!"§.§8G§;
         }
      }
   }
}
