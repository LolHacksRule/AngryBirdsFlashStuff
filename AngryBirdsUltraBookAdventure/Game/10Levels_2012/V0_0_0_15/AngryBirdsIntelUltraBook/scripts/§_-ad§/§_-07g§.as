package §_-ad§
{
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-x8§.§_-nG§;
   
   public class §_-07g§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "FeedState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-pk§ = "FeedState";
         }
      }
      
      private var §_-RV§:Boolean = false;
      
      public function §_-07g§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.init();
            while(true)
            {
               §_-s0§ = new §_-5q§(this);
               while(!(_loc1_ && _loc1_))
               {
                  §_-s0§.init(§_-vB§.§_-ky§.Views.View_Feed[0]);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr60:
               }
            }
         }
         §§goto(addr60);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.activate();
            if(_loc2_)
            {
               if(§_-05N§.§_-Xp§ != null)
               {
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(!(_loc3_ || _loc2_))
                     {
                        if(_loc3_ || param1)
                        {
                           break;
                        }
                        addr93:
                        return _loc2_;
                     }
                     if(_loc3_)
                     {
                        return §_-nG§.STATE_STATUS_COMPLETED;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  return §_-nG§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr93);
         }
         §§goto(addr95);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§_-RV§ = false;
            do
            {
               super.deActivate();
            }
            while(!(_loc2_ || _loc1_));
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr60:
               §§push(0);
               if(_loc5_ && param3)
               {
               }
            }
            else
            {
               §§push(1);
            }
            switch(§§pop())
            {
               case 0:
                  mNextState = StatePlay.§_-pk§;
                  if(!(_loc5_ && param3))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr60);
      }
   }
}
