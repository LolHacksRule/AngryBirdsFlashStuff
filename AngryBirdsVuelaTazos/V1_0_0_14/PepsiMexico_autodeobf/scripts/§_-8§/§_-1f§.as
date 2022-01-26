package §_-8§
{
   import §_-Eo§.§_-EX§;
   import §_-Kn§.HighscoreSidebar;
   import §_-qT§.§_-O5§;
   
   public class §_-1f§ extends §_-O5§
   {
      
      public static var §_-5D§:HighscoreSidebar;
       
      
      private var §_-XY§:Class;
      
      public function §_-1f§(param1:Boolean, param2:String)
      {
         this.§_-XY§ = §_-ne§;
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-5D§ == null)
         {
            §_-5D§ = new HighscoreSidebar();
         }
         §_-5D§.§_-cC§(§_-EX§.§_-e9§(this.§_-XY§),§_-Ih§.container,null);
         §_-5D§.container.x = §_-Tj§.§_-4r§;
         §_-Ih§.container.addComponent(§_-5D§.container);
      }
      
      override public function deActivate() : void
      {
         §_-Ih§.container.removeComponent(§_-5D§.container);
         §_-5D§.deActivate();
         super.deActivate();
      }
   }
}
