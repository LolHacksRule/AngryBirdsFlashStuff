package §&r§
{
   import §2"'§.§0W§;
   import §2"'§.§6!K§;
   import com.rovio.assets.§?q§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,"?§ extends Sprite
   {
      
      private static const §""N§:Number = 1;
      
      private static const §`"N§:Number = 1.3;
      
      private static const §3!-§:Number = 0.3;
      
      private static const §=J§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §""N§ = 1;
            loop0:
            do
            {
               §`"N§ = 1.3;
               while(true)
               {
                  §3!-§ = 0.3;
                  while(!(_loc2_ && _loc1_))
                  {
                     §=J§ = 3;
                     if(_loc1_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc2_ && _loc2_);
            
         }
      }
      
      private var § !5§:§6!K§;
      
      private var §[e§:MovieClip;
      
      private var §4"!§:int = 3;
      
      public function §,"?§(param1:Object, param2:int, param3:int)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super();
            if(_loc5_)
            {
               §§goto(addr37);
            }
            §§goto(addr49);
         }
         addr37:
         this.init(param1,param2,param3);
         if(!(_loc6_ && param1))
         {
            addr49:
            scaleX = scaleY = §""N§;
         }
      }
      
      private function init(param1:Object, param2:int, param3:int) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && this))
         {
            this.§[e§ = new §?q§.§ q§("DailyRewardItem")();
            loop0:
            while(true)
            {
               addChild(this.§[e§);
               loop1:
               while(true)
               {
                  this.§[e§.x = -this.§[e§.width / 2;
                  while(true)
                  {
                     this.§[e§.y = -this.§[e§.height / 2;
                     loop3:
                     while(_loc4_)
                     {
                        if(param1.day >= param2)
                        {
                           if(param1.day != param2)
                           {
                              if(param1.day != param2 + 1)
                              {
                                 if(param1.day != param2 + 4)
                                 {
                                    this.§[e§.mcBack.gotoAndStop(4);
                                    loop4:
                                    while(true)
                                    {
                                       if(_loc4_ || param1)
                                       {
                                          this.§[e§.mcReward.visible = true;
                                          loop5:
                                          while(true)
                                          {
                                             if(!(_loc5_ && param2))
                                             {
                                                this.§[e§.mcToday.visible = false;
                                                loop6:
                                                while(!_loc5_)
                                                {
                                                   this.§[e§.mcClaimed.visible = false;
                                                   loop7:
                                                   for(; !_loc5_; while(true)
                                                   {
                                                      if(!(_loc4_ || this))
                                                      {
                                                         continue loop7;
                                                      }
                                                      if(_loc5_)
                                                      {
                                                         continue loop6;
                                                      }
                                                      if(!_loc4_)
                                                      {
                                                         continue loop4;
                                                      }
                                                      if(_loc4_ || param3)
                                                      {
                                                         this.§[e§.mcReward.gotoAndStop(param3 + 1);
                                                         if(_loc5_)
                                                         {
                                                            continue;
                                                         }
                                                         if(_loc4_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(_loc5_ && this)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(_loc4_ || param1)
                                                                     {
                                                                        this.§[e§.mcBack.gotoAndStop(3);
                                                                        §§goto(addr267);
                                                                     }
                                                                     §§goto(addr283);
                                                                  }
                                                                  addr255:
                                                               }
                                                               §§goto(addr49);
                                                            }
                                                            §§goto(addr234);
                                                         }
                                                         §§goto(addr220);
                                                      }
                                                      else
                                                      {
                                                         §§goto(addr163);
                                                      }
                                                   },§§goto(addr326))
                                                   {
                                                      if(!(_loc4_ || param3))
                                                      {
                                                         loop14:
                                                         while(true)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc5_ && param3))
                                                               {
                                                                  if(!(_loc5_ && param2))
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§[e§.mcReward.txtAmount.text = "x " + param1.quantity;
                                                                        continue loop7;
                                                                     }
                                                                     return;
                                                                     addr50:
                                                                     addr49:
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.§[e§.mcReward.visible = true;
                                                                     }
                                                                     addr319:
                                                                  }
                                                                  §§goto(addr50);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     this.§[e§.mcReward.visible = true;
                                                                     addr172:
                                                                     while(true)
                                                                     {
                                                                        if(_loc4_ || param3)
                                                                        {
                                                                           if(_loc4_)
                                                                           {
                                                                              this.§[e§.mcToday.visible = false;
                                                                              while(true)
                                                                              {
                                                                                 if(_loc4_)
                                                                                 {
                                                                                    this.§[e§.mcClaimed.visible = false;
                                                                                    continue loop14;
                                                                                 }
                                                                                 §§goto(addr181);
                                                                              }
                                                                              addr181:
                                                                              addr163:
                                                                           }
                                                                           else
                                                                           {
                                                                              while(true)
                                                                              {
                                                                                 this.§[e§.mcClaimed.visible = true;
                                                                              }
                                                                              addr333:
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr50);
                                                                           }
                                                                           addr326:
                                                                        }
                                                                        else
                                                                        {
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc5_)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop3;
                                                                                 }
                                                                                 this.§[e§.mcToday.visible = false;
                                                                                 while(true)
                                                                                 {
                                                                                    this.§[e§.mcClaimed.visible = false;
                                                                                    addr220:
                                                                                    loop12:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!(_loc5_ && param1))
                                                                                       {
                                                                                          §§goto(addr50);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc4_)
                                                                                             {
                                                                                                break loop12;
                                                                                             }
                                                                                             this.§[e§.mcReward.visible = true;
                                                                                             continue loop16;
                                                                                          }
                                                                                          addr267:
                                                                                       }
                                                                                    }
                                                                                    addr353:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§[e§.mcReward.visible = true;
                                                                                    }
                                                                                    §§goto(addr245);
                                                                                 }
                                                                                 addr245:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    this.§[e§.mcToday.visible = true;
                                                                                    addr292:
                                                                                    while(true)
                                                                                    {
                                                                                       this.§[e§.mcClaimed.visible = false;
                                                                                       addr283:
                                                                                       while(true)
                                                                                       {
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             this.§`"F§(true);
                                                                                             while(true)
                                                                                             {
                                                                                                if(!_loc5_)
                                                                                                {
                                                                                                   §§goto(addr50);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc5_ && param1))
                                                                                                      {
                                                                                                         this.§[e§.mcBack.gotoAndStop(2);
                                                                                                         continue loop13;
                                                                                                      }
                                                                                                      addr348:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         this.§[e§.mcBack.gotoAndStop(1);
                                                                                                         §§goto(addr353);
                                                                                                      }
                                                                                                   }
                                                                                                   addr307:
                                                                                                }
                                                                                                §§goto(addr50);
                                                                                             }
                                                                                             addr274:
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr299:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc5_)
                                                                                 {
                                                                                    continue loop0;
                                                                                 }
                                                                                 this.§[e§.mcToday.visible = false;
                                                                              }
                                                                           }
                                                                           addr241:
                                                                        }
                                                                        §§goto(addr333);
                                                                     }
                                                                  }
                                                                  addr213:
                                                               }
                                                               §§goto(addr299);
                                                            }
                                                            §§goto(addr172);
                                                         }
                                                      }
                                                      §§goto(addr50);
                                                   }
                                                   continue loop5;
                                                }
                                                continue loop1;
                                             }
                                             addr201:
                                             while(true)
                                             {
                                                if(!(_loc5_ && param1))
                                                {
                                                   this.§[e§.mcBack.gotoAndStop(5);
                                                   §§goto(addr213);
                                                }
                                             }
                                             §§goto(addr292);
                                          }
                                       }
                                       §§goto(addr274);
                                    }
                                 }
                                 §§goto(addr201);
                              }
                              §§goto(addr255);
                           }
                           §§goto(addr307);
                        }
                        §§goto(addr348);
                     }
                  }
               }
            }
         }
         §§goto(addr50);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §§push(this.§ !5§);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§ !5§);
                     addr80:
                     while(true)
                     {
                        §§pop().stop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr80);
         }
         §§goto(addr81);
      }
      
      private function §`"F§(param1:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§4"!§);
            if(!_loc5_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc5_ && param1))
            {
               _loc2_.§4"!§ = _loc3_;
            }
            if(_loc4_)
            {
               §§push(this.§ !5§);
               loop0:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc4_ || _loc3_)
                  {
                     if(!§§pop())
                     {
                        addr151:
                        loop4:
                        while(true)
                        {
                           §§pop();
                           addr152:
                           while(true)
                           {
                              §§push(param1);
                              if(!(_loc5_ && _loc3_))
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc4_)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                        }
                        addr151:
                     }
                     loop1:
                     while(§§pop())
                     {
                        loop2:
                        while(!(_loc5_ && _loc2_))
                        {
                           this.§ !5§ = §0W§.§&"5§.§]!r§(this,{
                              "scaleX":§`"N§,
                              "scaleY":§`"N§
                           },null,§3!-§,§0W§.§4!E§);
                           while(true)
                           {
                              §§push(this.§ !5§);
                              continue loop0;
                              addr77:
                              while(_loc4_ || _loc2_)
                              {
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(this.§ !5§);
                                    if(_loc4_)
                                    {
                                       §§pop().play();
                                       if(_loc4_)
                                       {
                                          addr53:
                                          break loop1;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                    addr91:
                                 }
                                 continue loop2;
                              }
                           }
                        }
                        §§goto(addr152);
                     }
                     return;
                  }
                  §§goto(addr151);
               }
            }
            §§goto(addr138);
         }
         §§goto(addr53);
      }
      
      private function §4"R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
            §§push(this.§ !5§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  this.§ !5§ = §0W§.§&"5§.§]!r§(this,{
                     "scaleX":§""N§,
                     "scaleY":§""N§
                  },null,§3!-§,§0W§.§]!t§);
                  addr100:
                  loop2:
                  while(true)
                  {
                     if(this.§4"!§ > 0)
                     {
                        while(true)
                        {
                           §§push(this.§ !5§);
                           addr78:
                           while(true)
                           {
                              §§pop().onComplete = this.§`"F§;
                              addr81:
                              while(true)
                              {
                              }
                           }
                        }
                        addr76:
                     }
                     while(true)
                     {
                        §§push(this.§ !5§);
                        if(!_loc1_)
                        {
                           if(!_loc2_)
                           {
                              continue loop0;
                           }
                           §§pop().play();
                           if(_loc1_ && this)
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              if(!_loc1_)
                              {
                                 if(_loc2_)
                                 {
                                    break loop2;
                                 }
                                 break;
                              }
                              continue loop2;
                           }
                           §§goto(addr76);
                        }
                        §§goto(addr78);
                     }
                     continue loop1;
                  }
                  break loop0;
               }
            }
            return;
         }
         §§goto(addr100);
      }
   }
}
