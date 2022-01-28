package §_-RV§
{
   import §_-QG§.§_-t6§;
   import §_-gM§.§_-NE§;
   import §_-iZ§.HighscoreSidebar;
   
   public class §_-oI§ extends §_-t6§
   {
      
      public static var §_-e0§:HighscoreSidebar;
       
      
      private var §_-h5§:Class;
      
      public function §_-oI§(param1:Boolean, param2:String)
      {
         this.§_-h5§ = §_-8I§;
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-e0§ == null)
         {
            §_-e0§ = new HighscoreSidebar();
         }
         §_-e0§.§_-yA§(§_-NE§.§_-wH§(this.§_-h5§),§_-MF§.container,null,null);
         §_-e0§.container.x = §_-q0§.§ null§;
         §_-MF§.container.addComponent(§_-e0§.container);
      }
      
      override public function deActivate() : void
      {
         §_-MF§.container.removeComponent(§_-e0§.container);
         §_-e0§.deActivate();
         super.deActivate();
      }
   }
}
