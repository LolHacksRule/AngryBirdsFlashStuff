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
         if(_loc5_ || animationsCount)
         {
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
                              continue loop4;
                              loop8:
                              for(; _loc5_ || animationsCount; while(_loc5_ || this)
                              {
                                 if(!_loc5_)
                                 {
                                    continue loop1;
                                 }
                                 while(true)
                                 {
                                    this.§5m§ = false;
                                    §§goto(addr96);
                                 }
                                 §§goto(addr49);
                              })
                              {
                                 this.§^!0§ = animPrefix;
                                 loop9:
                                 while(true)
                                 {
                                    loop10:
                                    while(true)
                                    {
                                       this.§'!V§ = true;
                                       while(true)
                                       {
                                          continue loop10;
                                          addr168:
                                          loop15:
                                          while(_loc5_ || this)
                                          {
                                             if(_loc5_)
                                             {
                                                while(true)
                                                {
                                                   this.§=!Z§ = new Vector.<MovieClip>();
                                                   addr118:
                                                   while(!_loc6_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   continue loop10;
                                                   loop21:
                                                   while(!(_loc6_ && this))
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      continue loop15;
                                                      while(true)
                                                      {
                                                         if(!(_loc5_ || animationsCount))
                                                         {
                                                            continue loop21;
                                                         }
                                                         if(!_loc5_)
                                                         {
                                                            break;
                                                         }
                                                         addr63:
                                                         if(_loc5_ || animPrefix)
                                                         {
                                                            if(_loc5_)
                                                            {
                                                               continue;
                                                            }
                                                            continue loop3;
                                                         }
                                                         addr199:
                                                         while(true)
                                                         {
                                                            continue loop2;
                                                            §§goto(addr63);
                                                         }
                                                      }
                                                      §§goto(addr118);
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                   continue loop8;
                                                }
                                                addr247:
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc5_ || animationsCount))
               {
                  continue;
               }
               §§push(this);
               if(!_loc6_)
               {
                  §§push(maxSimultanious);
                  if(_loc5_ || this)
                  {
                     if(§§pop() > this.§;=§)
                     {
                        addr150:
                        §§push(this.§;=§);
                        if(!(_loc6_ && background))
                        {
                           §§push(uint(§§pop()));
                           if(!_loc6_)
                           {
                              addr167:
                              §§pop().§3!W§ = §§pop();
                              §§goto(addr168);
                           }
                        }
                        addr166:
                        §§goto(addr167);
                        §§push(uint(§§pop()));
                     }
                     §§push(maxSimultanious);
                     if(_loc5_)
                     {
                        §§goto(addr166);
                     }
                  }
                  §§goto(addr167);
               }
               §§goto(addr150);
            }
         }
         §§goto(addr108);
      }
      
      private function reset() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || mc)
         {
         }
         var mc:MovieClip = null;
         if(_loc3_)
         {
            if(!_loc3_)
            {
            }
         }
         §§push(1);
         if(!(_loc4_ && _loc3_))
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop0:
         while(true)
         {
            if(i > this.§;=§)
            {
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr157);
            }
            if(!(_loc4_ && i))
            {
               if(_loc4_ && mc)
               {
                  break;
               }
            }
            mc = MovieClip(this.§!p§.getChildByName(this.§^!0§ + i));
            if(_loc3_ || this)
            {
            }
            loop1:
            while(true)
            {
               mc.gotoAndStop(mc.totalFrames);
               loop2:
               while(true)
               {
                  addr136:
                  while(true)
                  {
                     while(true)
                     {
                        if(!_loc3_)
                        {
                           continue loop2;
                        }
                        §§push(i);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop() + 1);
                           if(_loc3_ || i)
                           {
                              addr108:
                              §§push(int(§§pop()));
                           }
                           i = §§pop();
                           if(_loc3_ || _loc3_)
                           {
                              break;
                           }
                           continue;
                        }
                        §§goto(addr108);
                     }
                     continue loop1;
                  }
                  continue loop0;
               }
            }
         }
         addr157:
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || this)
         {
         }
         if(!(_loc1_ && this))
         {
            while(true)
            {
               this.§5m§ = true;
               loop1:
               while(_loc2_ || this)
               {
                  while(!(_loc2_ || _loc1_))
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr79);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            loop0:
            while(true)
            {
               this.§5m§ = false;
               addr86:
               while(true)
               {
                  continue loop0;
               }
            }
         }
         §§goto(addr81);
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc2_)
         {
         }
         if(_loc1_)
         {
            while(true)
            {
               this.§!p§ = null;
               while(_loc1_ || _loc2_)
               {
                  loop2:
                  while(_loc1_ || _loc2_)
                  {
                     this.§=!Z§ = null;
                     while(true)
                     {
                        if(!(_loc2_ && this))
                        {
                           if(!_loc2_)
                           {
                              break;
                           }
                           continue loop2;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr63);
      }
      
      public function run(deltaTime:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && deltaTime)
         {
         }
         var animation:MovieClip = null;
         if(!_loc6_)
         {
            loop0:
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
                        addr202:
                        return deltaTime;
                     }
                     while(true)
                     {
                        continue loop2;
                     }
                  }
                  if(!(_loc5_ || animation))
                  {
                     continue;
                  }
                  if(false)
                  {
                     §§goto(addr58);
                  }
                  §§goto(addr158);
                  §§push(0);
               }
               addr138:
               while(true)
               {
                  if(_loc6_ && this)
                  {
                     continue loop0;
                  }
                  this.§=D§();
                  §§goto(addr108);
               }
            }
         }
         while(true)
         {
            §§goto(addr138);
         }
      }
      
      private function §=D§() : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || count)
         {
         }
         var index:uint = 0;
         var mc:MovieClip = null;
         if(!_loc5_)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(true)
               {
                  addr54:
                  addr38:
                  while(true)
                  {
                     this.§=!Z§.length = 0;
                     continue loop0;
                  }
                  if(_loc5_ || this)
                  {
                     continue loop1;
                  }
               }
            }
         }
      }
      
      private function §`!C§(start:Number, end:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || this)
         {
         }
         if(!_loc3_)
         {
         }
         while(true)
         {
            while(!_loc4_)
            {
               if(!(_loc4_ && end))
               {
                  return Math.floor(start + Math.random() * (end - start));
               }
            }
         }
      }
      
      protected function §,!3§(tmc:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && _loc3_)
         {
         }
         if(_loc4_ || tmc)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               while(!_loc3_)
               {
                  if(_loc4_)
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
            var tFrame:int = tmc.currentFrame + 1;
            if(!_loc4_)
            {
            }
            loop3:
            while(true)
            {
               §§push(tFrame);
               loop4:
               while(true)
               {
                  if(§§pop() < tmc.totalFrames)
                  {
                     loop11:
                     while(true)
                     {
                        tmc.gotoAndStop(tFrame);
                        while(_loc3_)
                        {
                        }
                        if(!(_loc3_ && tFrame))
                        {
                           if(!_loc3_)
                           {
                              if(_loc4_)
                              {
                                 break;
                              }
                           }
                           else
                           {
                              loop8:
                              while(true)
                              {
                                 this.§9!]§(tmc);
                                 while(!_loc3_)
                                 {
                                    while(_loc4_ || this)
                                    {
                                       continue loop11;
                                    }
                                 }
                                 addr130:
                                 while(_loc4_ || tFrame)
                                 {
                                    continue loop8;
                                 }
                                 addr143:
                                 while(true)
                                 {
                                 }
                              }
                           }
                           while(!_loc3_)
                           {
                              continue loop4;
                           }
                           continue loop3;
                        }
                        §§goto(addr94);
                     }
                     return;
                  }
                  §§goto(addr143);
               }
            }
         }
      }
      
      protected function §9!]§(target:MovieClip) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc2_)
         {
         }
         if(_loc2_ || this)
         {
            loop0:
            while(true)
            {
               loop1:
               while(this.§=!Z§.indexOf(target) != -1)
               {
                  loop2:
                  while(_loc2_ || target)
                  {
                     loop3:
                     while(true)
                     {
                        this.§=!Z§.splice(this.§=!Z§.indexOf(target),1);
                        while(true)
                        {
                           if(!(_loc3_ && _loc3_))
                           {
                              continue loop0;
                           }
                           continue loop3;
                           addr88:
                           if(_loc2_ || _loc3_)
                           {
                              if(_loc2_)
                              {
                                 addr53:
                                 break loop1;
                              }
                              continue loop2;
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               return;
            }
         }
         §§goto(addr53);
      }
   }
}
