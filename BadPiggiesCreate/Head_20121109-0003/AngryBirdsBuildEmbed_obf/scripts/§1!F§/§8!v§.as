package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §=!3§.§;!!§;
   
   public class §8!v§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            STATE_NAME = "FeedState";
         }
      }
      
      private var §#!<§:Boolean = false;
      
      public function §8!v§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
            if(!_loc2_)
            {
               §+!$§ = new §2U§(this);
               if(!_loc2_)
               {
                  addr39:
                  §+!$§.init(§=!Z§.§;K§.Views.View_Feed[0]);
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.activate();
            if(!_loc1_)
            {
               addr23:
               if(§#!@§.§,!;§ != null)
               {
               }
            }
            return;
         }
         §§goto(addr23);
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
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!_loc4_)
            {
               if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc4_ && this))
                  {
                     §§goto(addr59);
                  }
               }
               else if(mNextState.length > 0)
               {
                  if(!_loc4_)
                  {
                     return §;!!§.STATE_STATUS_COMPLETED;
                  }
               }
               return §;!!§.STATE_STATUS_RUNNING;
            }
            §§goto(addr59);
         }
         addr59:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§#!<§ = false;
            if(!_loc1_)
            {
               super.deActivate();
            }
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param2)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr64:
               §§push(0);
               if(!_loc5_)
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
                  mNextState = StatePlay.STATE_NAME;
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
