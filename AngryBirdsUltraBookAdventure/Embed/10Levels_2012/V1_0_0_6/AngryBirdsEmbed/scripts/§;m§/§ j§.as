package §;m§
{
   import §0w§.§0#§;
   import §0w§.§06§;
   import §6H§.§>3§;
   import §`!0§.§"?§;
   
   public class § j§ extends §>3§
   {
      
      public static const §-!A§:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!A§ = "FeedState";
         }
      }
      
      private var §4=§:Boolean = false;
      
      public function § j§(param1:Boolean = false, param2:String = "FeedState")
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
            if(_loc2_)
            {
               §§goto(addr38);
            }
            §§goto(addr50);
         }
         addr38:
         §-f§ = new §0#§(this);
         if(_loc2_ || _loc1_)
         {
            addr50:
            §-f§.init(§06§.§-`§.Views.View_Feed[0]);
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.activate();
            if(_loc1_ || this)
            {
               if(§1!§.§'a§ != null)
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
         if(_loc3_ || _loc2_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc3_)
         {
            §§push(_loc2_);
            if(!(_loc4_ && this))
            {
               if(§§pop() != §>3§.STATE_STATUS_RUNNING)
               {
                  if(!_loc4_)
                  {
                     §§push(_loc2_);
                  }
                  else
                  {
                     §§goto(addr83);
                  }
               }
               else
               {
                  if(mNextState.length > 0)
                  {
                     if(!(_loc4_ && this))
                     {
                        §§goto(addr83);
                     }
                  }
                  return §>3§.STATE_STATUS_RUNNING;
               }
               §§goto(addr83);
            }
            return §§pop();
         }
         addr83:
         return §>3§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            this.§4=§ = false;
            if(!_loc2_)
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && param3))
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr65:
               §§push(0);
               if(_loc6_ || param1)
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
                  mNextState = StatePlay.§-!A§;
                  if(!(_loc5_ && param2))
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr65);
      }
   }
}
