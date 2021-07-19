package §,!"§
{
   import §'!O§.§'!#§;
   import §6v§.§`M§;
   import §]!-§.§`Z§;
   import §]!-§.§`o§;
   
   public class §8v§ extends §'!#§
   {
      
      public static const §-A§:String = "FeedState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §-A§ = "FeedState";
         }
      }
      
      private var §"!$§:Boolean = false;
      
      public function §8v§(param1:Boolean = false, param2:String = "FeedState")
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
         }
         do
         {
            §0q§ = new §`o§(this);
            do
            {
               §0q§.init(§`Z§.§5c§.Views.View_Feed[0]);
            }
            while(_loc2_);
            
         }
         while(!_loc1_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super.activate();
            if(!(_loc2_ && this))
            {
               addr27:
               if(§8j§.§]!H§ != null)
               {
               }
            }
            return;
         }
         §§goto(addr27);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && param1))
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() == §'!#§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(mNextState.length > 0)
                  {
                     if(_loc3_ && param1)
                     {
                        break;
                     }
                     if(_loc4_ || this)
                     {
                        if(!_loc3_)
                        {
                           return §'!#§.STATE_STATUS_COMPLETED;
                        }
                        addr94:
                        return _loc2_;
                     }
                     while(true)
                     {
                        continue loop0;
                     }
                  }
                  return §'!#§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr94);
         }
         §§goto(addr96);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            this.§"!$§ = false;
         }
         do
         {
            super.deActivate();
         }
         while(_loc1_);
         
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§`M§) : void
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
               if(_loc5_ || param1)
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
                  mNextState = StatePlay.§-A§;
                  if(_loc5_ || this)
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
