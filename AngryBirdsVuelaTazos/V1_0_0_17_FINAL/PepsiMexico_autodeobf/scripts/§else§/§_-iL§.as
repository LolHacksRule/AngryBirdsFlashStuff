package §else§
{
   import §_-PD§.HighscoreSidebar;
   import §_-e3§.§_-JN§;
   import §_-y7§.§_-VA§;
   
   public class §_-iL§ extends §_-VA§
   {
      
      public static var §_-1S§:HighscoreSidebar;
       
      
      private var §_-Gu§:Class;
      
      public function §_-iL§(param1:Boolean, param2:String)
      {
         this.§_-Gu§ = §_-SB§;
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-1S§ == null)
         {
            §_-1S§ = new HighscoreSidebar();
         }
         §_-1S§.§_-bp§(§_-JN§.§_-Yd§(this.§_-Gu§),§_-NY§.container,null);
         §_-1S§.container.x = §_-Qu§.§_-1q§;
         §_-NY§.container.addComponent(§_-1S§.container);
      }
      
      override public function deActivate() : void
      {
         §_-NY§.container.removeComponent(§_-1S§.container);
         §_-1S§.deActivate();
         super.deActivate();
      }
   }
}
