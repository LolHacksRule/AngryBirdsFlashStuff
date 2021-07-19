package §;u§
{
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import §`"%§.§ "<§;
   import §`"%§.§`_§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §`!7§ extends §+d§
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const §6!P§:Number = 6000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            STATE_NAME = "FlashGoes11State";
            do
            {
               §6!P§ = 6000;
            }
            while(_loc1_);
            
         }
      }
      
      private var §^!9§:Number = -1;
      
      private var §4",§:MovieClip = null;
      
      public function §`!7§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
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
            while(true)
            {
               §2"@§ = new §`_§(this);
               §§goto(addr58);
            }
         }
         addr58:
         while(true)
         {
            §2"@§.init(§ "<§.§%I§.Views.View_FlashGoes11[0]);
            if(_loc1_)
            {
               if(!(_loc2_ && this))
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
         if(!_loc3_)
         {
            super.activate();
         }
         var _loc1_:Class = §?q§.§ q§("MovieClip_Animation");
         if(!_loc3_)
         {
            this.§4",§ = new _loc1_();
            if(!(_loc3_ && _loc1_))
            {
               §2"@§.addChild(this.§4",§);
               if(!(_loc3_ && this))
               {
                  addr60:
                  this.§4",§.scaleX = this.§4",§.scaleY = 1.3;
                  if(!(_loc3_ && this))
                  {
                     this.§4",§.x = (1024 - 1024 * 1.3) / 2;
                  }
               }
               while(true)
               {
                  this.§4",§.y = (768 - 768 * 1.3) / 2;
                  loop1:
                  while(_loc4_)
                  {
                     while(true)
                     {
                        this.§^!9§ = getTimer();
                        if(_loc4_)
                        {
                           break;
                        }
                        continue loop1;
                     }
                     return;
                  }
               }
            }
            §§goto(addr114);
         }
         §§goto(addr60);
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
            if(!_loc3_)
            {
               if(§§pop() == §+d§.STATE_STATUS_RUNNING)
               {
                  while(true)
                  {
                     if(this.§4",§.currentFrame != this.§4",§.totalFrames)
                     {
                        while(true)
                        {
                           if(mNextState.length > 0)
                           {
                              if(!_loc4_)
                              {
                                 addr77:
                                 break;
                              }
                              §§goto(addr60);
                           }
                           break;
                           §§goto(addr114);
                        }
                     }
                     loop1:
                     for(; !(_loc3_ && this); if(_loc4_ || param1)
                     {
                        return §+d§.STATE_STATUS_COMPLETED;
                     })
                     {
                        if(!(_loc4_ || this))
                        {
                           addr122:
                           return _loc2_;
                           addr121:
                        }
                        mNextState = §5!+§.STATE_NAME;
                        while(true)
                        {
                           addr60:
                           if(_loc4_ || _loc2_)
                           {
                              continue loop1;
                           }
                        }
                     }
                     continue;
                     return §+d§.STATE_STATUS_RUNNING;
                  }
               }
               §§goto(addr121);
            }
            §§goto(addr122);
         }
         §§goto(addr77);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§""B§) : void
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
                  mNextState = StatePlay.STATE_NAME;
                  if(!(_loc6_ && param1))
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
