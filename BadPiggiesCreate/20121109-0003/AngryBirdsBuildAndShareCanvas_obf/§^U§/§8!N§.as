package §^U§
{
   import §&!<§.§>!V§;
   import §&!<§.§]!M§;
   import §;<§.§'B§;
   import §@y§.§0=§;
   import com.rovio.assets.§69§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §8!N§ extends §'B§
   {
      
      public static const §%!Q§:String = "FlashGoes11State";
      
      public static const §=!A§:Number = 6000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §%!Q§ = "FlashGoes11State";
            do
            {
               §=!A§ = 6000;
            }
            while(_loc1_ && §8!N§);
            
         }
      }
      
      private var §6L§:Number = -1;
      
      private var §,0§:MovieClip = null;
      
      public function §8!N§(param1:Boolean = false, param2:String = "FlashGoes11State")
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
         if(!(_loc2_ && _loc1_))
         {
            super.init();
            while(true)
            {
               §`!v§ = new §>!V§(this);
               while(!_loc2_)
               {
                  §`!v§.init(§]!M§.§"!V§.Views.View_FlashGoes11[0]);
                  if(_loc1_ || this)
                  {
                     return;
                     addr54:
                  }
               }
            }
         }
         §§goto(addr54);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.activate();
         }
         var _loc1_:Class = §69§.§ 0§("MovieClip_Animation");
         if(_loc4_)
         {
            this.§,0§ = new _loc1_();
            if(!_loc3_)
            {
               §`!v§.addChild(this.§,0§);
               if(!_loc3_)
               {
                  this.§,0§.scaleX = this.§,0§.scaleY = 1.3;
                  addr40:
                  if(_loc4_)
                  {
                     this.§,0§.x = (1024 - 1024 * 1.3) / 2;
                     while(true)
                     {
                        this.§,0§.y = (768 - 768 * 1.3) / 2;
                     }
                     addr110:
                  }
               }
            }
            while(true)
            {
               this.§6L§ = getTimer();
               if(_loc3_)
               {
                  continue;
               }
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr110);
            }
            return;
         }
         §§goto(addr40);
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
         if(_loc4_)
         {
            §§push(_loc2_);
            if(_loc4_)
            {
               if(§§pop() == §'B§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     if(this.§,0§.currentFrame != this.§,0§.totalFrames)
                     {
                        while(mNextState.length > 0)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr40);
                           }
                           §§goto(addr43);
                        }
                        addr27:
                     }
                     loop1:
                     while(_loc4_)
                     {
                        mNextState = §7!X§.§%!Q§;
                        while(!(_loc3_ && this))
                        {
                           if(_loc4_ || this)
                           {
                              if(_loc4_ || this)
                              {
                                 §§goto(addr27);
                              }
                              continue loop1;
                           }
                        }
                        return _loc2_;
                     }
                     continue;
                     return §'B§.STATE_STATUS_RUNNING;
                  }
               }
               §§goto(addr106);
            }
            §§goto(addr107);
         }
         addr40:
         return §'B§.STATE_STATUS_COMPLETED;
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
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§0=§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!(_loc5_ && this))
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr50:
               §§push(0);
               if(_loc5_ && param1)
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
                  mNextState = StatePlay.§%!Q§;
                  if(_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr50);
      }
   }
}
