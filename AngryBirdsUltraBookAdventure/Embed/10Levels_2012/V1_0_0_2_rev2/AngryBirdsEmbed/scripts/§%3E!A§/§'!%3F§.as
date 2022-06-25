package §>!A§
{
   import §"!&§.§#!,§;
   import §-!F§.§^h§;
   import §<!G§.§!I§;
   import §<!G§.§^3§;
   import com.rovio.assets.§'!H§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §'!?§ extends §#!,§
   {
      
      public static const §?x§:String = "FlashGoes11State";
      
      public static const §&P§:Number = 6000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §?x§ = "FlashGoes11State";
            if(_loc2_)
            {
               addr29:
               §&P§ = 6000;
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §7]§:Number = -1;
      
      private var §;&§:MovieClip = null;
      
      public function §'!?§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
            if(_loc2_ || _loc1_)
            {
               §[=§ = new §^3§(this);
               if(_loc2_)
               {
                  addr50:
                  §[=§.init(§!I§.§7y§.Views.View_FlashGoes11[0]);
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            super.activate();
         }
         var _loc1_:Class = §'!H§.§&!G§("MovieClip_Animation");
         this.§;&§ = new _loc1_();
         §[=§.addChild(this.§;&§);
         this.§;&§.scaleX = this.§;&§.scaleY = 1.3;
         this.§;&§.x = (1024 - 1024 * 1.3) / 2;
         if(_loc3_)
         {
            this.§;&§.y = (768 - 768 * 1.3) / 2;
            if(_loc3_)
            {
               this.§7]§ = getTimer();
            }
         }
      }
      
      override public function run(param1:Number) : int
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         §§push(super.run(param1));
         if(_loc4_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(_loc2_);
         if(_loc4_ || this)
         {
            if(§§pop() != §#!,§.STATE_STATUS_RUNNING)
            {
               if(_loc4_ || _loc2_)
               {
                  §§goto(addr58);
               }
            }
            else
            {
               if(this.§;&§.currentFrame == this.§;&§.totalFrames)
               {
                  if(!_loc3_)
                  {
                     mNextState = §!!=§.§?x§;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr89);
                     }
                  }
                  return §#!,§.STATE_STATUS_COMPLETED;
               }
               addr89:
               if(mNextState.length > 0)
               {
                  if(_loc3_ && param1)
                  {
                     §§goto(addr103);
                  }
               }
               §§goto(addr103);
            }
            addr103:
            return §#!,§.STATE_STATUS_RUNNING;
         }
         addr58:
         return _loc2_;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§^h§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(_loc5_)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr44:
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
                  mNextState = StatePlay.§?x§;
                  if(_loc5_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr44);
      }
   }
}
