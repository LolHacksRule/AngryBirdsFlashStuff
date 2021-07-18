package §;u§
{
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   
   public class §%Z§ extends §+d§
   {
      
      public static const STATE_NAME:String = "FeedState";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "FeedState";
         }
      }
      
      private var §8!w§:Boolean = false;
      
      public function §%Z§(param1:Boolean = false, param2:String = "FeedState")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
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
         }
         do
         {
            §2"@§ = new §`_§(this);
            do
            {
               §2"@§.init(§ "<§.§%I§.Views.View_Feed[0]);
            }
            while(_loc1_);
            
         }
         while(!_loc2_);
         
      }
      
      override public function activate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.activate();
            if(!(_loc1_ && _loc1_))
            {
               if(§5!+§.§0"6§ != null)
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
         if(!(_loc3_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  while(mNextState.length > 0)
                  {
                     if(!(_loc4_ || param1))
                     {
                        break;
                     }
                     addr82:
                     if(!_loc3_)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           return §+d§.STATE_STATUS_COMPLETED;
                        }
                        addr89:
                        return _loc2_;
                     }
                  }
                  return §+d§.STATE_STATUS_RUNNING;
               }
            }
            §§goto(addr89);
         }
         §§goto(addr82);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            this.§8!w§ = false;
            do
            {
               super.deActivate();
            }
            while(!_loc1_);
            
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr59:
               §§push(0);
               if(_loc6_ && param1)
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
                  if(!(_loc6_ && param2))
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
