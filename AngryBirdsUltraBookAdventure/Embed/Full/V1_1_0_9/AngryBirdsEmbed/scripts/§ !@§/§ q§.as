package § !@§
{
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §7g§.§1Q§;
   
   public class § q§ extends §1Q§
   {
      
      public static const §>9§:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §>9§ = "FeedState";
         }
      }
      
      private var §5!5§:Boolean = false;
      
      public function § q§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
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
            if(_loc2_)
            {
               §§goto(addr33);
            }
            §§goto(addr40);
         }
         addr33:
         §]F§ = new §4!,§(this);
         if(!_loc1_)
         {
            addr40:
            §]F§.init(§5A§.§;L§.Views.View_Feed[0]);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.activate();
            if(_loc1_)
            {
               addr27:
               if(§5!#§.§^k§ != null)
               {
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         §§push(super.run(param1));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && _loc2_))
            {
               if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
               {
                  if(_loc3_)
                  {
                     §§goto(addr64);
                  }
               }
               else
               {
                  addr72:
                  if(mNextState.length > 0)
                  {
                     if(_loc3_)
                     {
                        return §1Q§.STATE_STATUS_COMPLETED;
                     }
                  }
               }
               return §1Q§.STATE_STATUS_RUNNING;
            }
            addr64:
            return _loc2_;
         }
         §§goto(addr72);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            this.§5!5§ = false;
            if(!(_loc2_ && this))
            {
               addr43:
               super.deActivate();
            }
            return;
         }
         §§goto(addr43);
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param2)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr49:
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
                  mNextState = StatePlay.§>9§;
                  if(_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr49);
      }
   }
}
