package § !k§
{
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §8,§.§+_§;
   import §=R§.§7!"§;
   
   public class §;!H§ extends §+_§
   {
      
      public static const §3F§:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && §;!H§))
         {
            §3F§ = "FeedState";
         }
      }
      
      private var §>!0§:Boolean = false;
      
      public function §;!H§(param1:Boolean = false, param2:String = "FeedState")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.init();
         }
         while(true)
         {
            §`-§ = new § C§(this);
            while(_loc2_)
            {
               §`-§.init(dynamic.§[6§.Views.View_Feed[0]);
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
         if(_loc1_ || _loc1_)
         {
            super.activate();
            if(_loc1_)
            {
               if(§4A§.§+!$§ != null)
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
            if(_loc3_ || _loc2_)
            {
               if(§§pop() == §+_§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(_loc4_ && this)
                     {
                        break;
                     }
                     if(!_loc4_)
                     {
                        if(!(_loc4_ && param1))
                        {
                           §§goto(addr78);
                        }
                        else
                        {
                           addr93:
                        }
                        return _loc2_;
                     }
                  }
                  return §+_§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr93);
         }
         addr78:
         return §+_§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.§>!0§ = false;
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
         if(_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_ || param3)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr59:
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
                  mNextState = StatePlay.§3F§;
                  if(!_loc6_)
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
