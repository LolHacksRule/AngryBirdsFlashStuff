package §6c§
{
   import §8!v§.§"m§;
   import §8!v§.§>!+§;
   import com.rovio.assets.§8B§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §^!?§ extends Sprite
   {
      
      private static const §=!Y§:Number = 1;
      
      private static const §7"0§:Number = 1.3;
      
      private static const §5!O§:Number = 0.3;
      
      private static const §"I§:int = 3;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=!Y§ = 1;
            loop0:
            while(true)
            {
               §7"0§ = 1.3;
               while(true)
               {
                  §5!O§ = 0.3;
                  loop2:
                  while(_loc1_ || §^!?§)
                  {
                     while(true)
                     {
                        §"I§ = 3;
                        if(!_loc2_)
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
         §§goto(addr68);
      }
      
      private var §]!2§:§"m§;
      
      private var §&"$§:MovieClip;
      
      private var §-!>§:int = 3;
      
      public function §^!?§(param1:Object, param2:int)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super();
            if(!_loc5_)
            {
               this.init(param1,param2);
               if(_loc4_)
               {
                  addr38:
                  scaleX = scaleY = §=!Y§;
               }
               return;
            }
         }
         §§goto(addr38);
      }
      
      private function init(param1:Object, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§&"$§ = new §8B§.§6"C§("DailyRewardItem")();
            while(true)
            {
               addChild(this.§&"$§);
               loop1:
               while(_loc4_)
               {
                  this.§&"$§.x = -this.§&"$§.width / 2;
                  while(true)
                  {
                     this.§&"$§.y = -this.§&"$§.height / 2;
                     loop3:
                     for(; _loc4_; if(!(_loc4_ || this))
                     {
                        continue;
                     },this.§&"$§.mcToday.visible = false,§§goto(addr168))
                     {
                        if(param1.day >= param2)
                        {
                           if(param1.day != param2)
                           {
                              if(param1.day != param2 + 1)
                              {
                                 this.§&"$§.mcBack.gotoAndStop(4);
                                 loop4:
                                 while(true)
                                 {
                                    if(_loc4_ || this)
                                    {
                                       if(_loc3_ && param1)
                                       {
                                          loop18:
                                          while(true)
                                          {
                                             if(!(_loc3_ && _loc3_))
                                             {
                                                continue loop3;
                                             }
                                             addr206:
                                             while(true)
                                             {
                                                if(!_loc3_)
                                                {
                                                   if(!_loc3_)
                                                   {
                                                      addr210:
                                                      this.§&"$§.mcBack.gotoAndStop(3);
                                                      while(_loc4_ || this)
                                                      {
                                                         this.§&"$§.mcReward.visible = true;
                                                         continue loop18;
                                                         §§goto(addr210);
                                                      }
                                                      §§goto(addr234);
                                                      addr215:
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         this.§&"$§.mcBack.gotoAndStop(2);
                                                         §§goto(addr261);
                                                      }
                                                      addr256:
                                                   }
                                                   §§goto(addr282);
                                                }
                                             }
                                          }
                                          continue loop3;
                                       }
                                       if(_loc4_)
                                       {
                                          this.§&"$§.mcReward.visible = true;
                                          continue;
                                       }
                                       while(true)
                                       {
                                          if(_loc4_ || _loc3_)
                                          {
                                             this.§&"$§.mcReward.visible = true;
                                             while(true)
                                             {
                                                this.§&"$§.mcToday.visible = true;
                                                addr241:
                                                while(true)
                                                {
                                                   this.§&"$§.mcClaimed.visible = false;
                                                   addr234:
                                                   while(true)
                                                   {
                                                      this.§`9§(true);
                                                      addr227:
                                                      while(true)
                                                      {
                                                         §§goto(addr29);
                                                      }
                                                   }
                                                }
                                             }
                                             addr248:
                                          }
                                          addr282:
                                          while(true)
                                          {
                                             if(_loc3_)
                                             {
                                                continue loop1;
                                             }
                                             this.§&"$§.mcClaimed.visible = true;
                                             §§goto(addr275);
                                          }
                                       }
                                       addr261:
                                       §§goto(addr241);
                                    }
                                    else
                                    {
                                       while(true)
                                       {
                                          if(_loc4_ || param1)
                                          {
                                             this.§&"$§.mcClaimed.visible = false;
                                             while(true)
                                             {
                                                if(!(_loc3_ && param2))
                                                {
                                                   if(_loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(_loc4_)
                                                   {
                                                      addr29:
                                                      loop9:
                                                      while(true)
                                                      {
                                                         this.§&"$§.mcReward.gotoAndStop(param1.quantity);
                                                         if(_loc3_)
                                                         {
                                                            loop10:
                                                            while(!(_loc4_ || param1))
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§&"$§.mcClaimed.visible = false;
                                                                  continue loop10;
                                                               }
                                                            }
                                                            addr59:
                                                            if(_loc4_ || this)
                                                            {
                                                               addr66:
                                                               if(_loc4_ || _loc3_)
                                                               {
                                                                  continue;
                                                               }
                                                               addr291:
                                                               while(true)
                                                               {
                                                                  this.§&"$§.mcToday.visible = false;
                                                                  §§goto(addr66);
                                                               }
                                                               continue loop1;
                                                            }
                                                            continue loop4;
                                                            addr52:
                                                         }
                                                         if(!(_loc3_ && this))
                                                         {
                                                            break;
                                                         }
                                                         addr275:
                                                         addr275:
                                                         while(true)
                                                         {
                                                            continue loop9;
                                                         }
                                                         addr275:
                                                         §§goto(addr275);
                                                      }
                                                      return;
                                                   }
                                                   while(true)
                                                   {
                                                      this.§&"$§.mcBack.gotoAndStop(1);
                                                      addr302:
                                                      while(true)
                                                      {
                                                         this.§&"$§.mcReward.visible = true;
                                                         §§goto(addr291);
                                                      }
                                                   }
                                                   addr297:
                                                   §§goto(addr291);
                                                }
                                                else
                                                {
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr175);
                                             }
                                             addr175:
                                             §§goto(addr227);
                                             addr140:
                                          }
                                          §§goto(addr302);
                                       }
                                       addr168:
                                    }
                                    §§goto(addr291);
                                 }
                              }
                              §§goto(addr206);
                           }
                           §§goto(addr256);
                        }
                        §§goto(addr297);
                     }
                  }
               }
            }
         }
         §§goto(addr275);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §§push(this.§]!2§);
            if(!(_loc2_ && _loc2_))
            {
               if(§§pop())
               {
                  loop0:
                  while(true)
                  {
                     §§push(this.§]!2§);
                     addr74:
                     while(true)
                     {
                        §§pop().stop();
                        continue loop0;
                     }
                  }
               }
               return;
            }
            §§goto(addr74);
         }
         §§goto(addr75);
      }
      
      private function §`9§(param1:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(_loc5_ || _loc2_)
         {
            var _loc2_:*;
            §§push((_loc2_ = this).§-!>§);
            if(_loc5_)
            {
               §§push(§§pop() - 1);
            }
            var _loc3_:* = §§pop();
            if(!(_loc4_ && _loc2_))
            {
               _loc2_.§-!>§ = _loc3_;
            }
            if(_loc5_ || _loc2_)
            {
               §§push(this.§]!2§);
               loop3:
               while(true)
               {
                  §§push(Boolean(§§pop()));
                  if(_loc5_ || this)
                  {
                     if(!§§pop())
                     {
                        loop2:
                        while(true)
                        {
                           §§pop();
                           addr153:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc5_ || this)
                              {
                                 §§push(Boolean(§§pop()));
                              }
                              if(_loc5_)
                              {
                                 break;
                              }
                              continue loop2;
                           }
                        }
                        addr152:
                     }
                     while(true)
                     {
                        if(§§pop())
                        {
                           loop5:
                           while(true)
                           {
                              this.§]!2§ = §>!+§.§;"§.§^!K§(this,{
                                 "scaleX":§7"0§,
                                 "scaleY":§7"0§
                              },null,§5!O§,§>!+§.§!!>§);
                              loop6:
                              while(true)
                              {
                                 §§push(this.§]!2§);
                                 loop7:
                                 while(true)
                                 {
                                    §§pop().onComplete = this.§#z§;
                                    addr99:
                                    while(true)
                                    {
                                       §§push(this.§]!2§);
                                       if(!(_loc5_ || param1))
                                       {
                                          continue loop7;
                                       }
                                       if(!_loc5_)
                                       {
                                          continue loop3;
                                       }
                                       §§pop().play();
                                       if(!_loc5_)
                                       {
                                          continue;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop6;
                                       }
                                       if(_loc4_)
                                       {
                                          continue loop5;
                                       }
                                       if(_loc5_ || param1)
                                       {
                                          break;
                                       }
                                       §§goto(addr153);
                                    }
                                 }
                              }
                           }
                        }
                        return;
                     }
                  }
                  §§goto(addr152);
               }
               addr51:
            }
            §§goto(addr99);
         }
         §§goto(addr51);
      }
      
      private function §#z§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §§push(this.§]!2§);
            loop0:
            while(§§pop())
            {
               loop1:
               while(true)
               {
                  this.§]!2§ = §>!+§.§;"§.§^!K§(this,{
                     "scaleX":§=!Y§,
                     "scaleY":§=!Y§
                  },null,§5!O§,§>!+§.§'"'§);
                  loop2:
                  while(true)
                  {
                     if(this.§-!>§ > 0)
                     {
                        if(!(_loc2_ && _loc1_))
                        {
                           §§push(this.§]!2§);
                           while(true)
                           {
                              if(_loc2_)
                              {
                                 continue loop0;
                              }
                              §§pop().onComplete = this.§`9§;
                           }
                           addr90:
                        }
                        while(true)
                        {
                           addr33:
                           §§pop().play();
                           if(!(_loc2_ && this))
                           {
                              if(_loc1_ || _loc1_)
                              {
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    break loop0;
                                 }
                                 continue loop1;
                              }
                              continue loop2;
                           }
                        }
                        addr95:
                     }
                     while(true)
                     {
                        §§push(this.§]!2§);
                        if(_loc1_)
                        {
                           §§goto(addr33);
                        }
                        else
                        {
                           §§goto(addr90);
                        }
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr99);
      }
   }
}
