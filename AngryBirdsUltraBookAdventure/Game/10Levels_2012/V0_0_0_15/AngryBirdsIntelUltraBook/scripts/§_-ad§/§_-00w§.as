package §_-ad§
{
   import §_-MN§.§_-wU§;
   import §_-Yl§.§_-5q§;
   import §_-Yl§.§_-vB§;
   import §_-x8§.§_-nG§;
   import com.rovio.assets.§_-Fc§;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class §_-00w§ extends §_-nG§
   {
      
      public static const §_-pk§:String = "FlashGoes11State";
      
      public static const §_-Qo§:Number = 6000;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-pk§ = "FlashGoes11State";
            do
            {
               §_-Qo§ = 6000;
            }
            while(_loc1_ && §_-00w§);
            
         }
      }
      
      private var §_-bl§:Number = -1;
      
      private var §_-0BJ§:MovieClip = null;
      
      public function §_-00w§(param1:Boolean = false, param2:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
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
            do
            {
               §_-s0§ = new §_-5q§(this);
               do
               {
                  §_-s0§.init(§_-vB§.§_-ky§.Views.View_FlashGoes11[0]);
               }
               while(!(_loc1_ || _loc2_));
               
            }
            while(_loc2_);
            
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
         var _loc1_:Class = §_-Fc§.§_-YE§("MovieClip_Animation");
         if(_loc3_ || _loc2_)
         {
            this.§_-0BJ§ = new _loc1_();
            if(!(_loc4_ && _loc2_))
            {
               §_-s0§.addChild(this.§_-0BJ§);
               if(_loc3_)
               {
                  this.§_-0BJ§.scaleX = this.§_-0BJ§.scaleY = 1.3;
                  if(!_loc4_)
                  {
                     this.§_-0BJ§.x = (1024 - 1024 * 1.3) / 2;
                     addr72:
                  }
                  while(true)
                  {
                     this.§_-0BJ§.y = (768 - 768 * 1.3) / 2;
                     loop1:
                     while(_loc3_ || _loc3_)
                     {
                        while(true)
                        {
                           this.§_-bl§ = getTimer();
                           if(_loc3_)
                           {
                              break;
                           }
                           continue loop1;
                        }
                        return;
                     }
                  }
               }
               §§goto(addr113);
            }
            §§goto(addr72);
         }
         §§goto(addr84);
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
         if(!_loc3_)
         {
            §§push(_loc2_);
            if(!_loc3_)
            {
               if(§§pop() == §_-nG§.STATE_STATUS_RUNNING)
               {
                  loop0:
                  do
                  {
                     if(this.§_-0BJ§.currentFrame == this.§_-0BJ§.totalFrames)
                     {
                        while(true)
                        {
                           mNextState = §_-05N§.§_-pk§;
                           §§goto(addr92);
                        }
                        addr88:
                     }
                     while(mNextState.length > 0)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           if(_loc4_)
                           {
                              continue loop0;
                           }
                        }
                        else
                        {
                           if(!(_loc3_ && this))
                           {
                              addr79:
                              break;
                           }
                           §§goto(addr88);
                        }
                        addr92:
                        §§goto(addr106);
                     }
                     return §_-nG§.STATE_STATUS_RUNNING;
                  }
                  while(_loc3_);
                  
                  return §_-nG§.STATE_STATUS_COMPLETED;
               }
               §§goto(addr106);
            }
            addr106:
            while(!(_loc3_ && param1))
            {
            }
            return _loc2_;
         }
         §§goto(addr79);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
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
      
      override public function uiInteractionHandler(param1:int, param2:String, param3:§_-wU§) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc4_:* = param2;
         if(!(_loc6_ && this))
         {
            if("CLOSE_FEED" === _loc4_)
            {
               addr59:
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
                  mNextState = StatePlay.§_-pk§;
                  if(!_loc6_)
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
