package §#!2§
{
   import §9c§.StateStart;
   
   public class §0!<§ extends StateStart
   {
       
      
      public function §0!<§(initState:Boolean = false, name:String = "LevelStartState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §^,§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
   }
}
