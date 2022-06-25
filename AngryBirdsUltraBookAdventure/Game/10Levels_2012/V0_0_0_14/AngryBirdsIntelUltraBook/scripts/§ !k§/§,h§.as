package § !k§
{
   import §1n§.§ C§;
   import §1n§.dynamic;
   import §8,§.§+_§;
   import §=R§.§7!"§;
   import com.rovio.assets.§9!N§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §,h§ extends §+_§
   {
      
      public static const §3F§:String = "FlashGoes11State";
      
      public static const §"b§:Number = 6000;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §3F§ = "FlashGoes11State";
            do
            {
               §"b§ = 6000;
            }
            while(!(_loc1_ || _loc1_));
            
         }
      }
      
      private var §"!C§:Number = -1;
      
      private var §?I§:MovieClip = null;
      
      public function §,h§(param1:Boolean = false, param2:String = "FlashGoes11State")
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
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super.init();
         }
         while(true)
         {
            §`-§ = new § C§(this);
            while(_loc2_ || _loc2_)
            {
               §`-§.init(dynamic.§[6§.Views.View_FlashGoes11[0]);
               if(!(_loc1_ && _loc1_))
               {
                  return;
               }
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.activate();
         }
         var _loc1_:Class = §9!N§.§0!k§("MovieClip_Animation");
         if(!(_loc4_ && _loc3_))
         {
            this.§?I§ = new _loc1_();
            if(!_loc4_)
            {
               §`-§.addChild(this.§?I§);
               addr38:
               if(!_loc4_)
               {
                  this.§?I§.scaleX = this.§?I§.scaleY = 1.3;
                  if(_loc3_)
                  {
                     this.§?I§.x = (1024 - 1024 * 1.3) / 2;
                  }
                  return;
                  addr89:
               }
               while(true)
               {
                  this.§?I§.y = (768 - 768 * 1.3) / 2;
                  while(_loc3_)
                  {
                     this.§"!C§ = getTimer();
                     if(_loc4_)
                     {
                        continue;
                     }
                     §§goto(addr89);
                  }
               }
            }
            §§goto(addr89);
         }
         §§goto(addr38);
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
         if(_loc4_ || this)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §+_§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  while(true)
                  {
                     if(this.§?I§.currentFrame == this.§?I§.totalFrames)
                     {
                        while(true)
                        {
                           mNextState = §4A§.§3F§;
                           §§goto(addr97);
                        }
                        addr93:
                     }
                     while(mNextState.length > 0)
                     {
                        if(!(_loc4_ || _loc2_))
                        {
                           if(_loc4_ || _loc3_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        if(!_loc3_)
                        {
                           if(_loc4_)
                           {
                              §§goto(addr64);
                           }
                           §§goto(addr93);
                        }
                        addr97:
                        §§goto(addr106);
                     }
                     return §+_§.STATE_STATUS_RUNNING;
                  }
               }
               §§goto(addr106);
            }
            addr106:
            while(_loc4_)
            {
            }
            return _loc2_;
         }
         addr64:
         return §+_§.STATE_STATUS_COMPLETED;
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && this))
         {
            super.deActivate();
         }
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            super.cleanup();
         }
      }
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§7!"§) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc4_:* = param2;
         if(!_loc5_)
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr55:
               §§push(0);
               if(_loc6_ || param2)
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
                  mNextState = StatePlay.§3F§;
                  if(_loc6_)
                  {
                     break;
                  }
            }
            return;
         }
         §§goto(addr55);
      }
   }
}
