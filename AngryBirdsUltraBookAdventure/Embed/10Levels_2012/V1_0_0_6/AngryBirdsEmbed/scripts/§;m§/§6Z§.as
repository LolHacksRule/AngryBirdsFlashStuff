package §;m§
{
   import §0w§.§0#§;
   import §0w§.§06§;
   import §6H§.§>3§;
   import §`!0§.§"?§;
   import com.rovio.assets.§!Q§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §6Z§ extends §>3§
   {
      
      public static const §-!A§:String = "FlashGoes11State";
      
      public static const §2!$§:Number = 6000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §-!A§ = "FlashGoes11State";
            if(_loc2_)
            {
               addr29:
               §2!$§ = 6000;
            }
            return;
         }
         §§goto(addr29);
      }
      
      private var §9§:Number = -1;
      
      private var §-!C§:MovieClip = null;
      
      public function §6Z§(param1:Boolean = false, param2:String = "FlashGoes11State")
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
               §-f§ = new §0#§(this);
               if(_loc2_)
               {
                  addr50:
                  §-f§.init(§06§.§-`§.Views.View_FlashGoes11[0]);
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
         var _loc1_:Class = §!Q§.§^!H§("MovieClip_Animation");
         this.§-!C§ = new _loc1_();
         §-f§.addChild(this.§-!C§);
         this.§-!C§.scaleX = this.§-!C§.scaleY = 1.3;
         this.§-!C§.x = (1024 - 1024 * 1.3) / 2;
         if(_loc3_)
         {
            this.§-!C§.y = (768 - 768 * 1.3) / 2;
            if(_loc3_)
            {
               this.§9§ = getTimer();
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
            if(§§pop() != §>3§.STATE_STATUS_RUNNING)
            {
               if(_loc4_ || _loc2_)
               {
                  §§goto(addr58);
               }
            }
            else
            {
               if(this.§-!C§.currentFrame == this.§-!C§.totalFrames)
               {
                  if(!_loc3_)
                  {
                     mNextState = §1!§.§-!A§;
                     if(!(_loc3_ && _loc2_))
                     {
                        §§goto(addr89);
                     }
                  }
                  return §>3§.STATE_STATUS_COMPLETED;
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
            return §>3§.STATE_STATUS_RUNNING;
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§"?§) : void
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
                  mNextState = StatePlay.§-!A§;
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
