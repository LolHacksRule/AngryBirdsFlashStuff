package §9!5§
{
   import §2h§.§'!^§;
   import §2h§.§[!'§;
   import §9Y§.§6!8§;
   import §<!>§.§?Y§;
   
   public class §-!-§ extends §?Y§
   {
      
      public static const §?h§:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §?h§ = "FeedState";
         }
      }
      
      private var §]!X§:Boolean = false;
      
      public function §-!-§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.init();
         }
         do
         {
            §5!P§ = new §'!^§(this);
            do
            {
               §5!P§.init(§[!'§.§+@§.Views.View_Feed[0]);
            }
            while(!(_loc2_ || _loc2_));
            
         }
         while(!_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.activate();
            if(!(_loc2_ && _loc2_))
            {
               if(§!i§.§&n§ != null)
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
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §?Y§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!_loc4_)
                     {
                        if(_loc3_ || _loc2_)
                        {
                           return §?Y§.STATE_STATUS_COMPLETED;
                        }
                        addr83:
                        return _loc2_;
                     }
                     if(!(_loc4_ && this))
                     {
                        addr76:
                        break;
                     }
                  }
                  return §?Y§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr83);
         }
         §§goto(addr76);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§]!X§ = false;
            do
            {
               super.deActivate();
            }
            while(!_loc2_);
            
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§6!8§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!_loc6_)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr59:
               §§push(0);
               if(_loc5_ || param3)
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
                  mNextState = StatePlay.§?h§;
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr59);
      }
   }
}
