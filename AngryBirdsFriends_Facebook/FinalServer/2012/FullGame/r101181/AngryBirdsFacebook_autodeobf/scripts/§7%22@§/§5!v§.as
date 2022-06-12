package §7"@§
{
   import §#^§.§ "A§;
   import §#^§.§7!A§;
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   
   public class §5!v§ extends §1-§
   {
      
      public static const STATE_NAME:String = "FeedState";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            STATE_NAME = "FeedState";
         }
      }
      
      private var §>"&§:Boolean = false;
      
      public function §5!v§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            super(param1,param2);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.init();
            while(true)
            {
               §6w§ = new §7!A§(this);
               §§goto(addr74);
            }
         }
         addr74:
         while(true)
         {
            §6w§.init(§ "A§.§4[§.Views.View_Feed[0]);
            if(!(_loc1_ && this))
            {
               if(!_loc1_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.activate();
            if(_loc1_)
            {
               if(§#;§.§?r§ != null)
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
         if(!(_loc3_ && param1))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && _loc3_))
         {
            §§push(_loc2_);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() != §1-§.STATE_STATUS_RUNNING)
               {
                  if(_loc4_ || param1)
                  {
                     §§goto(addr95);
                  }
                  else
                  {
                     addr96:
                     while(true)
                     {
                     }
                     addr96:
                  }
               }
               while(mNextState.length > 0)
               {
                  if(_loc4_)
                  {
                     return §1-§.STATE_STATUS_COMPLETED;
                  }
                  if(_loc4_)
                  {
                     break;
                  }
                  §§goto(addr96);
               }
               return §1-§.STATE_STATUS_RUNNING;
            }
            addr95:
            return _loc2_;
         }
         §§goto(addr96);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§>"&§ = false;
            do
            {
               super.deActivate();
            }
            while(!(_loc2_ || this));
            
         }
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§'M§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(_loc6_ || this)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr65:
               §§push(0);
               if(_loc5_ && param2)
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
                  if(_loc6_ || param3)
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
