package §_-Hq§
{
   import §_-TE§.§_-PN§;
   import §_-ZG§.§_-eW§;
   import §_-ic§.HighscoreSidebar;
   
   public class §_-UR§ extends §_-PN§
   {
      
      private static var §_-5Z§:Class = §_-24§;
      
      public static var §_-03§:HighscoreSidebar;
       
      
      public function §_-UR§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-03§ == null)
         {
            §_-03§ = new HighscoreSidebar();
         }
         §_-03§.§_-MC§(§_-eW§.§_-Qf§(§_-5Z§),§_-qE§.container,null);
         §_-03§.§_-EU§.x = §_-I8§.§_-iX§;
         §_-qE§.container.addComponent(§_-03§.§_-EU§);
      }
      
      override public function deActivate() : void
      {
         §_-qE§.container.removeComponent(§_-03§.§_-EU§);
         §_-03§.§_-XY§();
         super.deActivate();
      }
   }
}
