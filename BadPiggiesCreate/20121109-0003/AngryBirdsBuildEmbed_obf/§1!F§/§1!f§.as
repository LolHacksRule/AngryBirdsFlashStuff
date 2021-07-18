package §1!F§
{
   import §!y§.§2U§;
   import §!y§.§=!Z§;
   import §#!4§.§+!S§;
   import §=!3§.§;!!§;
   import com.rovio.assets.§1F§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §1!f§ extends §;!!§
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const §2!K§:Number = 6000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            STATE_NAME = "FlashGoes11State";
            if(!(_loc1_ && _loc1_))
            {
               §2!K§ = 6000;
            }
         }
      }
      
      private var §^!A§:Number = -1;
      
      private var §#!M§:MovieClip = null;
      
      public function §1!f§(param1:Boolean = false, param2:String = "FlashGoes11State")
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
         if(_loc2_ || _loc2_)
         {
            super.init();
            if(!_loc1_)
            {
               addr38:
               §+!$§ = new §2U§(this);
               if(!(_loc1_ && _loc1_))
               {
                  §+!$§.init(§=!Z§.§;K§.Views.View_FlashGoes11[0]);
               }
            }
            return;
         }
         §§goto(addr38);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super.activate();
         }
         var _loc1_:Class = §1F§.§"!_§("MovieClip_Animation");
         if(_loc4_ || this)
         {
            this.§#!M§ = new _loc1_();
            if(!(_loc3_ && _loc3_))
            {
               §+!$§.addChild(this.§#!M§);
               §§goto(addr63);
            }
            §§goto(addr113);
         }
         addr63:
         this.§#!M§.scaleX = this.§#!M§.scaleY = 1.3;
         this.§#!M§.x = (1024 - 1024 * 1.3) / 2;
         if(!(_loc3_ && _loc1_))
         {
            this.§#!M§.y = (768 - 768 * 1.3) / 2;
            if(!_loc3_)
            {
               addr113:
               this.§^!A§ = getTimer();
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
         §§push(_loc2_);
         if(!(_loc3_ && this))
         {
            if(§§pop() != §;!!§.STATE_STATUS_RUNNING)
            {
               if(_loc4_ || this)
               {
                  §§goto(addr58);
               }
            }
            else
            {
               if(this.§#!M§.currentFrame == this.§#!M§.totalFrames)
               {
                  mNextState = §#!@§.STATE_NAME;
                  if(_loc3_ && this)
                  {
                  }
                  §§goto(addr101);
               }
               if(mNextState.length > 0)
               {
                  if(_loc4_ || param1)
                  {
                     return §;!!§.STATE_STATUS_COMPLETED;
                  }
               }
            }
            addr101:
            return §;!!§.STATE_STATUS_RUNNING;
         }
         addr58:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§+!S§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
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
                  mNextState = StatePlay.STATE_NAME;
                  if(_loc5_ || param1)
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
