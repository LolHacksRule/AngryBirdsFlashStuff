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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§_-Gu§ = §_-SB§;
            if(!(_loc3_ && param1))
            {
               addr45:
               super(param1,param2);
            }
            return;
         }
         §§goto(addr45);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         super.activate();
         §§push(§_-1S§);
         if(!(_loc2_ && this))
         {
            if(§§pop() == null)
            {
               §_-1S§ = new HighscoreSidebar();
               if(!_loc2_)
               {
                  addr31:
                  §§push(§_-1S§);
                  if(_loc1_ || _loc2_)
                  {
                     §§pop().§_-bp§(§_-JN§.§_-Yd§(this.§_-Gu§),§_-NY§.container,null);
                     if(_loc1_ || _loc1_)
                     {
                        addr69:
                        §_-1S§.container.x = §_-Qu§.§_-1q§;
                        §_-NY§.container.addComponent(§_-1S§.container);
                     }
                  }
                  §§goto(addr69);
               }
               return;
            }
            §§goto(addr31);
         }
         §§goto(addr69);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §_-NY§.container.removeComponent(§_-1S§.container);
            if(!_loc2_)
            {
               §_-1S§.deActivate();
               if(_loc1_)
               {
                  addr45:
                  super.deActivate();
               }
               return;
            }
         }
         §§goto(addr45);
      }
   }
}
