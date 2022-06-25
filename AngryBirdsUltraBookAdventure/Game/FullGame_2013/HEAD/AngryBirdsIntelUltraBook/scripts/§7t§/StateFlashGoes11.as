package §7t§
{
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §=!5§.§+q§;
   import §=!5§.§`X§;
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
            loop0:
            while(true)
            {
               STATE_NAME = "FlashGoes11State";
               loop1:
               do
               {
                  while(!STATE_DISPLAY_TIME_MS)
                  {
                     STATE_DISPLAY_TIME_MS = 6000;
                     if(STATE_NAME || StateFlashGoes11)
                     {
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               while(STATE_DISPLAY_TIME_MS);
               
            }
         }
      }
      
      private var §;I§:Number = -1;
      
      private var §;]§:MovieClip = null;
      
      public function StateFlashGoes11(initState:Boolean = false, name:String = "FlashGoes11State")
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
         }
         if(!_loc3_)
         {
            while(true)
            {
               while(true)
               {
                  while(!_loc3_)
                  {
                     if(!(_loc3_ && name))
                     {
                        return;
                        addr69:
                     }
                  }
               }
            }
            addr87:
         }
         while(true)
         {
            super(initState,name);
            while(true)
            {
               if(!_loc3_)
               {
                  continue;
               }
               §§goto(addr87);
            }
         }
         §§goto(addr69);
      }
      
      override public function init() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            loop0:
            while(true)
            {
               super.init();
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §`=§ = new §`X§(this);
                     while(true)
                     {
                        while(!(_loc2_ && this))
                        {
                           if(_loc1_)
                           {
                              §`=§.init(§+q§.§%M§.Views.View_FlashGoes11[0]);
                              loop5:
                              while(!(_loc2_ && _loc2_))
                              {
                                 while(true)
                                 {
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       if(!_loc2_)
                                       {
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      override public function activate() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(_loc4_ || this)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  addr47:
                  addr38:
                  while(true)
                  {
                     super.activate();
                     addr51:
                     while(!_loc3_)
                     {
                     }
                     continue loop0;
                  }
                  if(!(_loc4_ || cls))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr47);
                  }
                  var cls:Class = AssetCache.§%p§("MovieClip_Animation");
                  if(_loc4_ || this)
                  {
                     if(_loc4_ || cls)
                     {
                        this.§;]§ = new cls();
                        if(_loc4_)
                        {
                           if(_loc4_)
                           {
                              loop11:
                              while(true)
                              {
                                 §`=§.addChild(this.§;]§);
                                 while(!_loc3_)
                                 {
                                    if(!_loc3_)
                                    {
                                       if(true)
                                       {
                                          this.§;]§.scaleX = this.§;]§.scaleY = 1.3;
                                          if(_loc4_ || _loc3_)
                                          {
                                             break;
                                          }
                                       }
                                       else
                                       {
                                          addr169:
                                       }
                                       continue loop11;
                                       return;
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§;]§.x = (1024 - 1024 * 1.3) / 2;
                                    loop6:
                                    while(true)
                                    {
                                       addr210:
                                       while(_loc3_ && this)
                                       {
                                          continue loop6;
                                       }
                                       this.§;]§.y = (768 - 768 * 1.3) / 2;
                                       loop8:
                                       while(true)
                                       {
                                          addr185:
                                          while(true)
                                          {
                                             this.§;I§ = getTimer();
                                             continue loop8;
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr182);
                        }
                        §§goto(addr169);
                        addr120:
                     }
                     §§goto(addr182);
                  }
                  §§goto(addr120);
               }
            }
         }
         while(true)
         {
            if(!(_loc3_ && cls))
            {
               §§goto(addr38);
            }
            §§goto(addr51);
         }
         §§goto(addr59);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || deltaTime)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               addr36:
               while(true)
               {
                  continue loop0;
               }
            }
            addr40:
         }
         while(true)
         {
            if(_loc4_)
            {
               continue;
            }
            if(_loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr40);
            }
            §§goto(addr36);
         }
         §§push(super.run(deltaTime));
         if(!_loc4_)
         {
            §§push(int(§§pop()));
         }
         var superReturn:* = §§pop();
         if(!(_loc4_ && deltaTime))
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
                     while(true)
                     {
                        if(this.§;]§.currentFrame == this.§;]§.totalFrames)
                        {
                           loop6:
                           while(true)
                           {
                              mNextState = StateStart.STATE_NAME;
                              while(_loc3_)
                              {
                                 continue loop6;
                                 if(!(_loc4_ && superReturn))
                                 {
                                    if(_loc3_)
                                    {
                                       if(_loc3_ || _loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             return StateBase.STATE_STATUS_COMPLETED;
                                          }
                                          continue loop3;
                                       }
                                       addr181:
                                    }
                                    continue loop4;
                                 }
                              }
                              addr174:
                              while(true)
                              {
                                 continue loop5;
                              }
                           }
                        }
                        while(mNextState.length > 0)
                        {
                           if(!_loc4_)
                           {
                              §§goto(addr104);
                           }
                           §§goto(addr126);
                        }
                        return StateBase.STATE_STATUS_RUNNING;
                     }
                  }
                  §§goto(addr181);
               }
               while(§§push(superReturn), _loc4_ && _loc3_);
               
               return §§pop();
            }
         }
         §§goto(addr174);
      }
      
      override public function deActivate() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_ && this)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               super.deActivate();
               loop1:
               while(_loc1_ || this)
               {
                  while(_loc2_ && _loc1_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr73);
      }
      
      override public function cleanup() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc1_ && this)
         {
         }
         if(_loc2_ || this)
         {
         }
         while(true)
         {
            super.cleanup();
            while(!_loc1_)
            {
               if(_loc2_ || _loc1_)
               {
                  return;
               }
            }
         }
      }
      
      override public function uiInteractionHandler(eventIndex:int, eventName:String, component:UIEventListenerRovio) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         if(_loc5_)
         {
         }
         do
         {
            while(!_loc6_)
            {
            }
         }
         while(!(_loc6_ || eventName));
         
         var _loc4_:* = eventName;
         if(!(_loc5_ && eventName))
         {
            §§push("CLOSE_FEED");
            if(_loc5_ && component)
            {
            }
            if(§§pop() !== _loc4_)
            {
               if(false)
               {
                  §§goto(addr116);
               }
               else
               {
                  §§push(1);
               }
               addr121:
               loop4:
               switch(§§pop())
               {
                  case 0:
                     while(true)
                     {
                        while(true)
                        {
                           mNextState = StatePlay.STATE_NAME;
                           if(_loc5_ && eventName)
                           {
                              break;
                           }
                           if(true)
                           {
                              break loop4;
                           }
                        }
                     }
               }
               return;
            }
            if(!_loc5_)
            {
               addr110:
               §§push(0);
               if(!_loc6_)
               {
                  addr119:
               }
            }
            else
            {
               addr116:
               §§push(1);
               if(!_loc5_)
               {
                  §§goto(addr119);
               }
            }
            §§goto(addr121);
            §§goto(addr116);
         }
         §§goto(addr110);
      }
   }
}
