package §7"@§
{
   import §'!s§.§%?§;
   import §+N§.§@!]§;
   import §0!G§.§#`§;
   import §0!G§.§1-§;
   import §]!>§.§"!w§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §,!D§ extends §#`§
   {
      
      private static const §7!`§:Number = 0.2;
      
      private static const §@!`§:Number = 60;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §7!`§ = 0.2;
            do
            {
               §@!`§ = 60;
            }
            while(_loc2_);
            
         }
      }
      
      private var §%!t§:Boolean = false;
      
      protected var §,"0§:Number = -1;
      
      protected var §7n§:Number = 0;
      
      private var §^!_§:Boolean = false;
      
      private var §+!y§:Number = 60;
      
      public function §,!D§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && this))
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_)
         {
            super.setLoadingScreen(param1);
            if(!(_loc4_ && this))
            {
               this.§3A§(0);
            }
         }
         var _loc2_:Number = Math.random();
         var _loc3_:MovieClip = §"">§.getChildByName("Tip") as MovieClip;
         if(_loc5_ || this)
         {
            if(_loc3_)
            {
               loop0:
               while(true)
               {
                  §§push(_loc2_);
                  loop1:
                  while(true)
                  {
                     §§push(0.05);
                     loop2:
                     while(§§pop() >= §§pop())
                     {
                        §§push(_loc2_);
                        while(true)
                        {
                           §§push(0.1);
                           loop4:
                           while(§§pop() >= §§pop())
                           {
                              §§push(_loc2_);
                              loop5:
                              while(true)
                              {
                                 §§push(0.15);
                                 loop6:
                                 while(true)
                                 {
                                    if(!(_loc4_ && this))
                                    {
                                       if(§§pop() >= §§pop())
                                       {
                                          §§push(_loc2_);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(0.2);
                                             while(§§pop() >= §§pop())
                                             {
                                                §§push(_loc2_);
                                                while(true)
                                                {
                                                   if(!_loc4_)
                                                   {
                                                      if(!(_loc4_ && _loc3_))
                                                      {
                                                         §§push(0.4);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(§§pop() < §§pop())
                                                               {
                                                                  if(!(_loc4_ && param1))
                                                                  {
                                                                     if(_loc4_)
                                                                     {
                                                                        addr219:
                                                                        if(_loc5_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop6;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        addr255:
                                                                        break;
                                                                        addr255:
                                                                     }
                                                                     _loc3_.gotoAndStop(1);
                                                                  }
                                                                  break;
                                                                  addr195:
                                                               }
                                                               else
                                                               {
                                                                  addr133:
                                                               }
                                                               §§push(_loc2_);
                                                               while(!_loc4_)
                                                               {
                                                                  §§push(0.6);
                                                                  continue loop10;
                                                               }
                                                               continue loop7;
                                                            }
                                                            continue loop2;
                                                         }
                                                         §§goto(addr51);
                                                      }
                                                      break;
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop1;
                                             }
                                             if(!(_loc5_ || _loc2_))
                                             {
                                                break loop2;
                                             }
                                             continue loop0;
                                          }
                                       }
                                       break;
                                    }
                                    continue loop4;
                                 }
                                 if(_loc5_ || _loc3_)
                                 {
                                    _loc3_.gotoAndStop(4);
                                    §§goto(addr255);
                                 }
                                 else
                                 {
                                    addr51:
                                    return;
                                    addr265:
                                 }
                                 §§goto(addr51);
                              }
                           }
                           _loc3_.gotoAndStop(5);
                           §§goto(addr265);
                           if(_loc4_ && _loc3_)
                           {
                              continue;
                           }
                           §§goto(addr93);
                        }
                     }
                     _loc3_.gotoAndStop(6);
                     §§goto(addr274);
                  }
               }
            }
            §§goto(addr51);
         }
         §§goto(addr255);
      }
      
      private function §5i§() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§"!w§.§8"3§());
         if(!(_loc3_ && _loc2_))
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || _loc1_)
         {
            if(_loc1_ == "")
            {
               do
               {
                  §@!]§.§9"'§("onFlashLoadComplete");
                  if(!_loc3_)
                  {
                     if(!(_loc3_ && _loc1_))
                     {
                        if(_loc2_)
                        {
                           return §1-§.STATE_STATUS_COMPLETED;
                        }
                        addr115:
                        §%?§.§6!7§();
                     }
                     else if(!_loc3_)
                     {
                        if(_loc3_)
                        {
                           addr109:
                           if(!this.§^!_§)
                           {
                              break;
                           }
                        }
                        else
                        {
                           addr101:
                        }
                        return §1-§.STATE_STATUS_RUNNING;
                     }
                     throw new Error(_loc1_,§"!w§.§6E§());
                  }
               }
               while(!(_loc3_ && _loc2_));
               
               this.§^!_§ = true;
               §§goto(addr115);
            }
            §§goto(addr109);
         }
         §§goto(addr101);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!(_loc5_ && _loc2_))
         {
            §§push(this.§,"0§);
            if(!(_loc5_ && _loc2_))
            {
               if(§§pop() == -1)
               {
                  addr98:
                  while(true)
                  {
                     this.§,"0§ = new Date().time;
                     addr103:
                     while(true)
                     {
                     }
                  }
                  addr98:
               }
               loop0:
               while(true)
               {
                  if(!this.§%!t§)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(super.run(param1));
                        loop2:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop3:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    if(!_loc5_)
                                    {
                                       if(!_loc5_)
                                       {
                                          if(§§pop() != §1-§.STATE_STATUS_COMPLETED)
                                          {
                                             break;
                                          }
                                          loop6:
                                          while(true)
                                          {
                                             if(_loc5_)
                                             {
                                                continue loop1;
                                             }
                                             if(_loc5_)
                                             {
                                                break;
                                             }
                                             this.§%!t§ = true;
                                             while(_loc4_)
                                             {
                                                this.§7n§ = 1;
                                                if(!_loc5_)
                                                {
                                                   continue loop6;
                                                }
                                             }
                                             §§goto(addr98);
                                          }
                                          continue loop0;
                                       }
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                              }
                           }
                        }
                     }
                  }
                  §§push(this.§1!W§());
                  if(_loc4_ || param1)
                  {
                     §§push(Number(§§pop()));
                  }
               }
            }
            var _loc2_:* = §§pop();
            if(_loc4_)
            {
               this.§3A§(_loc2_);
            }
            loop8:
            while(true)
            {
               §§push(_loc2_ == 1);
               if(_loc4_)
               {
                  if(§§pop())
                  {
                     loop11:
                     while(true)
                     {
                        §§pop();
                        addr178:
                        while(true)
                        {
                           §§push(this.§%!t§);
                           if(!_loc5_)
                           {
                              §§push(Boolean(§§pop()));
                           }
                           if(_loc4_ || this)
                           {
                              break;
                           }
                           continue loop11;
                        }
                     }
                     addr177:
                  }
                  while(§§pop())
                  {
                     if(!(_loc5_ && _loc2_))
                     {
                        return this.§5i§();
                     }
                     if(_loc4_ || this)
                     {
                        if(!_loc5_)
                        {
                           break;
                        }
                        continue loop8;
                     }
                     §§goto(addr178);
                  }
                  return §1-§.STATE_STATUS_RUNNING;
               }
               §§goto(addr177);
            }
         }
         §§goto(addr98);
      }
      
      private function §1!W§() : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc2_))
         {
            if(§"!w§.§6I§)
            {
               addr27:
               §§push(0);
               if(!(_loc3_ && _loc1_))
               {
                  §§push(Number(§§pop()));
                  if(!(_loc3_ && _loc3_))
                  {
                     addr48:
                     §§push(Number(§§pop()));
                  }
               }
               else
               {
                  addr45:
                  §§push(Number(§§pop()));
                  if(_loc4_)
                  {
                     §§goto(addr48);
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this);
               if(_loc4_ || _loc1_)
               {
                  §§push(_loc1_);
                  if(_loc4_)
                  {
                     §§push(1);
                     if(!(_loc3_ && _loc1_))
                     {
                        §§push(§§pop() == §§pop());
                        if(_loc4_)
                        {
                           if(§§pop())
                           {
                              if(_loc4_)
                              {
                                 addr76:
                                 §§pop();
                                 §§push(this.§7n§ == 1);
                              }
                           }
                           §§push(§§pop().§9!w§(§§pop()));
                           if(!_loc3_)
                           {
                              §§push(Number(§§pop()));
                           }
                           var _loc2_:* = §§pop();
                           if(_loc4_ || _loc1_)
                           {
                              §§push(this.§7n§);
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
                                          if(!§§pop())
                                          {
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop());
                                                if(_loc3_)
                                                {
                                                   break;
                                                }
                                                if(§§pop())
                                                {
                                                   loop8:
                                                   while(!_loc3_)
                                                   {
                                                      §§pop();
                                                      loop9:
                                                      do
                                                      {
                                                         §§push(_loc2_);
                                                         loop10:
                                                         while(true)
                                                         {
                                                            §§push(1);
                                                            if(!(_loc3_ && _loc2_))
                                                            {
                                                               if(_loc3_)
                                                               {
                                                                  continue loop1;
                                                               }
                                                               §§push(§§pop() == §§pop());
                                                               if(_loc3_ && _loc1_)
                                                               {
                                                                  continue loop8;
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(!(_loc3_ && _loc3_))
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     if(_loc4_)
                                                                     {
                                                                        while(true)
                                                                        {
                                                                        }
                                                                        addr210:
                                                                     }
                                                                     else
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc1_);
                                                                           continue loop0;
                                                                        }
                                                                        addr252:
                                                                     }
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     §§push(this.§7n§);
                                                                     if(_loc4_ || this)
                                                                     {
                                                                        §§push(0.7);
                                                                        if(_loc4_ || _loc3_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!(_loc3_ && this))
                                                                           {
                                                                              addr130:
                                                                              §§push(_loc1_);
                                                                              if(_loc4_)
                                                                              {
                                                                                 addr170:
                                                                                 §§push(0.2);
                                                                                 if(_loc4_ || _loc1_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc3_ && _loc1_))
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc3_ && _loc2_))
                                                                                       {
                                                                                          if(!_loc4_)
                                                                                          {
                                                                                             continue loop10;
                                                                                          }
                                                                                          if(_loc3_)
                                                                                          {
                                                                                             continue loop0;
                                                                                          }
                                                                                          §§push(_loc2_);
                                                                                          if(_loc4_ || _loc2_)
                                                                                          {
                                                                                             break loop10;
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr172);
                                                                                    }
                                                                                    addr171:
                                                                                    addr172:
                                                                                    return §§pop();
                                                                                    §§push(§§pop() + §§pop());
                                                                                 }
                                                                                 §§goto(addr171);
                                                                                 §§push(§§pop() * §§pop());
                                                                              }
                                                                              break loop10;
                                                                           }
                                                                           §§goto(addr172);
                                                                        }
                                                                        break loop10;
                                                                     }
                                                                     §§goto(addr130);
                                                                  }
                                                               }
                                                            }
                                                            else
                                                            {
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() == §§pop());
                                                                  if(!_loc3_)
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  continue loop8;
                                                               }
                                                               while(true)
                                                               {
                                                                  §§pop();
                                                               }
                                                               addr251:
                                                               addr231:
                                                            }
                                                            §§goto(addr252);
                                                         }
                                                         §§goto(addr170);
                                                      }
                                                      while(!_loc4_);
                                                      
                                                      return 1;
                                                   }
                                                   continue loop2;
                                                }
                                                §§goto(addr195);
                                             }
                                             continue;
                                          }
                                          §§goto(addr251);
                                       }
                                    }
                                 }
                              }
                           }
                           §§goto(addr210);
                        }
                     }
                  }
               }
               §§goto(addr76);
            }
            else
            {
               §§push(1);
            }
            §§goto(addr45);
         }
         §§goto(addr27);
      }
      
      private function §9!w§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc3_))
         {
            if(param1)
            {
               if(_loc6_)
               {
                  var _loc4_:*;
                  §§push((_loc4_ = this).§+!y§);
                  if(_loc6_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_)
                  {
                     _loc4_.§+!y§ = _loc5_;
                  }
               }
            }
         }
         §§push(Math.min((new Date().time - this.§,"0§) / 1000,this.§+!y§) / this.§+!y§);
         if(!(_loc7_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(1 - Math.pow(1 - _loc2_,2));
         if(_loc6_)
         {
            return Number(§§pop());
         }
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§7n§ = param1;
         }
      }
      
      private function §3A§(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && this))
         {
            (§"">§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setViewSize(param1,param2);
            loop0:
            for(; §"">§; while(_loc4_ || _loc3_)
            {
               §§goto(addr54);
            })
            {
               while(true)
               {
                  §§push(param1);
                  if(_loc4_ || param2)
                  {
                     §§push(§§pop() + 180);
                     if(_loc4_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  param1 = §§pop();
                  continue loop0;
                  addr61:
                  if(!(_loc3_ && param2))
                  {
                     §"">§.y = param2 - 570 >> 1;
                     addr68:
                     if(_loc4_)
                     {
                        addr54:
                        break loop0;
                        addr54:
                     }
                     while(!(_loc3_ && this))
                     {
                        §§goto(addr61);
                        §§goto(addr68);
                     }
                     continue loop0;
                  }
               }
            }
            return;
         }
         while(true)
         {
            §"">§.x = param1 - §"">§.width >> 1;
            §§goto(addr54);
         }
      }
   }
}
