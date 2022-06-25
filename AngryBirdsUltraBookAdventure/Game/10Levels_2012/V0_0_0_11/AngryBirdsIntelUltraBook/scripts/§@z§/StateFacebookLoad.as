package §@z§
{
   import §%!4§.§]!e§;
   import §'b§.ExternalInterfaceHandler;
   import §4H§.StateBase;
   import §4H§.StateLoad;
   import §@!`§.InitDataLoader;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class StateFacebookLoad extends StateLoad
   {
      
      private static const SERVER_CALLS_LOADING_PERCENTAGE:Number = 0.2;
      
      private static const TIMED_PERCENTAGE:Number = 60;
      
      {
         var SERVER_CALLS_LOADING_PERCENTAGE:Boolean = true;
         var TIMED_PERCENTAGE:Boolean = false;
         if(!SERVER_CALLS_LOADING_PERCENTAGE)
         {
         }
         while(true)
         {
            SERVER_CALLS_LOADING_PERCENTAGE = 0.2;
            while(!TIMED_PERCENTAGE)
            {
               while(SERVER_CALLS_LOADING_PERCENTAGE)
               {
                  TIMED_PERCENTAGE = 60;
                  if(SERVER_CALLS_LOADING_PERCENTAGE)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      private var §4K§:Boolean = false;
      
      protected var §<#§:Number = -1;
      
      protected var §55§:Number = 0;
      
      private var § !-§:Boolean = false;
      
      private var §@!2§:Number = 60;
      
      public function StateFacebookLoad(initState:Boolean = true, name:String = "load", minTimeOnScreen:Number = 1000, assetsUrl:String = "", buildNumber:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc6_ && name)
         {
         }
         if(_loc7_)
         {
            while(true)
            {
               loop1:
               for(; _loc7_ || this; while(!(_loc6_ && initState))
               {
                  if(_loc6_ && this)
                  {
                     continue;
                  }
                  §§goto(addr42);
               })
               {
                  loop2:
                  while(true)
                  {
                     while(true)
                     {
                        continue loop2;
                        addr80:
                        while(!(_loc6_ && initState))
                        {
                           super(initState,name,minTimeOnScreen,assetsUrl,buildNumber);
                           continue loop1;
                           if(_loc7_ || this)
                           {
                              if(!_loc6_)
                              {
                                 return;
                              }
                              continue loop2;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr113);
      }
      
      override public function setLoadingScreen(loadingScreen:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(_loc2_)
         {
            while(true)
            {
               while(true)
               {
                  super.setLoadingScreen(loadingScreen);
                  while(!_loc3_)
                  {
                     if(!_loc3_)
                     {
                        return;
                        addr63:
                     }
                  }
               }
               addr71:
               if(!(_loc2_ || _loc3_))
               {
                  continue;
               }
               if(_loc2_ || loadingScreen)
               {
                  §§goto(addr51);
               }
               loop4:
               while(true)
               {
                  if(!_loc3_)
                  {
                     §§goto(addr71);
                  }
                  else
                  {
                     while(true)
                     {
                        this.§4=§(0);
                        continue loop4;
                     }
                     §§goto(addr63);
                     addr81:
                  }
               }
               addr78:
            }
         }
         §§goto(addr81);
      }
      
      private function §`!d§() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_)
         {
         }
         if(_loc2_)
         {
            if(_loc2_ || _loc2_)
            {
               addr30:
            }
            §§push(InitDataLoader.§1!9§());
            if(_loc2_)
            {
               §§push(§§pop());
            }
            var tempErrorValue:* = §§pop();
            if(!(_loc3_ && _loc3_))
            {
               loop0:
               while(true)
               {
                  if(tempErrorValue == "")
                  {
                     loop1:
                     while(true)
                     {
                        ExternalInterfaceHandler.§>!2§("onFlashLoadComplete");
                        loop2:
                        while(true)
                        {
                           if(!(_loc3_ && tempErrorValue))
                           {
                              if(_loc2_)
                              {
                                 if(_loc3_ && _loc2_)
                                 {
                                    loop3:
                                    while(!_loc2_)
                                    {
                                       while(true)
                                       {
                                          if(_loc2_)
                                          {
                                             if(_loc2_ || _loc3_)
                                             {
                                                if(_loc3_ && tempErrorValue)
                                                {
                                                   break loop2;
                                                }
                                                continue loop3;
                                             }
                                             while(true)
                                             {
                                                this.§ !-§ = true;
                                             }
                                             addr175:
                                          }
                                          while(true)
                                          {
                                             if(!_loc2_)
                                             {
                                                continue loop0;
                                             }
                                          }
                                       }
                                       return StateBase.STATE_STATUS_RUNNING;
                                    }
                                    throw new Error(tempErrorValue,InitDataLoader.§3!D§());
                                 }
                                 if(_loc2_ || this)
                                 {
                                    return StateBase.STATE_STATUS_COMPLETED;
                                 }
                                 continue;
                              }
                              if(!_loc2_)
                              {
                                 while(true)
                                 {
                                    §]!e§.§3!T§();
                                    §§goto(addr128);
                                 }
                                 addr157:
                              }
                              else
                              {
                                 addr117:
                              }
                              §§goto(addr128);
                              §§goto(addr157);
                           }
                           else if(!_loc3_)
                           {
                              continue loop1;
                           }
                        }
                        addr181:
                        while(true)
                        {
                           §§push(this.§ !-§);
                           if(_loc2_)
                           {
                              §§push(!§§pop());
                           }
                           if(§§pop())
                           {
                              if(_loc3_)
                              {
                              }
                              §§goto(addr175);
                           }
                           §§goto(addr128);
                        }
                     }
                  }
                  §§goto(addr181);
               }
            }
            §§goto(addr117);
         }
         §§goto(addr30);
      }
      
      override public function run(deltaTime:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc5_ && percentLoaded)
         {
         }
         var superState:* = 0;
         if(!_loc5_)
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
                     §§push(this.§<#§);
                     if(_loc4_)
                     {
                        if(§§pop() == -1)
                        {
                           while(!_loc5_)
                           {
                              continue loop1;
                              addr127:
                              if(!(_loc4_ || this))
                              {
                                 continue;
                              }
                              §§push(super.run(deltaTime));
                              if(_loc4_)
                              {
                                 §§push(int(§§pop()));
                              }
                              loop11:
                              while(true)
                              {
                                 superState = §§pop();
                                 while(_loc4_)
                                 {
                                    loop13:
                                    while(_loc4_)
                                    {
                                       continue loop11;
                                       while(true)
                                       {
                                          if(_loc4_ || superState)
                                          {
                                             if(!_loc4_)
                                             {
                                                break;
                                             }
                                             continue;
                                          }
                                          continue loop13;
                                       }
                                       loop10:
                                       while(_loc4_)
                                       {
                                          addr120:
                                          if(!(_loc5_ && this))
                                          {
                                             §§goto(addr127);
                                          }
                                          else
                                          {
                                             while(true)
                                             {
                                                break loop10;
                                                §§goto(addr120);
                                             }
                                             addr170:
                                          }
                                       }
                                       while(true)
                                       {
                                          addr135:
                                          while(true)
                                          {
                                             §§push(this.§4K§);
                                             if(_loc4_)
                                             {
                                                §§push(!§§pop());
                                             }
                                             if(!§§pop())
                                             {
                                                break;
                                             }
                                             continue loop2;
                                          }
                                          §§goto(addr197);
                                       }
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                        §§goto(addr135);
                     }
                     break;
                  }
                  var percentLoaded:* = §§pop();
                  if(_loc4_ || this)
                  {
                     this.§4=§(percentLoaded);
                     addr319:
                     addr317:
                     §§push(percentLoaded == 1);
                     if(_loc4_ || this)
                     {
                        addr278:
                        §§push(Boolean(§§pop()));
                        §§push(Boolean(§§pop()));
                        if(_loc4_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           addr293:
                           §§pop();
                           addr294:
                           if(_loc4_ || superState)
                           {
                              if(_loc4_ || percentLoaded)
                              {
                                 §§push(this.§4K§);
                                 if(_loc4_)
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(!_loc5_)
                                 {
                                    if(!_loc5_)
                                    {
                                       §§goto(addr248);
                                    }
                                    §§goto(addr278);
                                 }
                                 §§goto(addr293);
                              }
                              §§goto(addr319);
                           }
                           §§goto(addr317);
                        }
                        §§goto(addr248);
                     }
                     §§goto(addr293);
                  }
                  addr248:
                  if(§§pop())
                  {
                     if(_loc5_ && superState)
                     {
                     }
                     if(_loc5_ && superState)
                     {
                        §§goto(addr294);
                     }
                     return this.§`!d§();
                  }
                  return StateBase.STATE_STATUS_RUNNING;
               }
            }
         }
         §§goto(addr160);
      }
      
      private function §;1§() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && this)
         {
         }
         if(_loc3_ && initPercentage)
         {
         }
         while(true)
         {
            loop1:
            while(true)
            {
               while(_loc4_ || _loc3_)
               {
                  if(_loc3_)
                  {
                     continue;
                  }
                  if(!_loc4_)
                  {
                     break loop1;
                  }
                  if(false)
                  {
                     continue loop1;
                  }
                  if(InitDataLoader.§5!W§)
                  {
                     break;
                  }
                  addr76:
                  addr80:
                  §§push(Number(1));
                  if(!_loc3_)
                  {
                     addr79:
                     §§push(Number(§§pop()));
                  }
                  var initPercentage:* = §§pop();
                  if(!_loc4_)
                  {
                  }
                  §§push(this);
                  if(!(_loc3_ && initPercentage))
                  {
                     §§push(initPercentage);
                     if(!_loc3_)
                     {
                        §§push(1);
                        if(_loc4_ || this)
                        {
                           §§push(§§pop() == §§pop());
                           if(!_loc3_)
                           {
                              §§push(Boolean(§§pop()));
                              if(!_loc3_)
                              {
                                 §§push(§§pop());
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(Boolean(§§pop()));
                                 }
                                 if(§§pop())
                                 {
                                    if(!_loc3_)
                                    {
                                       addr121:
                                       §§pop();
                                       §§push(this.§55§ == 1);
                                       if(_loc4_ || initPercentage)
                                       {
                                          §§push(Boolean(§§pop()));
                                       }
                                    }
                                 }
                                 §§push(§§pop().§[!;§(§§pop()));
                                 if(_loc4_ || timedPercentage)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var timedPercentage:* = §§pop();
                                 if(_loc3_)
                                 {
                                 }
                                 loop3:
                                 while(true)
                                 {
                                    §§push(this.§55§);
                                    loop4:
                                    while(true)
                                    {
                                       §§push(1);
                                       loop5:
                                       while(true)
                                       {
                                          §§push(§§pop() == §§pop());
                                          loop6:
                                          while(true)
                                          {
                                             §§push(Boolean(§§pop()));
                                             if(!(_loc3_ && timedPercentage))
                                             {
                                                §§push(§§pop());
                                                loop7:
                                                while(true)
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   loop8:
                                                   while(true)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§pop();
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(initPercentage);
                                                               loop13:
                                                               while(true)
                                                               {
                                                                  §§push(1);
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        continue loop5;
                                                                     }
                                                                     §§push(§§pop() == §§pop());
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§push(Boolean(§§pop()));
                                                                        if(_loc4_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              if(!_loc3_)
                                                                              {
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 §§push(Boolean(§§pop()));
                                                                              }
                                                                              if(!(_loc3_ && this))
                                                                              {
                                                                                 if(§§pop())
                                                                                 {
                                                                                    loop10:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc4_ || this)
                                                                                       {
                                                                                          §§pop();
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             §§push(timedPercentage);
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc3_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§push(1);
                                                                                                if(!(_loc4_ || _loc3_))
                                                                                                {
                                                                                                   continue loop14;
                                                                                                }
                                                                                                §§push(§§pop() == §§pop());
                                                                                                if(_loc4_ || this)
                                                                                                {
                                                                                                   if(_loc3_ && this)
                                                                                                   {
                                                                                                      continue loop10;
                                                                                                   }
                                                                                                   §§push(Boolean(§§pop()));
                                                                                                }
                                                                                                if(_loc3_ && timedPercentage)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                addr208:
                                                                                                if(_loc4_ || initPercentage)
                                                                                                {
                                                                                                   §§goto(addr226);
                                                                                                }
                                                                                             }
                                                                                             continue loop14;
                                                                                          }
                                                                                          continue loop16;
                                                                                       }
                                                                                       continue loop15;
                                                                                    }
                                                                                    continue loop5;
                                                                                    addr326:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       continue loop3;
                                                                                    }
                                                                                    §§push(this.§55§);
                                                                                    if(_loc4_)
                                                                                    {
                                                                                       if(_loc3_)
                                                                                       {
                                                                                          continue loop13;
                                                                                       }
                                                                                       §§push(0.7);
                                                                                       if(!(_loc3_ && this))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc3_ && _loc3_))
                                                                                          {
                                                                                             §§push(initPercentage);
                                                                                             if(!(_loc3_ && this))
                                                                                             {
                                                                                                §§push(0.2);
                                                                                                if(_loc4_ || timedPercentage)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc4_)
                                                                                                   {
                                                                                                      addr200:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc4_ || timedPercentage)
                                                                                                      {
                                                                                                         §§goto(addr208);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr226);
                                                                                                }
                                                                                                §§goto(addr224);
                                                                                             }
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          §§goto(addr208);
                                                                                       }
                                                                                       §§goto(addr200);
                                                                                    }
                                                                                    §§goto(addr208);
                                                                                 }
                                                                                 addr226:
                                                                                 §§push(timedPercentage);
                                                                              }
                                                                              continue loop8;
                                                                              if(_loc4_ || this)
                                                                              {
                                                                                 addr224:
                                                                                 §§push(§§pop() * 0.1);
                                                                              }
                                                                              return §§pop() + §§pop();
                                                                           }
                                                                           continue loop7;
                                                                           addr311:
                                                                        }
                                                                     }
                                                                     §§goto(addr326);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         addr363:
                                                      }
                                                      §§goto(addr311);
                                                   }
                                                }
                                             }
                                             §§goto(addr363);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§goto(addr121);
               }
               §§push(0);
               if(!(_loc3_ && initPercentage))
               {
                  §§push(Number(§§pop()));
                  if(_loc3_ && this)
                  {
                  }
                  §§goto(addr79);
               }
               else
               {
                  §§goto(addr76);
               }
            }
         }
      }
      
      private function §[!;§(loadingComplete:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc7_)
         {
         }
         if(_loc7_ && this)
         {
         }
         loop0:
         while(true)
         {
            while(true)
            {
               loop2:
               while(_loc6_ || loadingComplete)
               {
                  while(true)
                  {
                     while(true)
                     {
                        if(_loc6_ || timedPercentage)
                        {
                           if(!loadingComplete)
                           {
                              break;
                           }
                           if(_loc6_)
                           {
                              if(!(_loc7_ && loadingComplete))
                              {
                                 if(_loc7_ && scaleToMinute)
                                 {
                                    break;
                                 }
                                 addr114:
                                 continue loop0;
                              }
                              continue;
                           }
                           continue loop0;
                        }
                        continue loop2;
                     }
                     §§push(Math.min((new Date().time - this.§<#§) / 1000,this.§@!2§) / this.§@!2§);
                     if(_loc6_ || loadingComplete)
                     {
                        §§push(Number(§§pop()));
                     }
                     var scaleToMinute:* = §§pop();
                     if(_loc6_ || this)
                     {
                     }
                     §§push(1 - Math.pow(1 - scaleToMinute,2));
                     if(!(_loc7_ && this))
                     {
                        §§push(Number(§§pop()));
                     }
                     var timedPercentage:* = §§pop();
                     if(_loc6_ || loadingComplete)
                     {
                     }
                     return timedPercentage;
                     continue loop2;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      override public function setLoadingPercentage(value:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc2_ && _loc2_)
         {
         }
         if(_loc3_ || _loc3_)
         {
            loop0:
            do
            {
               while(true)
               {
                  this.§55§ = value;
                  while(!(_loc2_ && _loc3_))
                  {
                     if(!(_loc2_ && this))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      private function §4=§(value:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc3_ && this)
         {
         }
         if(!_loc2_)
         {
         }
         loop0:
         do
         {
            while(true)
            {
               (§0!T§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = value;
               while(!(_loc3_ && this))
               {
                  if(!_loc3_)
                  {
                     continue loop0;
                  }
               }
            }
         }
         while(!_loc2_);
         
      }
      
      override public function setViewSize(width:Number, height:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_)
         {
         }
         if(_loc3_)
         {
            loop0:
            while(true)
            {
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     super.setViewSize(width,height);
                     addr126:
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  loop9:
                  while(!_loc4_)
                  {
                     §0!T§.y = 0;
                     while(_loc4_)
                     {
                     }
                     if(_loc4_ && height)
                     {
                        continue;
                     }
                     if(!_loc4_)
                     {
                        if(!_loc3_)
                        {
                           §§goto(addr126);
                        }
                        §§goto(addr23);
                     }
                     else
                     {
                        while(true)
                        {
                           if(!(_loc3_ || height))
                           {
                              continue loop0;
                           }
                           if(!_loc3_)
                           {
                              break;
                           }
                           while(true)
                           {
                              continue loop9;
                           }
                        }
                        addr69:
                     }
                     §§goto(addr84);
                  }
               }
            }
         }
         §§goto(addr78);
      }
   }
}
