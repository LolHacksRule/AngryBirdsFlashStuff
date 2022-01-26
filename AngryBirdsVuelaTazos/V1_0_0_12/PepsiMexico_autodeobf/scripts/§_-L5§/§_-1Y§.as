package §_-L5§
{
   import §_-IC§.§_-Uw§;
   import §_-RG§.§_-gL§;
   import §_-TQ§.HighscoreSidebar;
   
   public class §_-1Y§ extends §_-Uw§
   {
      
      private static var §_-Fx§:Class = §_-Wk§;
      
      public static var §_-1B§:HighscoreSidebar;
       
      
      public function §_-1Y§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-1B§ == null)
         {
            §_-1B§ = new HighscoreSidebar();
         }
         §_-1B§.§_-HV§(§_-gL§.§_-Bp§(§_-Fx§),§_-Bv§.container,null);
         §_-1B§.§_-wB§.x = §_-0Y§.§_-dN§;
         §_-Bv§.container.addComponent(§_-1B§.§_-wB§);
      }
      
      override public function deActivate() : void
      {
         §_-Bv§.container.removeComponent(§_-1B§.§_-wB§);
         §_-1B§.§_-tV§();
         super.deActivate();
      }
   }
}
