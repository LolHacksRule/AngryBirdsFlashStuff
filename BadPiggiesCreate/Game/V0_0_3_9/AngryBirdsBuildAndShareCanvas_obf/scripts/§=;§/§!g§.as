package §=;§
{
   import §&!&§.§7!8§;
   import §9!#§.§4X§;
   import §<Z§.§"!f§;
   import §<Z§.§7!!§;
   
   public class §!g§ extends §4X§
   {
      
      public static const §8G§:String = "LevelEndStatePreview";
       
      
      public function §!g§(param1:Boolean = false, param2:String = "LevelEndStatePreview")
      {
         super(param1,param2);
      }
      
      override public function init() : void
      {
         super.init();
         §;i§ = new §7!!§(this);
         §;i§.init(§"!f§.§%!1§.Views.View_LevelEndPreview[0]);
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
