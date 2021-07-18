package §0![§
{
   import §'!A§.§-!S§;
   import §1"2§.§'s§;
   import §1"2§.§`7§;
   import §5"-§.§5y§;
   
   public class §^!w§ extends §5y§
   {
      
      public static const §'=§:String = "FeedState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §'=§ = "FeedState";
         }
      }
      
      private var §=l§:Boolean = false;
      
      public function §^!w§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
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
         }
         while(true)
         {
            §?E§ = new §'s§(this);
            while(_loc1_)
            {
               §?E§.init(§`7§.§>"?§.Views.View_Feed[0]);
               if(!(_loc2_ && _loc1_))
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
            if(_loc1_ || this)
            {
               if(§]x§.§<1§ != null)
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
               if(§§pop() != §5y§.STATE_STATUS_RUNNING)
               {
                  if(!(_loc4_ && _loc2_))
                  {
                     §§goto(addr79);
                  }
                  else
                  {
                     while(true)
                     {
                     }
                     addr80:
                  }
               }
               while(mNextState.length > 0)
               {
                  if(_loc3_)
                  {
                     §§goto(addr49);
                  }
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§goto(addr80);
               }
               return §5y§.STATE_STATUS_RUNNING;
            }
            addr79:
            return _loc2_;
         }
         addr49:
         return §5y§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            this.§=l§ = false;
            do
            {
               super.deActivate();
            }
            while(_loc1_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-!S§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || param3)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr55:
               §§push(0);
               if(_loc5_)
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
                  mNextState = StatePlay.§'=§;
                  if(_loc6_ || param3)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr55);
      }
   }
}
