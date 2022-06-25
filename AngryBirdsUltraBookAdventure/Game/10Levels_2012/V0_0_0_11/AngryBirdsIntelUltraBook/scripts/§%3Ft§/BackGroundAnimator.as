package §?t§
{
   import flash.display.MovieClip;
   
   public class BackGroundAnimator
   {
       
      
      private var §!p§:MovieClip;
      
      private var §;=§:uint;
      
      private var §^!0§:String;
      
      private var §=!Z§:Vector.<MovieClip>;
      
      private var §&!S§:Number = 41.666666666666664;
      
      private var §6!2§:int = 0;
      
      private var §5m§:Boolean;
      
      private var §'!V§:Boolean;
      
      private var §3!W§:uint;
      
      public function BackGroundAnimator(background:MovieClip, animPrefix:String, animationsCount:uint = 0, maxSimultanious:uint = 3)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         if(!_loc6_)
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
                     loop3:
                     while(true)
                     {
                        loop4:
                        while(true)
                        {
                           super();
                           while(true)
                           {
                              loop6:
                              while(true)
                              {
                                 this.§!p§ = background;
                                 loop7:
                                 while(true)
                                 {
                                    loop8:
                                    while(true)
                                    {
                                       this.§^!0§ = animPrefix;
                                       while(true)
                                       {
                                          while(true)
                                          {
                                             this.§'!V§ = true;
                                             addr190:
                                             while(_loc5_)
                                             {
                                                if(_loc5_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   continue loop7;
                                                }
                                                continue loop8;
                                             }
                                          }
                                          loop13:
                                          while(!(_loc6_ && background))
                                          {
                                             while(_loc5_)
                                             {
                                                if(!_loc5_)
                                                {
                                                   continue loop2;
                                                }
                                                if(!_loc5_)
                                                {
                                                   continue loop1;
                                                }
                                                §§push(this);
                                                if(!(_loc6_ && animPrefix))
                                                {
                                                   §§push(maxSimultanious);
                                                   if(_loc5_)
                                                   {
                                                      if(§§pop() > this.§;=§)
                                                      {
                                                         addr138:
                                                         §§push(this.§;=§);
                                                         if(_loc5_ || animPrefix)
                                                         {
                                                            §§push(uint(§§pop()));
                                                            if(!(_loc5_ || this))
                                                            {
                                                               addr160:
                                                               §§pop().§3!W§ = uint(§§pop());
                                                               while(true)
                                                               {
                                                                  addr121:
                                                                  while(true)
                                                                  {
                                                                     this.§=!Z§ = new Vector.<MovieClip>();
                                                                     addr94:
                                                                     addr185:
                                                                     while(!(_loc6_ && animPrefix))
                                                                     {
                                                                        continue loop4;
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        this.§;=§ = animationsCount;
                                                                        continue loop13;
                                                                        if(!(_loc6_ && animationsCount))
                                                                        {
                                                                           continue loop3;
                                                                        }
                                                                        continue loop13;
                                                                        §§goto(addr94);
                                                                     }
                                                                  }
                                                               }
                                                               addr161:
                                                            }
                                                            §§goto(addr160);
                                                         }
                                                      }
                                                      else
                                                      {
                                                         §§push(maxSimultanious);
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr160);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr160);
                                                }
                                                §§goto(addr138);
                                             }
                                             continue loop6;
                                          }
                                       }
                                    }
                                 }
                              }
                              addr35:
                              if(!(_loc6_ && animationsCount))
                              {
                                 return;
                                 addr42:
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            if(_loc5_)
            {
               if(!_loc6_)
               {
                  if(_loc5_)
                  {
                     §§goto(addr35);
                  }
                  §§goto(addr94);
               }
               §§goto(addr54);
            }
            §§goto(addr47);
         }
         §§goto(addr42);
      }
      
      private function reset() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc4_)
         {
         }
         var mc:MovieClip = null;
         if(_loc4_ || i)
         {
            if(_loc4_ || this)
            {
               addr39:
            }
            §§push(1);
            if(!_loc3_)
            {
               §§push(int(§§pop()));
            }
            var i:* = §§pop();
            loop0:
            while(true)
            {
               if(i > this.§;=§)
               {
                  if(!(_loc3_ && mc))
                  {
                     break;
                  }
                  break;
               }
               if(!(_loc3_ && _loc3_))
               {
                  if(_loc3_ && i)
                  {
                     break;
                  }
                  mc = MovieClip(this.§!p§.getChildByName(this.§^!0§ + i));
                  if(_loc4_ || i)
                  {
                  }
                  while(true)
                  {
                     mc.gotoAndStop(mc.totalFrames);
                     loop2:
                     while(!_loc3_)
                     {
                        while(true)
                        {
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 continue loop2;
                              }
                              §§push(i);
                              if(!(_loc3_ && i))
                              {
                                 §§push(§§pop() + 1);
                                 if(!(_loc3_ && this))
                                 {
                                    addr109:
                                    §§push(int(§§pop()));
                                 }
                                 i = §§pop();
                                 if(_loc4_ || i)
                                 {
                                    break;
                                 }
                                 continue;
                              }
                              §§goto(addr109);
                           }
                           continue loop0;
                        }
                        continue loop0;
                     }
                  }
               }
               break;
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               this.§5m§ = true;
               loop1:
               while(!(_loc2_ && _loc1_))
               {
                  while(_loc2_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr53);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(!_loc2_)
         {
            while(true)
            {
               this.§5m§ = false;
               loop3:
               while(!(_loc2_ && _loc2_))
               {
                  if(!_loc1_)
                  {
                     continue;
                  }
                  addr41:
                  if(!(_loc2_ && this))
                  {
                     addr58:
                     if(!(_loc1_ || _loc2_))
                     {
                        while(true)
                        {
                           addr80:
                           while(true)
                           {
                              this.reset();
                              continue loop3;
                              §§goto(addr41);
                           }
                           §§goto(addr58);
                        }
                        addr85:
                     }
                     return;
                  }
                  §§goto(addr80);
               }
            }
         }
         §§goto(addr85);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!(_loc2_ && this))
         {
            loop0:
            while(true)
            {
               this.§!p§ = null;
               loop1:
               while(true)
               {
                  addr73:
                  while(!_loc2_)
                  {
                     this.§=!Z§ = null;
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         §§goto(addr58);
      }
      
      public function run(deltaTime:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc5_)
         {
         }
         var animation:MovieClip = null;
         if(!_loc6_)
         {
            while(true)
            {
               while(true)
               {
                  §§push(this.§5m§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        §§goto(addr192);
                     }
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  if(!(_loc5_ || _loc3_))
                  {
                     continue;
                  }
                  while(_loc5_)
                  {
                     §§goto(addr74);
                  }
                  §§goto(addr130);
               }
               while(_loc5_ || _loc3_)
               {
                  while(true)
                  {
                     if(_loc5_)
                     {
                        if(_loc5_)
                        {
                           if(_loc5_)
                           {
                              continue;
                           }
                           §§goto(addr91);
                        }
                        break;
                     }
                     §§goto(addr73);
                  }
                  §§goto(addr84);
                  if(_loc6_ && _loc3_)
                  {
                     continue;
                  }
                  if(_loc5_)
                  {
                     if(_loc5_ || _loc3_)
                     {
                        if(false)
                        {
                           §§goto(addr48);
                        }
                        else
                        {
                           §§push(0);
                        }
                        §§goto(addr138);
                     }
                     else
                     {
                        §§goto(addr131);
                     }
                     return deltaTime;
                  }
                  §§goto(addr81);
               }
            }
         }
         §§goto(addr114);
      }
      
      private function §=D§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc6_)
         {
         }
         var index:uint = 0;
         var mc:MovieClip = null;
         if(_loc6_)
         {
            while(true)
            {
               addr34:
               if(_loc5_ && this)
               {
                  continue;
               }
               if(false)
               {
                  loop3:
                  while(true)
                  {
                     this.§=!Z§.length = 0;
                     addr48:
                     while(_loc6_ || count)
                     {
                        if(!_loc5_)
                        {
                           continue loop3;
                        }
                     }
                     loop2:
                     while(true)
                     {
                        if(_loc6_ || this)
                        {
                           continue loop3;
                        }
                        addr68:
                        while(true)
                        {
                           continue loop2;
                        }
                     }
                  }
                  continue;
               }
               var count:uint = this.§`!C§(1,this.§3!W§);
               if(!_loc6_)
               {
               }
               var indexes:Array = [];
               addr227:
               if(this.§=!Z§.length < count)
               {
                  addr149:
                  if(_loc6_)
                  {
                     index = this.§`!C§(1,this.§;=§);
                     addr140:
                     if(!_loc5_)
                     {
                        if(_loc6_ || index)
                        {
                           addr96:
                           if(indexes.indexOf(index) == -1)
                           {
                              if(_loc6_)
                              {
                                 if(!_loc5_)
                                 {
                                    if(_loc6_)
                                    {
                                       if(_loc6_ || indexes)
                                       {
                                          if(false)
                                          {
                                             §§goto(addr96);
                                          }
                                          mc = MovieClip(this.§!p§.getChildByName(this.§^!0§ + index));
                                          if(_loc5_)
                                          {
                                          }
                                          mc.gotoAndStop(1);
                                          addr214:
                                          if(!(_loc5_ && this))
                                          {
                                             this.§=!Z§.push(mc);
                                             addr189:
                                             if(!_loc5_)
                                             {
                                                addr172:
                                                indexes.push(index);
                                                if(_loc6_ || indexes)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(_loc6_)
                                                      {
                                                         if(_loc6_)
                                                         {
                                                            if(false)
                                                            {
                                                               §§goto(addr172);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr214);
                                                      }
                                                      §§goto(addr172);
                                                   }
                                                   §§goto(addr214);
                                                }
                                                §§goto(addr189);
                                             }
                                             addr198:
                                             §§goto(addr198);
                                          }
                                          addr226:
                                          §§goto(addr226);
                                       }
                                       addr255:
                                       if(_loc5_ && indexes)
                                       {
                                          §§goto(addr255);
                                       }
                                       return;
                                       addr251:
                                    }
                                    §§goto(addr251);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr255);
                           }
                           §§goto(addr227);
                        }
                        §§goto(addr140);
                     }
                     §§goto(addr255);
                  }
                  §§goto(addr251);
               }
               if(!_loc5_)
               {
                  if(_loc6_)
                  {
                     this.§'!V§ = false;
                     addr237:
                  }
                  §§goto(addr255);
               }
               §§goto(addr237);
            }
         }
         §§goto(addr68);
      }
      
      private function §`!C§(start:Number, end:Number) : Number
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_)
         {
         }
         if(_loc4_ || this)
         {
            while(true)
            {
               loop1:
               while(_loc4_)
               {
                  while(_loc3_)
                  {
                     continue loop1;
                  }
                  return Math.floor(start + Math.random() * (end - start));
               }
            }
         }
         §§goto(addr74);
      }
      
      protected function §,!3§(tmc:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && tmc)
         {
         }
         if(!_loc3_)
         {
            loop0:
            while(true)
            {
               addr37:
               while(true)
               {
                  continue loop0;
               }
            }
            addr41:
         }
         while(true)
         {
            if(!_loc4_)
            {
               continue;
            }
            if(!_loc3_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr41);
            }
            §§goto(addr37);
         }
         var tFrame:int = tmc.currentFrame + 1;
         if(_loc4_ || _loc3_)
         {
            loop3:
            while(true)
            {
               §§push(tFrame);
               loop4:
               while(true)
               {
                  if(§§pop() < tmc.totalFrames)
                  {
                     while(true)
                     {
                        tmc.gotoAndStop(tFrame);
                        while(_loc4_ || _loc3_)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              if(!(_loc4_ || tmc))
                              {
                                 continue loop4;
                              }
                              if(_loc3_ && tmc)
                              {
                                 continue;
                              }
                              if(!(_loc3_ && tmc))
                              {
                                 if(!_loc3_)
                                 {
                                    return;
                                 }
                                 addr165:
                                 while(true)
                                 {
                                    continue loop4;
                                 }
                              }
                           }
                           else
                           {
                              while(!_loc4_)
                              {
                                 continue loop3;
                              }
                              this.§9!]§(tmc);
                           }
                           break;
                        }
                     }
                     continue;
                  }
               }
            }
         }
         §§goto(addr165);
      }
      
      protected function §9!]§(target:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
         }
         if(!_loc3_)
         {
         }
         loop0:
         while(true)
         {
            while(this.§=!Z§.indexOf(target) != -1)
            {
               if(!(_loc2_ && target))
               {
                  if(!_loc3_)
                  {
                     continue;
                  }
               }
               loop2:
               while(true)
               {
                  this.§=!Z§.splice(this.§=!Z§.indexOf(target),1);
                  while(true)
                  {
                     if(_loc3_)
                     {
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop2;
                  }
                  continue loop0;
               }
            }
            return;
         }
      }
   }
}
