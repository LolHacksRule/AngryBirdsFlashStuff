package §40§
{
   import §6!M§.§;!G§;
   import §9!y§.§@M§;
   import §<!>§.§,?§;
   import §<!>§.§?Y§;
   import §@i§.§=r§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class §`!?§ extends §,?§
   {
      
      private static const §=!$§:Number = 0.2;
      
      private static const §9b§:Number = 60;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            §=!$§ = 0.2;
         }
         do
         {
            §9b§ = 60;
         }
         while(_loc1_);
         
      }
      
      private var §3!u§:Boolean = false;
      
      protected var §9q§:Number = -1;
      
      protected var §#!=§:Number = 0;
      
      private var §3k§:Boolean = false;
      
      private var §4!M§:Number = 60;
      
      public function §`!?§(param1:Boolean = true, param2:String = "load", param3:Number = 1000, param4:String = "", param5:String = "")
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!_loc6_)
         {
            super(param1,param2,param3,param4,param5);
         }
      }
      
      override public function setLoadingScreen(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            super.setLoadingScreen(param1);
            do
            {
               this.§2p§(0);
            }
            while(_loc2_ && _loc3_);
            
         }
      }
      
      private function §;3§() : int
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         §§push(§;!G§.§ t§());
         if(!_loc3_)
         {
            §§push(§§pop());
         }
         var _loc1_:* = §§pop();
         if(_loc2_ || this)
         {
            if(_loc1_ != "")
            {
               if(_loc2_)
               {
                  if(!this.§3k§)
                  {
                     addr112:
                     this.§3k§ = true;
                  }
                  else
                  {
                     §§goto(addr59);
                  }
               }
               loop1:
               while(true)
               {
                  §@M§.§!!g§();
                  addr101:
                  while(true)
                  {
                     if(_loc2_)
                     {
                        break loop1;
                     }
                     continue loop1;
                  }
               }
               throw new Error(_loc1_,§;!G§.§;K§());
            }
            while(true)
            {
               §=r§.§[!3§("onFlashLoadComplete");
               if(_loc2_ || _loc3_)
               {
                  return §?Y§.STATE_STATUS_COMPLETED;
               }
               if(_loc2_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     if(!(_loc3_ && this))
                     {
                        continue;
                     }
                     §§goto(addr112);
                  }
                  break;
               }
            }
            §§goto(addr101);
            addr59:
            return §?Y§.STATE_STATUS_RUNNING;
         }
         §§goto(addr89);
      }
      
      override public function run(param1:Number) : int
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:* = 0;
         if(!_loc5_)
         {
            §§push(this.§9q§);
            if(!(_loc5_ && this))
            {
               if(§§pop() == -1)
               {
                  addr108:
                  while(true)
                  {
                     this.§9q§ = new Date().time;
                     addr113:
                     while(true)
                     {
                     }
                  }
                  addr108:
               }
               while(true)
               {
                  if(!this.§3!u§)
                  {
                     while(true)
                     {
                        if(_loc4_ || param1)
                        {
                           §§push(super.run(param1));
                           if(!(_loc5_ && _loc2_))
                           {
                              §§push(int(§§pop()));
                           }
                           loop2:
                           while(true)
                           {
                              _loc3_ = §§pop();
                              addr86:
                              while(true)
                              {
                                 continue loop2;
                              }
                           }
                        }
                        else
                        {
                           §§goto(addr108);
                        }
                     }
                  }
                  §§push(this.§%!?§());
                  if(!(_loc5_ && _loc3_))
                  {
                     §§push(Number(§§pop()));
                  }
                  §§goto(addr113);
               }
            }
            var _loc2_:* = §§pop();
            if(!_loc5_)
            {
               this.§2p§(_loc2_);
               loop6:
               while(true)
               {
                  §§push(_loc2_ == 1);
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           continue loop6;
                        }
                        addr195:
                     }
                     else
                     {
                        while(true)
                        {
                           addr160:
                           while(true)
                           {
                              if(§§pop())
                              {
                                 if(!(_loc5_ && _loc2_))
                                 {
                                    return this.§;3§();
                                 }
                                 if(_loc5_ && this)
                                 {
                                    continue loop6;
                                 }
                                 addr188:
                              }
                              addr128:
                              return §?Y§.STATE_STATUS_RUNNING;
                           }
                        }
                        addr159:
                     }
                     addr151:
                     if(_loc5_ && param1)
                     {
                        continue;
                     }
                     §§goto(addr159);
                     §§push(Boolean(§§pop()));
                  }
               }
            }
            §§goto(addr188);
         }
         §§goto(addr108);
      }
      
      private function §%!?§() : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc1_))
         {
            if(§;!G§.§2Q§)
            {
               addr26:
               §§push(0);
               if(_loc3_)
               {
                  §§push(Number(§§pop()));
                  if(_loc3_ || _loc2_)
                  {
                  }
                  addr42:
                  §§push(Number(§§pop()));
               }
               else
               {
                  addr39:
                  §§push(Number(§§pop()));
                  if(!_loc4_)
                  {
                     §§goto(addr42);
                  }
               }
               var _loc1_:* = §§pop();
               §§push(this);
               if(_loc3_)
               {
                  §§push(_loc1_);
                  if(_loc3_ || _loc3_)
                  {
                     §§push(1);
                     if(_loc3_ || _loc2_)
                     {
                        §§push(§§pop() == §§pop());
                        if(!(_loc4_ && _loc3_))
                        {
                           if(§§pop())
                           {
                              if(_loc3_ || _loc3_)
                              {
                                 §§pop();
                                 addr84:
                                 §§push(this.§#!=§ == 1);
                              }
                           }
                        }
                        §§push(§§pop().§const§(§§pop()));
                        if(_loc3_)
                        {
                           §§push(Number(§§pop()));
                        }
                        var _loc2_:* = §§pop();
                        if(_loc3_ || _loc2_)
                        {
                           §§push(this.§#!=§);
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
                                    loop3:
                                    while(true)
                                    {
                                       if(§§pop())
                                       {
                                          loop4:
                                          while(true)
                                          {
                                             §§pop();
                                             loop5:
                                             while(true)
                                             {
                                                §§push(_loc1_);
                                                loop6:
                                                while(true)
                                                {
                                                   §§push(1);
                                                   loop7:
                                                   while(!_loc4_)
                                                   {
                                                      §§push(§§pop() == §§pop());
                                                      if(_loc3_ || _loc3_)
                                                      {
                                                         if(!_loc4_)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(§§pop());
                                                               if(_loc4_ && _loc1_)
                                                               {
                                                                  break;
                                                               }
                                                               if(§§pop())
                                                               {
                                                                  loop8:
                                                                  while(true)
                                                                  {
                                                                     §§pop();
                                                                     addr236:
                                                                     while(!(_loc4_ && _loc1_))
                                                                     {
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           addr168:
                                                                           while(true)
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc3_ || this)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop7;
                                                                           }
                                                                           addr184:
                                                                           if(!_loc3_)
                                                                           {
                                                                              continue loop2;
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop5;
                                                                  }
                                                                  addr235:
                                                               }
                                                               while(true)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     if(_loc3_)
                                                                     {
                                                                        if(_loc3_ || _loc2_)
                                                                        {
                                                                           return 1;
                                                                        }
                                                                        §§goto(addr236);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr98:
                                                                        §§push(this.§#!=§);
                                                                        if(!_loc4_)
                                                                        {
                                                                           if(!(_loc4_ && _loc3_))
                                                                           {
                                                                              §§push(0.7);
                                                                              if(!_loc4_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    addr126:
                                                                                    if(_loc3_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    continue loop6;
                                                                                 }
                                                                                 addr150:
                                                                                 if(!_loc4_)
                                                                                 {
                                                                                    §§goto(addr163);
                                                                                 }
                                                                                 continue loop0;
                                                                              }
                                                                              §§goto(addr142);
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr168);
                                                                           }
                                                                        }
                                                                        §§goto(addr126);
                                                                     }
                                                                  }
                                                                  §§goto(addr98);
                                                               }
                                                               §§push(_loc1_);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(0.2);
                                                                  if(_loc3_ || _loc1_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc3_)
                                                                     {
                                                                        §§goto(addr142);
                                                                     }
                                                                  }
                                                                  §§goto(addr160);
                                                               }
                                                               addr142:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc3_ || _loc2_)
                                                               {
                                                                  §§goto(addr150);
                                                               }
                                                               addr163:
                                                               §§push(_loc2_);
                                                               if(!(_loc4_ && _loc3_))
                                                               {
                                                                  addr160:
                                                                  §§push(§§pop() * 0.1);
                                                               }
                                                               return §§pop() + §§pop();
                                                            }
                                                            continue loop3;
                                                            addr225:
                                                         }
                                                         continue loop4;
                                                      }
                                                      §§goto(addr235);
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr225);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr243);
                     }
                  }
               }
               §§goto(addr84);
            }
            else
            {
               §§push(1);
            }
            §§goto(addr39);
         }
         §§goto(addr26);
      }
      
      private function §const§(param1:Boolean) : Number
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(!(_loc7_ && _loc2_))
         {
            if(param1)
            {
               if(!(_loc7_ && this))
               {
                  addr32:
                  var _loc4_:*;
                  §§push((_loc4_ = this).§4!M§);
                  if(_loc6_ || _loc3_)
                  {
                     §§push(§§pop() - 1);
                  }
                  var _loc5_:* = §§pop();
                  if(_loc6_)
                  {
                     _loc4_.§4!M§ = _loc5_;
                  }
               }
            }
            §§push(Math.min((new Date().time - this.§9q§) / 1000,this.§4!M§) / this.§4!M§);
            if(!_loc7_)
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
         §§goto(addr32);
      }
      
      override public function setLoadingPercentage(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§#!=§ = param1;
         }
      }
      
      private function §2p§(param1:Number) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            (§0!0§.getChildByName("Bar") as MovieClip).mcProgress.scaleX = param1;
         }
      }
      
      override public function setViewSize(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super.setViewSize(param1,param2);
         }
         while(§0!0§)
         {
            do
            {
               §0!0§.x = 0;
               do
               {
                  §0!0§.y = 0;
               }
               while(!_loc4_);
               
            }
            while(_loc3_);
            
            if(_loc4_ || param1)
            {
               break;
            }
         }
      }
   }
}
