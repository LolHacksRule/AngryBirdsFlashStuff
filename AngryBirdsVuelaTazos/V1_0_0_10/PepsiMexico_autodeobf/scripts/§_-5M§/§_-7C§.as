package §_-5M§
{
   import §_-Je§.§_-RH§;
   import §_-LL§.HighscoreSidebar;
   import §_-ot§.§_-TP§;
   
   public class §_-7C§ extends §_-RH§
   {
      
      private static var §_-Eo§:Class = §_-Ed§;
      
      public static var §_-6B§:HighscoreSidebar;
       
      
      public function §_-7C§(param1:Boolean, param2:String)
      {
         super(param1,param2);
      }
      
      override public function activate() : void
      {
         super.activate();
         if(§_-6B§ == null)
         {
            §_-6B§ = new HighscoreSidebar();
         }
         §_-6B§.§_-47§(§_-TP§.§_-bz§(§_-Eo§),§_-wB§.container,null);
         §_-6B§.§_-K4§.x = §_-5e§.§_-ZL§;
         §_-wB§.container.addComponent(§_-6B§.§_-K4§);
      }
      
      override public function deActivate() : void
      {
         §_-wB§.container.removeComponent(§_-6B§.§_-K4§);
         §_-6B§.§_-tD§();
         super.deActivate();
      }
   }
}
