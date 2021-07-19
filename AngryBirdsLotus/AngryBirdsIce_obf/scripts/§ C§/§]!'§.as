package § C§
{
   import §2]§.§#H§;
   import §2]§.§set §;
   import §]4§.§-§;
   import §`W§.§-[§;
   import com.rovio.assets.§>D§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §]!'§ extends §-§
   {
      
      public static const §?B§:String = "FlashGoes11State";
      
      public static const §%V§:Number = 6000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §?B§ = "FlashGoes11State";
            do
            {
               §%V§ = 6000;
            }
            while(!(_loc2_ || _loc2_));
            
         }
      }
      
      private var §`3§:Number = -1;
      
      private var §,k§:MovieClip = null;
      
      public function §]!'§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && param1))
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
            while(true)
            {
               §,R§ = new §#H§(this);
               §§goto(addr69);
            }
         }
         addr69:
         while(true)
         {
            §,R§.init(§set §.§&!1§.Views.View_FlashGoes11[0]);
            if(_loc2_ || _loc2_)
            {
               if(_loc2_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.activate();
         }
         var _loc1_:Class = §>D§.§`C§("MovieClip_Animation");
         if(!(_loc3_ && this))
         {
            this.§,k§ = new _loc1_();
         }
         §,R§.addChild(this.§,k§);
         this.§,k§.scaleX = this.§,k§.scaleY = 1.3;
         if(!(_loc3_ && _loc1_))
         {
            this.§,k§.x = (1024 - 1024 * 1.3) / 2;
         }
         this.§,k§.y = (768 - 768 * 1.3) / 2;
         this.§`3§ = getTimer();
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!(_loc3_ && this))
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_)
         {
            if(§§pop() == §-§.STATE_STATUS_RUNNING)
            {
               loop0:
               do
               {
                  if(this.§,k§.currentFrame == this.§,k§.totalFrames)
                  {
                     while(true)
                     {
                        mNextState = §,!?§.§?B§;
                        addr90:
                        while(true)
                        {
                        }
                     }
                     addr86:
                  }
                  while(mNextState.length > 0)
                  {
                     if(_loc4_)
                     {
                        if(!_loc3_)
                        {
                           continue loop0;
                        }
                        §§goto(addr86);
                     }
                     §§goto(addr90);
                  }
                  return §-§.STATE_STATUS_RUNNING;
               }
               while(!_loc4_);
               
               return §-§.STATE_STATUS_COMPLETED;
            }
            return _loc2_;
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            super.deActivate();
         }
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-[§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && param3))
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr64:
               §§push(0);
               if(_loc6_ && this)
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
                  if(!(_loc6_ && param3))
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
