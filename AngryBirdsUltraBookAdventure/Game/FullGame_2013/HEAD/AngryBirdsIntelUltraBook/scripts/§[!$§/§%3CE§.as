package §[!$§
{
   import §7t§.StateStart;
   
   public class §<E§ extends StateStart
   {
       
      
      public function §<E§(initState:Boolean = false, name:String = "LevelStartState")
      {
         super(initState,name);
      }
      
      override public function init() : void
      {
         super.init();
         §`=§.getItemByName("Button_Fullscreen").setVisibility(false);
      }
   }
}
