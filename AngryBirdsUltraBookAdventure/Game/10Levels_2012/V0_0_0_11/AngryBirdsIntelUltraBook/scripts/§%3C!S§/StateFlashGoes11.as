package §<!S§
{
   import §4!9§.§6"§;
   import §4!9§.§>!^§;
   import §4H§.StateBase;
   import §>!-§.UIEventListenerRovio;
   import com.rovio.assets.AssetCache;
   import flash.display.MovieClip;
   import flash.utils.getTimer;
   
   public class StateFlashGoes11 extends StateBase
   {
      
      public static const STATE_NAME:String = "FlashGoes11State";
      
      public static const STATE_DISPLAY_TIME_MS:Number = 6000;
      
      {
         var STATE_NAME:Boolean = true;
         var STATE_DISPLAY_TIME_MS:Boolean = false;
         if(!STATE_DISPLAY_TIME_MS)
         {
            while(true)
            {
               STATE_NAME = "FlashGoes11State";
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            do
            {
               STATE_DISPLAY_TIME_MS = 6000;
            }
            while(STATE_DISPLAY_TIME_MS);
            
            if(STATE_NAME)
            {
               if(STATE_NAME || STATE_DISPLAY_TIME_MS)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private var §^!!§:Number = -1;
      
      private var §=n§:MovieClip = null;
      
      public function StateFlashGoes11(initState:Boolean = false, name:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        super(initState,name);
                        while(_loc4_)
                        {
                        }
                        if(!_loc4_)
                        {
                           continue loop0;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr71);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               super.init();
            }
            addr115:
         }
         loop1:
         while(true)
         {
            while(true)
            {
               §5!M§ = new §6"§(this);
               continue loop1;
               addr69:
               if(_loc1_ && _loc1_)
               {
                  continue;
               }
               if(_loc2_)
               {
                  addr88:
                  if(_loc1_)
                  {
                     loop5:
                     while(true)
                     {
                        if(!(_loc1_ && _loc2_))
                        {
                           §§goto(addr69);
                        }
                        else
                        {
                           while(true)
                           {
                              §5!M§.init(§>!^§.§8'§.Views.View_FlashGoes11[0]);
                              continue loop5;
                           }
                           addr91:
                        }
                     }
                     continue;
                  }
                  addr32:
                  if(_loc2_ || this)
                  {
                     return;
                  }
                  continue loop1;
               }
               §§goto(addr115);
            }
         }
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(_loc4_ || _loc2_)
         {
            while(true)
            {
               addr51:
               loop1:
               while(true)
               {
                  addr42:
                  while(true)
                  {
                     super.activate();
                     addr46:
                     while(_loc4_)
                     {
                     }
                     continue loop1;
                  }
               }
            }
            addr53:
         }
         while(true)
         {
            if(!_loc3_)
            {
               if(_loc4_)
               {
                  if(true)
                  {
                     break;
                  }
                  §§goto(addr42);
               }
               else
               {
                  §§goto(addr53);
               }
            }
            §§goto(addr46);
         }
         var cls:Class = AssetCache.§-9§("MovieClip_Animation");
         if(_loc4_)
         {
            if(_loc4_ || cls)
            {
               this.§=n§ = new cls();
               if(_loc4_ || cls)
               {
                  if(_loc4_ || this)
                  {
                     loop11:
                     while(true)
                     {
                        §5!M§.addChild(this.§=n§);
                        if(_loc4_)
                        {
                           if(!_loc3_)
                           {
                              if(false)
                              {
                                 continue;
                              }
                              this.§=n§.scaleX = this.§=n§.scaleY = 1.3;
                              if(_loc4_)
                              {
                                 while(true)
                                 {
                                    this.§=n§.x = (1024 - 1024 * 1.3) / 2;
                                    loop6:
                                    while(true)
                                    {
                                       while(true)
                                       {
                                          this.§=n§.y = (768 - 768 * 1.3) / 2;
                                          addr185:
                                          while(!_loc3_)
                                          {
                                             if(_loc4_)
                                             {
                                                break loop11;
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                    addr147:
                                    if(_loc3_ && _loc3_)
                                    {
                                       continue;
                                    }
                                    return;
                                    addr154:
                                 }
                                 addr134:
                              }
                              §§goto(addr154);
                           }
                           while(!_loc4_)
                           {
                           }
                           if(_loc4_)
                           {
                              if(_loc4_)
                              {
                                 §§goto(addr147);
                              }
                              §§goto(addr185);
                           }
                           break;
                           addr160:
                        }
                        break;
                     }
                     while(true)
                     {
                        this.§^!!§ = getTimer();
                        §§goto(addr160);
                     }
                     addr163:
                  }
                  §§goto(addr154);
                  addr111:
               }
               §§goto(addr134);
            }
            §§goto(addr163);
         }
         §§goto(addr111);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc3_)
         {
         }
         if(_loc4_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(!_loc4_)
               {
                  if(!(_loc4_ && deltaTime))
                  {
                     if(true)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               continue loop0;
            }
            §§push(super.run(deltaTime));
            if(_loc3_)
            {
               §§push(int(§§pop()));
            }
            var superReturn:* = §§pop();
            if(_loc3_ || this)
            {
               loop3:
               while(true)
               {
                  §§push(superReturn);
                  loop4:
                  do
                  {
                     if(§§pop() == StateBase.STATE_STATUS_RUNNING)
                     {
                        loop5:
                        while(this.§=n§.currentFrame == this.§=n§.totalFrames)
                        {
                           if(_loc4_ && superReturn)
                           {
                              continue;
                           }
                           loop8:
                           while(true)
                           {
                              mNextState = StateStart.STATE_NAME;
                              addr140:
                              addr126:
                              while(!(_loc3_ || superReturn))
                              {
                                 continue loop8;
                              }
                              if(!(_loc4_ && superReturn))
                              {
                                 break loop5;
                              }
                              continue loop4;
                           }
                        }
                        while(true)
                        {
                           if(mNextState.length <= 0)
                           {
                              return StateBase.STATE_STATUS_RUNNING;
                           }
                           if(!_loc4_)
                           {
                              continue loop3;
                           }
                           §§goto(addr140);
                           §§goto(addr126);
                        }
                     }
                     else
                     {
                        addr181:
                     }
                  }
                  while(§§push(superReturn), _loc4_);
                  
                  return §§pop();
               }
            }
            §§goto(addr168);
         }
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && _loc2_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               super.deActivate();
               loop1:
               while(_loc2_)
               {
                  while(!(_loc2_ || _loc2_))
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_)
         {
         }
         if(_loc2_ || this)
         {
            while(true)
            {
               super.cleanup();
               while(!(_loc1_ && _loc1_))
               {
                  if(_loc1_ && _loc1_)
                  {
                     continue;
                  }
                  return;
                  addr62:
               }
            }
         }
         §§goto(addr62);
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || component)
         {
         }
         if(_loc5_)
         {
            do
            {
               while(_loc6_ && eventIndex)
               {
               }
            }
            while(!_loc5_);
            
         }
         var _loc4_:* = eventName;
         if(_loc5_ || eventName)
         {
            §§push("CLOSE_FEED");
            if(_loc6_ && eventName)
            {
            }
            if(§§pop() !== _loc4_)
            {
               if(false)
               {
                  §§goto(addr122);
               }
               else
               {
                  §§push(1);
               }
               addr132:
               loop5:
               switch(§§pop())
               {
                  case 0:
                     while(true)
                     {
                        while(true)
                        {
                           mNextState = StatePlay.STATE_NAME;
                           while(!(_loc5_ || component))
                           {
                           }
                           if(!_loc5_)
                           {
                              break;
                           }
                           if(true)
                           {
                              break loop5;
                           }
                        }
                     }
               }
               return;
            }
            if(_loc5_)
            {
               addr116:
               §§push(0);
               if(!_loc5_)
               {
                  addr130:
               }
            }
            else
            {
               addr122:
               §§push(1);
               if(!(_loc6_ && eventName))
               {
                  §§goto(addr130);
               }
            }
            §§goto(addr132);
            §§goto(addr122);
         }
         §§goto(addr116);
      }
   }
}
