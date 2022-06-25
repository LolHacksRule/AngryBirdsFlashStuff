package §[!$§
{
   import §"!i§.InitDataLoader;
   import §&"§.ExternalInterfaceHandler;
   import §1N§.StateBase;
   import §1N§.StateLoad;
   import §;!1§.§9u§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class StateFacebookLoad extends StateLoad
   {
      
      private static const SERVER_CALLS_LOADING_PERCENTAGE:Number = 0.2;
      
      private static const TIMED_PERCENTAGE:Number = 60;
      
      {
         var SERVER_CALLS_LOADING_PERCENTAGE:Boolean = false;
         var TIMED_PERCENTAGE:Boolean = true;
         if(!(SERVER_CALLS_LOADING_PERCENTAGE && StateFacebookLoad))
         {
            while(true)
            {
               SERVER_CALLS_LOADING_PERCENTAGE = 0.2;
               while(TIMED_PERCENTAGE)
               {
                  do
                  {
                     TIMED_PERCENTAGE = 60;
                  }
                  while(!TIMED_PERCENTAGE);
                  
                  if(TIMED_PERCENTAGE)
                  {
                     return;
                     addr47:
                  }
               }
            }
         }
         §§goto(addr47);
      }
      
      private var §`q§:Boolean = false;
      
      protected var §!!c§:Number = -1;
      
      protected var §36§:Number = 0;
      
      private var §[%§:Boolean = false;
      
      private var §@v§:Number = 60;
      
      public function StateFacebookLoad(initState:Boolean = true, name:String = "load", minTimeOnScreen:Number = 1000, assetsUrl:String = "", buildNumber:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && initState)
         {
         }
         if(_loc7_ || this)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               loop2:
               do
               {
                  loop3:
                  while(true)
                  {
                     while(!_loc6_)
                     {
                        continue loop0;
                        addr75:
                        if(_loc7_ || this)
                        {
                           addr82:
                           if(!(_loc6_ && minTimeOnScreen))
                           {
                              continue loop2;
                           }
                           addr73:
                           while(true)
                           {
                              if(_loc6_)
                              {
                                 continue loop3;
                              }
                              §§goto(addr75);
                              §§goto(addr82);
                           }
                        }
                     }
                     continue loop1;
                  }
               }
               while(!(_loc7_ || this));
               
               return;
            }
         }
      }
      
      override public function setLoadingScreen(loadingScreen:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  super.setLoadingScreen(loadingScreen);
                  loop2:
                  while(_loc3_)
                  {
                     while(true)
                     {
                        this.§'^§(0);
                        while(_loc3_ || this)
                        {
                           if(!(_loc2_ && this))
                           {
                              if(_loc3_)
                              {
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
      }
      
      private function §^-§() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && _loc3_)
         {
         }
         if(!_loc3_)
         {
            if(_loc3_)
            {
            }
         }
         §§push(InitDataLoader.§=J§());
         if(_loc2_ || tempErrorValue)
         {
            §§push(§§pop());
         }
         var tempErrorValue:* = §§pop();
         if(_loc2_ || tempErrorValue)
         {
            do
            {
               if(tempErrorValue != "")
               {
                  if(_loc2_ || tempErrorValue)
                  {
                  }
                  §§push(this.§[%§);
                  if(_loc2_ || _loc2_)
                  {
                     §§push(!§§pop());
                  }
                  if(!§§pop())
                  {
                     §§goto(addr109);
                  }
                  addr197:
                  while(true)
                  {
                     this.§[%§ = true;
                     loop7:
                     while(true)
                     {
                        addr169:
                        loop5:
                        while(true)
                        {
                           §9u§.§4!L§();
                           addr164:
                           while(true)
                           {
                              if(!_loc2_)
                              {
                                 continue loop7;
                              }
                              continue loop5;
                           }
                        }
                     }
                  }
                  addr198:
                  addr211:
               }
               else
               {
                  loop1:
                  while(true)
                  {
                     ExternalInterfaceHandler.§`F§("onFlashLoadComplete");
                     while(true)
                     {
                        if(!(_loc3_ && tempErrorValue))
                        {
                           if(!(_loc2_ || this))
                           {
                              break;
                           }
                           if(_loc3_ && this)
                           {
                              continue;
                           }
                           if(!(_loc3_ && this))
                           {
                              return StateBase.STATE_STATUS_COMPLETED;
                           }
                           §§goto(addr211);
                        }
                        else if(_loc2_)
                        {
                           if(_loc2_ || this)
                           {
                              if(!(_loc3_ && _loc2_))
                              {
                                 if(_loc2_)
                                 {
                                    continue loop1;
                                 }
                                 §§goto(addr197);
                              }
                              §§goto(addr198);
                           }
                           §§goto(addr164);
                        }
                     }
                     addr109:
                     return StateBase.STATE_STATUS_RUNNING;
                  }
               }
               while(_loc3_ && tempErrorValue)
               {
                  §§goto(addr169);
               }
            }
            while(_loc3_ && tempErrorValue);
            
            throw new Error(tempErrorValue,InitDataLoader.§2!§());
         }
         §§goto(addr197);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc4_)
         {
         }
         var superState:* = 0;
         if(!_loc4_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     §§push(this.§!!c§);
                     if(_loc5_ || percentLoaded)
                     {
                        if(§§pop() == -1)
                        {
                           continue loop1;
                        }
                        loop7:
                        while(true)
                        {
                           §§push(this.§`q§);
                           if(!_loc4_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              loop8:
                              while(true)
                              {
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       if(_loc4_)
                                       {
                                          continue loop1;
                                       }
                                       if(_loc4_)
                                       {
                                          break;
                                       }
                                       §§push(super.run(deltaTime));
                                       if(!(_loc4_ && superState))
                                       {
                                          §§push(int(§§pop()));
                                       }
                                       while(true)
                                       {
                                          superState = §§pop();
                                          continue loop8;
                                          addr106:
                                          §§push(superState);
                                          if(!(_loc4_ && this))
                                          {
                                             if(§§pop() == StateBase.STATE_STATUS_COMPLETED)
                                             {
                                                loop14:
                                                while(true)
                                                {
                                                   addr89:
                                                   while(!(_loc4_ && percentLoaded))
                                                   {
                                                      this.§`q§ = true;
                                                      continue loop14;
                                                   }
                                                   continue loop8;
                                                }
                                             }
                                             addr193:
                                             §§push(this.§^!R§());
                                             if(_loc5_ || deltaTime)
                                             {
                                                §§push(Number(§§pop()));
                                                break loop2;
                                             }
                                             break loop2;
                                          }
                                       }
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                           §§goto(addr193);
                           while(true)
                           {
                              continue loop7;
                           }
                        }
                     }
                     break;
                  }
                  var percentLoaded:* = §§pop();
                  if(_loc5_ || superState)
                  {
                     this.§'^§(percentLoaded);
                     addr293:
                     §§push(Boolean(percentLoaded == 1));
                     §§push(Boolean(percentLoaded == 1));
                     if(_loc5_ || superState)
                     {
                        §§push(Boolean(§§pop()));
                     }
                     addr313:
                     if(§§pop())
                     {
                        addr303:
                        §§pop();
                        addr304:
                        §§push(this.§`q§);
                        if(!_loc4_)
                        {
                           if(_loc5_)
                           {
                              addr256:
                              §§push(Boolean(§§pop()));
                              if(_loc5_)
                              {
                                 if(!(_loc4_ && deltaTime))
                                 {
                                    §§goto(addr265);
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr303);
                           }
                           §§goto(addr293);
                        }
                        §§goto(addr256);
                     }
                     addr265:
                     if(§§pop())
                     {
                        addr267:
                        if(_loc5_)
                        {
                           if(_loc4_ && superState)
                           {
                              §§goto(addr313);
                           }
                           return this.§^-§();
                        }
                        §§goto(addr304);
                     }
                     return StateBase.STATE_STATUS_RUNNING;
                  }
                  §§goto(addr267);
               }
            }
         }
         §§goto(addr58);
      }
      
      private function §^!R§() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         if(!(_loc3_ && this))
         {
            if(!_loc3_)
            {
               addr48:
               while(_loc4_)
               {
                  if(!(_loc3_ && initPercentage))
                  {
                     if(false)
                     {
                        continue;
                     }
                     if(InitDataLoader.§#]§)
                     {
                        break;
                     }
                     addr66:
                     addr70:
                     §§push(Number(1));
                     if(!_loc3_)
                     {
                        addr69:
                        §§push(Number(§§pop()));
                     }
                     var initPercentage:* = §§pop();
                     if(_loc3_)
                     {
                     }
                     §§push(this);
                     if(!_loc3_)
                     {
                        §§push(initPercentage);
                        if(_loc4_ || initPercentage)
                        {
                           §§push(1);
                           if(!(_loc3_ && this))
                           {
                              §§push(§§pop() == §§pop());
                              if(_loc4_ || timedPercentage)
                              {
                                 §§push(Boolean(§§pop()));
                                 if(_loc4_)
                                 {
                                    addr104:
                                    §§push(§§pop());
                                    if(_loc4_)
                                    {
                                       §§push(Boolean(§§pop()));
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc4_)
                                       {
                                          §§pop();
                                          addr115:
                                          §§push(this.§36§ == 1);
                                          if(_loc4_)
                                          {
                                             §§push(Boolean(§§pop()));
                                          }
                                       }
                                    }
                                 }
                                 §§push(§§pop().§8!7§(§§pop()));
                                 if(!(_loc3_ && timedPercentage))
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var timedPercentage:* = §§pop();
                                 if(_loc4_)
                                 {
                                    loop0:
                                    while(true)
                                    {
                                       §§push(this.§36§);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(1);
                                          loop2:
                                          while(true)
                                          {
                                             §§push(§§pop() == §§pop());
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                loop3:
                                                while(true)
                                                {
                                                   §§push(§§pop());
                                                   loop4:
                                                   while(true)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      loop5:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            loop12:
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(initPercentage);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(1);
                                                                     loop15:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() == §§pop());
                                                                        if(_loc4_ || this)
                                                                        {
                                                                           addr277:
                                                                           §§push(Boolean(§§pop()));
                                                                           while(true)
                                                                           {
                                                                           }
                                                                           addr278:
                                                                        }
                                                                        loop7:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop());
                                                                           if(_loc4_ || this)
                                                                           {
                                                                              §§push(Boolean(§§pop()));
                                                                           }
                                                                           if(!_loc4_)
                                                                           {
                                                                              continue loop5;
                                                                           }
                                                                           if(_loc3_ && this)
                                                                           {
                                                                              continue loop4;
                                                                           }
                                                                           if(§§pop())
                                                                           {
                                                                              loop8:
                                                                              while(_loc4_)
                                                                              {
                                                                                 §§pop();
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(timedPercentage);
                                                                                    addr216:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(1);
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop15;
                                                                                       }
                                                                                       if(_loc3_ && this)
                                                                                       {
                                                                                          continue loop2;
                                                                                       }
                                                                                       §§push(§§pop() == §§pop());
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          if(_loc3_ && this)
                                                                                          {
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§push(Boolean(§§pop()));
                                                                                       }
                                                                                       if(!_loc4_)
                                                                                       {
                                                                                          continue loop8;
                                                                                       }
                                                                                       if(!(_loc4_ || timedPercentage))
                                                                                       {
                                                                                          continue loop7;
                                                                                       }
                                                                                       addr194:
                                                                                       if(!(_loc3_ && timedPercentage))
                                                                                       {
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                          continue loop1;
                                                                                       }
                                                                                    }
                                                                                    continue loop15;
                                                                                    addr253:
                                                                                    if(_loc4_ || timedPercentage)
                                                                                    {
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             return 1;
                                                                                          }
                                                                                          continue loop0;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop3;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§goto(addr253);
                                                                              }
                                                                              else
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(this.§36§);
                                                                                    if(_loc4_ || timedPercentage)
                                                                                    {
                                                                                       §§push(0.7);
                                                                                       if(_loc4_ || timedPercentage)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc4_ || timedPercentage)
                                                                                          {
                                                                                             addr169:
                                                                                             §§push(initPercentage);
                                                                                             if(_loc4_)
                                                                                             {
                                                                                                §§push(0.2);
                                                                                                if(_loc4_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc3_)
                                                                                                      {
                                                                                                         if(!(_loc4_ || _loc3_))
                                                                                                         {
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                         addr193:
                                                                                                         §§push(timedPercentage);
                                                                                                         if(_loc4_)
                                                                                                         {
                                                                                                            addr191:
                                                                                                            §§push(0.1);
                                                                                                         }
                                                                                                         §§goto(addr194);
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                      }
                                                                                                      §§goto(addr194);
                                                                                                   }
                                                                                                   §§goto(addr191);
                                                                                                }
                                                                                                §§push(§§pop() * §§pop());
                                                                                             }
                                                                                             §§goto(addr193);
                                                                                          }
                                                                                          §§goto(addr194);
                                                                                       }
                                                                                       §§goto(addr191);
                                                                                    }
                                                                                    §§goto(addr169);
                                                                                 }
                                                                                 addr203:
                                                                                 return §§pop();
                                                                                 addr133:
                                                                              }
                                                                              §§goto(addr216);
                                                                           }
                                                                        }
                                                                        §§goto(addr277);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            addr328:
                                                         }
                                                         §§goto(addr278);
                                                      }
                                                   }
                                                }
                                             }
                                             §§goto(addr328);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr133);
                              }
                              §§goto(addr104);
                           }
                        }
                     }
                     §§goto(addr115);
                  }
                  break;
               }
            }
            §§push(0);
            if(!_loc3_)
            {
               §§push(Number(§§pop()));
               if(_loc4_ || this)
               {
               }
               §§goto(addr69);
            }
            else
            {
               §§goto(addr66);
            }
         }
         §§goto(addr48);
      }
      
      private function §8!7§(loadingComplete:Boolean) : Number
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && scaleToMinute)
         {
         }
         if(_loc7_ || loadingComplete)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     while(_loc7_ || this)
                     {
                        if(_loc7_)
                        {
                           if(!_loc6_)
                           {
                              if(loadingComplete)
                              {
                                 if(!(_loc7_ || this))
                                 {
                                    if(true)
                                    {
                                       var _loc4_:*;
                                       §§push((_loc4_ = this).§@v§);
                                       if(!(_loc6_ && this))
                                       {
                                          §§push(§§pop() - 1);
                                       }
                                       var _loc5_:* = §§pop();
                                       if(_loc7_ || this)
                                       {
                                          _loc4_.§@v§ = _loc5_;
                                       }
                                    }
                                    continue;
                                    if(!_loc6_)
                                    {
                                       §§goto(addr115);
                                    }
                                 }
                                 if(!_loc6_)
                                 {
                                    if(_loc6_ && this)
                                    {
                                    }
                                    addr115:
                                    break;
                                 }
                                 continue loop1;
                                 break;
                              }
                              break;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     §§push(Math.min((new Date().time - this.§!!c§) / 1000,this.§@v§) / this.§@v§);
                     if(!(_loc6_ && loadingComplete))
                     {
                        §§push(Number(§§pop()));
                     }
                     var scaleToMinute:* = §§pop();
                     if(_loc6_)
                     {
                     }
                     §§push(1 - Math.pow(1 - scaleToMinute,2));
                     if(!_loc6_)
                     {
                        §§push(Number(§§pop()));
                     }
                     var timedPercentage:* = §§pop();
                     if(_loc6_ && scaleToMinute)
                     {
                     }
                     return timedPercentage;
                  }
               }
            }
         }
         §§goto(addr115);
      }
      
      override public function setLoadingPercentage(value:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
         }
         if(_loc2_ || _loc2_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  this.§36§ = value;
                  while(!(_loc3_ && this))
                  {
                     if(_loc2_)
                     {
                        if(_loc2_)
                        {
                           return;
                           addr61:
                        }
                        continue;
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr61);
      }
      
      private function §'^§(value:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_)
         {
         }
         if(_loc3_)
         {
            loop0:
            do
            {
               while(true)
               {
                  (§6!W§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = value;
                  while(_loc3_ || this)
                  {
                     if(!(_loc2_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc3_);
            
         }
      }
      
      override public function setViewSize(width:Number, height:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && height)
         {
         }
         if(!_loc4_)
         {
            loop0:
            while(true)
            {
               loop1:
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super.setViewSize(width,height);
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(§6!W§)
                        {
                           loop5:
                           while(_loc3_)
                           {
                              while(_loc3_)
                              {
                                 §6!W§.x = 0;
                                 while(!_loc4_)
                                 {
                                    continue loop0;
                                 }
                                 continue loop5;
                                 if(!(_loc4_ && height))
                                 {
                                    break loop4;
                                    addr52:
                                 }
                              }
                              continue loop3;
                           }
                           continue loop1;
                           while(_loc3_ || height)
                           {
                              if(_loc4_ && height)
                              {
                                 continue;
                              }
                              if(_loc4_)
                              {
                                 continue loop2;
                              }
                              if(!_loc4_)
                              {
                                 §§goto(addr45);
                              }
                              §§goto(addr91);
                           }
                        }
                        return;
                     }
                  }
               }
            }
         }
         while(true)
         {
            §§goto(addr78);
         }
         §§goto(addr52);
      }
   }
}
