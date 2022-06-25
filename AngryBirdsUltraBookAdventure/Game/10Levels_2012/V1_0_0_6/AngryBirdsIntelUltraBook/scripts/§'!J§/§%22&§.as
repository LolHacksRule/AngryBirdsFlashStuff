package §'!J§
{
   import §#&§.§1A§;
   import §+0§.§,!E§;
   import §+0§.§;!>§;
   import §;!o§.§>!l§;
   import §?N§.§]!e§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §"&§ extends §;!>§
   {
      
      private static const §?Q§:Number = 0.2;
      
      private static const §]!8§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §?Q§ = 0.2;
            do
            {
               §]!8§ = 60;
            }
            while(_loc2_ && _loc1_);
            
         }
      }
      
      private var §]!T§:Boolean = false;
      
      protected var §^h§:Number = -1;
      
      protected var §'5§:Number = 0;
      
      private var §]Z§:Boolean = false;
      
      private var §?=§:Number = 60;
      
      public function §"&§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!_loc7_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            super.setLoadingScreen(param1);
         }
         do
         {
            this.§0%§(0);
         }
         while(!_loc2_);
         
      }
      
      private function §]4§() : int
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         §§push(§1A§.§;!l§());
         if(!_loc2_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(!_loc2_)
         {
            if(_loc1_ == "")
            {
               loop0:
               do
               {
                  §>!l§.§ a§("onFlashLoadComplete");
                  if(!(_loc2_ && this))
                  {
                     if(_loc3_)
                     {
                        if(!_loc2_)
                        {
                           return §,!E§.STATE_STATUS_COMPLETED;
                        }
                        while(true)
                        {
                           this.§]Z§ = true;
                           addr106:
                           while(true)
                           {
                              §]!e§.§>k§();
                           }
                        }
                        addr103:
                     }
                     while(true)
                     {
                        if(!_loc2_)
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           addr100:
                           while(true)
                           {
                              if(this.§]Z§)
                              {
                                 break loop0;
                              }
                              §§goto(addr103);
                           }
                        }
                        §§goto(addr106);
                     }
                     throw new Error(_loc1_,§1A§.§?!L§());
                     addr96:
                  }
               }
               while(!(_loc2_ && this));
               
               return §,!E§.STATE_STATUS_RUNNING;
            }
            §§goto(addr100);
         }
         §§goto(addr96);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:* = 0;
         if(_loc5_ || _loc2_)
         {
            §§push(this.§^h§);
            if(_loc5_ || param1)
            {
               if(§§pop() == -1)
               {
                  loop0:
                  while(true)
                  {
                     this.§^h§ = new Date().time;
                     addr119:
                     while(true)
                     {
                     }
                     loop12:
                     while(true)
                     {
                        if(_loc4_ && _loc2_)
                        {
                           continue loop0;
                        }
                        while(true)
                        {
                           §§push(_loc3_);
                           if(!_loc4_)
                           {
                              if(!_loc4_)
                              {
                                 if(§§pop() == §,!E§.STATE_STATUS_COMPLETED)
                                 {
                                    loop14:
                                    do
                                    {
                                       this.§]!T§ = true;
                                       while(!(_loc4_ && _loc2_))
                                       {
                                          this.§'5§ = 1;
                                          if(_loc5_ || _loc2_)
                                          {
                                             continue loop14;
                                          }
                                       }
                                       continue loop12;
                                    }
                                    while(!_loc5_);
                                    
                                    addr40:
                                    if(!(_loc4_ && _loc2_))
                                    {
                                       if(_loc4_ && _loc2_)
                                       {
                                          break loop12;
                                       }
                                       if(false)
                                       {
                                          continue;
                                       }
                                       addr120:
                                       addr120:
                                       §§push(this.§'U§());
                                       if(!_loc4_)
                                       {
                                          addr124:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc2_:* = §§pop();
                                       if(!_loc4_)
                                       {
                                          this.§0%§(_loc2_);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(_loc2_ == 1);
                                             loop4:
                                             while(true)
                                             {
                                                if(!§§pop())
                                                {
                                                   while(true)
                                                   {
                                                      loop8:
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc5_ || this)
                                                            {
                                                               if(_loc5_)
                                                               {
                                                                  return this.§]4§();
                                                               }
                                                               loop6:
                                                               while(true)
                                                               {
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§push(this.§]!T§);
                                                                  if(_loc4_ && _loc3_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  if(_loc5_ || _loc3_)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  addr186:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     continue loop6;
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               addr179:
                                                            }
                                                         }
                                                         return §,!E§.STATE_STATUS_RUNNING;
                                                      }
                                                   }
                                                   addr165:
                                                }
                                                §§goto(addr186);
                                             }
                                          }
                                       }
                                       §§goto(addr179);
                                    }
                                    break;
                                 }
                                 §§goto(addr120);
                              }
                              while(true)
                              {
                                 §§push(int(§§pop()));
                              }
                              addr93:
                           }
                           while(true)
                           {
                              _loc3_ = §§pop();
                              continue loop12;
                           }
                        }
                        while(true)
                        {
                           §§goto(addr93);
                           §§goto(addr40);
                        }
                     }
                     §§goto(addr119);
                  }
               }
               while(true)
               {
                  if(!this.§]!T§)
                  {
                     §§goto(addr80);
                  }
                  break;
                  §§goto(addr119);
               }
               §§goto(addr120);
            }
            §§goto(addr124);
         }
         §§goto(addr80);
      }
      
      private function §'U§() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            if(§1A§.§@B§)
            {
               addr21:
               §§push(0);
               if(_loc3_ || _loc3_)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_ || this)
                  {
                     addr47:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  addr39:
                  §§push(Number(§§pop()));
                  if(!(_loc4_ && _loc1_))
                  {
                     §§goto(addr47);
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this);
               if(!_loc4_)
               {
                  §§push(_loc1_);
                  if(_loc3_)
                  {
                     §§push(1);
                     if(_loc3_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc1_)
                              {
                                 §§pop();
                                 addr79:
                                 §§push(this.§'5§ == 1);
                              }
                           }
                        }
                        §§push(§§pop().§=!q§(§§pop()));
                        if(!_loc4_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc3_)
                        {
                           §§push(this.§'5§);
                           loop0:
                           while(true)
                           {
                              §§push(1);
                              loop1:
                              while(true)
                              {
                                 §§push(§§pop() == §§pop());
                                 loop2:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             addr231:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                addr202:
                                                while(true)
                                                {
                                                   §§push(1);
                                                   addr203:
                                                   while(_loc3_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      while(!(_loc4_ && this))
                                                      {
                                                      }
                                                      continue loop2;
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                          addr230:
                                       }
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(_loc4_)
                                          {
                                             break;
                                          }
                                          if(§§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                if(_loc3_)
                                                {
                                                   §§pop();
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(!_loc3_)
                                                      {
                                                         break loop10;
                                                      }
                                                      §§push(_loc2_);
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(1);
                                                         if(!(_loc4_ && _loc2_))
                                                         {
                                                            §§push(§§pop() == §§pop());
                                                            if(!_loc3_)
                                                            {
                                                               continue loop10;
                                                            }
                                                            if(!_loc4_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr180);
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  addr88:
                                                                  §§push(this.§'5§);
                                                                  if(_loc3_)
                                                                  {
                                                                     §§push(0.7);
                                                                     if(!_loc4_)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        addr138:
                                                                        addr138:
                                                                        if(_loc4_)
                                                                        {
                                                                           break loop11;
                                                                        }
                                                                        §§push(_loc2_);
                                                                        if(!(_loc4_ && _loc1_))
                                                                        {
                                                                           addr149:
                                                                           §§push(§§pop() * 0.1);
                                                                        }
                                                                     }
                                                                     addr150:
                                                                     §§push(§§pop() + §§pop());
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr138);
                                                               }
                                                               addr158:
                                                               return §§pop();
                                                               addr176:
                                                            }
                                                            §§goto(addr206);
                                                         }
                                                         break;
                                                      }
                                                      §§goto(addr203);
                                                   }
                                                   §§goto(addr202);
                                                }
                                                else
                                                {
                                                   §§goto(addr230);
                                                }
                                             }
                                             §§goto(addr231);
                                          }
                                          §§goto(addr176);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr180:
                        return 1;
                     }
                  }
               }
               §§goto(addr79);
            }
            else
            {
               §§push(1);
            }
            §§goto(addr39);
         }
         §§goto(addr21);
      }
      
      private function §=!q§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            if(param1)
            {
               if(!_loc7_)
               {
                  addr22:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§?=§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(!_loc7_)
                  {
                     _loc4_.§?=§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§^h§) / 1000,this.§?=§) / this.§?=§);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
            var _loc2_:* = §§pop();
            §§push(1 - Math.pow(1 - _loc2_,2));
            if(_loc6_ || this)
            {
               return Number(§§pop());
            }
         }
         §§goto(addr22);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§'5§ = param1;
         }
      }
      
      private function §0%§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            (§3!s§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            super.setViewSize(param1,param2);
            loop0:
            while(§3!s§)
            {
               if(!(_loc4_ && _loc3_))
               {
                  §3!s§.x = 0;
               }
               while(!(_loc4_ && param2))
               {
                  §3!s§.y = 0;
                  if(!_loc4_)
                  {
                     addr49:
                     break loop0;
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
   }
}
