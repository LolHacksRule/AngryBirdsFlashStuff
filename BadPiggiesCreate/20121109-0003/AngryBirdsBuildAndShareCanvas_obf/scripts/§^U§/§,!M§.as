package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §;<§.§'B§;
   import §@y§.§0=§;
   
   public class §,!M§ extends §'B§
   {
      
      public static const §%!Q§:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §%!Q§ = "FeedState";
         }
      }
      
      private var §%?§:Boolean = false;
      
      public function §,!M§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.init();
         }
         while(true)
         {
            §`!v§ = new §>!V§(this);
            while(!_loc1_)
            {
               §`!v§.init(§]!M§.§"!V§.Views.View_Feed[0]);
               if(!_loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            if(_loc1_ || _loc1_)
            {
               if(§7!X§.§[p§ != null)
               {
               }
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && _loc2_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(!(_loc3_ && this))
            {
               if(§§pop() == §'B§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!_loc3_)
                     {
                        if(_loc4_)
                        {
                           §§goto(addr62);
                        }
                        else
                        {
                           addr89:
                        }
                        return _loc2_;
                     }
                     if(_loc4_)
                     {
                        break;
                     }
                  }
                  return §'B§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr89);
         }
         addr62:
         return §'B§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            this.§%?§ = false;
         }
         do
         {
            super.deActivate();
         }
         while(_loc1_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr45:
               §§push(0);
               if(_loc6_ || param2)
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
                  mNextState = StatePlay.§%!Q§;
                  if(!_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr45);
      }
   }
}
