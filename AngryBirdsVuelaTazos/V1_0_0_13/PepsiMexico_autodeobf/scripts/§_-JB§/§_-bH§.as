package §_-JB§
{
   import §_-cu§.§_-UO§;
   import §_-ex§.§_-MA§;
   import §_-m7§.HighscoreSidebar;
   
   public class §_-bH§ extends §_-UO§
   {
      
      public static var §_-dM§:HighscoreSidebar;
       
      
      private var §_-Nm§:Class;
      
      public function §_-bH§(param1:Boolean, param2:String)
      {
         this.§_-Nm§ = §_-2v§;
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-dM§ == null)
         {
            §_-dM§ = new HighscoreSidebar();
         }
         §_-dM§.§_-87§(§_-MA§.§_-lC§(this.§_-Nm§),§_-kl§.container,null);
         §_-dM§.container.x = §_-2U§.§_-EK§;
         §_-kl§.container.addComponent(§_-dM§.container);
      }
      
      override public function deActivate() : void
      {
         §_-kl§.container.removeComponent(§_-dM§.container);
         §_-dM§.deActivate();
         super.deActivate();
      }
   }
}
