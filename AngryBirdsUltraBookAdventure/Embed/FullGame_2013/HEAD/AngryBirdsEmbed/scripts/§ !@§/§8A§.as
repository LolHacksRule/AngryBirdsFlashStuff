package § !@§
{
   import §-!D§.§4!,§;
   import §-!D§.§5A§;
   import §0!#§.§-P§;
   import §7g§.§1Q§;
   import com.rovio.assets.§]!>§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §8A§ extends §1Q§
   {
      
      public static const §>9§:String = "FlashGoes11State";
      
      public static const §const§:Number = 6000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §>9§ = "FlashGoes11State";
            if(_loc1_ || _loc2_)
            {
               addr43:
               §const§ = 6000;
            }
            return;
         }
         §§goto(addr43);
      }
      
      private var §5!?§:Number = -1;
      
      private var §>!%§:MovieClip = null;
      
      public function §8A§(param1:Boolean = false, param2:String = "FlashGoes11State")
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
         if(_loc1_)
         {
            super.init();
            if(!(_loc2_ && this))
            {
               §§goto(addr37);
            }
            §§goto(addr49);
         }
         addr37:
         §]F§ = new §4!,§(this);
         if(_loc1_ || this)
         {
            addr49:
            §]F§.init(§5A§.§;L§.Views.View_FlashGoes11[0]);
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc2_)
         {
            super.activate();
         }
         var _loc1_:Class = §]!>§.§8!@§("MovieClip_Animation");
         this.§>!%§ = new _loc1_();
         if(!_loc4_)
         {
            §]F§.addChild(this.§>!%§);
            this.§>!%§.scaleX = this.§>!%§.scaleY = 1.3;
            if(_loc3_)
            {
               this.§>!%§.x = (1024 - 1024 * 1.3) / 2;
               §§goto(addr83);
            }
            §§goto(addr95);
         }
         addr83:
         this.§>!%§.y = (768 - 768 * 1.3) / 2;
         if(_loc3_)
         {
            addr95:
            this.§5!?§ = getTimer();
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(!_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc3_ && this))
         {
            §§push(_loc2_);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() != §1Q§.STATE_STATUS_RUNNING)
               {
                  return _loc2_;
               }
               else
               {
                  addr64:
                  if(this.§>!%§.currentFrame == this.§>!%§.totalFrames)
                  {
                     if(!(_loc3_ && _loc2_))
                     {
                        mNextState = §5!#§.§>9§;
                        addr82:
                        if(mNextState.length <= 0)
                        {
                           return §1Q§.STATE_STATUS_RUNNING;
                        }
                     }
                     return §1Q§.STATE_STATUS_COMPLETED;
                  }
                  §§goto(addr82);
               }
            }
            return §§pop();
         }
         §§goto(addr64);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§-P§) : void
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
               if(_loc6_ && param3)
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
                  if(_loc5_ || this)
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
