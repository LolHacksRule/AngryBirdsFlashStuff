package §@z§
{
   import §<!S§.StateStart;
   
   public class §`!`§ extends StateStart
   {
       
      
      public function §`!`§(initState:Boolean = false, name:String = "LevelStartState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §5!M§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
   }
}
