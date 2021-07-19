package § C§
{
   import §2]§.§#H§;
   import §2]§.§set §;
   import §]4§.§-§;
   import §`W§.§-[§;
   
   public class §+!A§ extends §-§
   {
      
      public static const §?B§:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §?B§ = "FeedState";
         }
      }
      
      private var §%+§:Boolean = false;
      
      public function §+!A§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.init();
            while(true)
            {
               §,R§ = new §#H§(this);
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            §,R§.init(§set §.§&!1§.Views.View_Feed[0]);
            if(!_loc2_)
            {
               if(_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
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
               if(§,!?§.§<J§ != null)
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
         if(_loc3_ || param1)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() == §-§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc4_ && _loc2_))
                     {
                        if(_loc3_)
                        {
                           §§goto(addr71);
                        }
                        else
                        {
                           addr88:
                        }
                        return _loc2_;
                     }
                     if(!(_loc4_ && this))
                     {
                        break;
                     }
                  }
                  return §-§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr88);
         }
         addr71:
         return §-§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            this.§%+§ = false;
            do
            {
               super.deActivate();
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param1))
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr64:
               §§push(0);
               if(_loc6_)
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
                  mNextState = StatePlay.§?B§;
                  if(!(_loc6_ && this))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr64);
      }
   }
}
