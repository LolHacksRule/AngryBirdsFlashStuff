package §]B§
{
   import flash.display.MovieClip;
   
   public class BackGroundAnimator
   {
       
      
      private var §#%§:MovieClip;
      
      private var §17§:uint;
      
      private var §"X§:String;
      
      private var §-m§:Vector.<MovieClip>;
      
      private var §,!1§:Number = 41.666666666666664;
      
      private var §4c§:int = 0;
      
      private var §'U§:Boolean;
      
      private var §2!k§:Boolean;
      
      private var §!r§:uint;
      
      public function BackGroundAnimator(background:MovieClip, animPrefix:String, animationsCount:uint = 0, maxSimultanious:uint = 3)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || background)
         {
         }
         if(_loc5_)
         {
            loop0:
            while(true)
            {
               addr268:
               while(true)
               {
                  addr265:
                  while(true)
                  {
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr80);
      }
      
      private function reset() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && i)
         {
         }
         var mc:MovieClip = null;
         if(_loc3_ || this)
         {
            if(_loc4_ && this)
            {
            }
         }
         §§push(1);
         if(!(_loc4_ && i))
         {
            §§push(int(§§pop()));
         }
         var i:* = §§pop();
         loop0:
         while(true)
         {
            if(i > this.§17§)
            {
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr142);
            }
            if(_loc3_)
            {
               if(_loc4_)
               {
                  break;
               }
               mc = MovieClip(this.§#%§.getChildByName(this.§"X§ + i));
               if(!_loc4_)
               {
                  while(true)
                  {
                     mc.gotoAndStop(mc.totalFrames);
                     addr102:
                     if(_loc3_)
                     {
                        if(false)
                        {
                           loop3:
                           while(true)
                           {
                              addr118:
                              addr132:
                              while(!(_loc4_ && _loc3_))
                              {
                                 §§push(i);
                                 if(!_loc4_)
                                 {
                                    §§push(§§pop() + 1);
                                    if(!_loc4_)
                                    {
                                       addr93:
                                       §§push(int(§§pop()));
                                    }
                                    i = §§pop();
                                    if(!(_loc3_ || this))
                                    {
                                       continue;
                                    }
                                    §§goto(addr102);
                                 }
                                 §§goto(addr93);
                              }
                              while(true)
                              {
                                 continue loop3;
                                 §§goto(addr118);
                              }
                           }
                        }
                        continue loop0;
                     }
                  }
               }
               §§goto(addr132);
            }
            break;
         }
         addr142:
      }
      
      public function start() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc2_)
         {
         }
         if(!(_loc1_ && _loc1_))
         {
            while(true)
            {
               this.§'U§ = true;
               loop1:
               while(!_loc1_)
               {
                  while(!_loc2_)
                  {
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr54);
      }
      
      public function stop() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
         }
         if(_loc1_ || _loc2_)
         {
         }
         loop0:
         while(true)
         {
            this.§'U§ = false;
            addr90:
            while(true)
            {
               continue loop0;
            }
         }
      }
      
      public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc1_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               this.§#%§ = null;
               while(true)
               {
                  loop2:
                  while(true)
                  {
                     this.§-m§ = null;
                     loop3:
                     while(_loc1_)
                     {
                        while(true)
                        {
                           if(!(_loc2_ && _loc1_))
                           {
                              continue loop2;
                           }
                           continue loop3;
                        }
                        return;
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function run(deltaTime:Number) : int
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc6_ && this)
         {
         }
         var animation:MovieClip = null;
         if(_loc5_ || animation)
         {
         }
         loop0:
         while(true)
         {
            loop1:
            while(true)
            {
               §§push(this.§'U§);
               while(true)
               {
                  if(!§§pop())
                  {
                     return deltaTime;
                  }
                  addr212:
                  if(_loc6_)
                  {
                  }
                  loop3:
                  while(true)
                  {
                     §§push(this.§2!k§);
                     if(!(_loc5_ || this))
                     {
                        break;
                     }
                     if(§§pop())
                     {
                        loop4:
                        while(true)
                        {
                           while(_loc5_)
                           {
                              this.§4!a§();
                              loop6:
                              while(_loc5_ || deltaTime)
                              {
                                 while(_loc5_)
                                 {
                                    loop10:
                                    while(!(_loc6_ && _loc3_))
                                    {
                                       loop11:
                                       while(true)
                                       {
                                          §§push(this.§4c§);
                                          if(!(_loc5_ || _loc3_))
                                          {
                                             break;
                                          }
                                          if(§§pop() >= this.§,!1§)
                                          {
                                             while(true)
                                             {
                                                addr74:
                                                while(_loc5_)
                                                {
                                                   continue loop4;
                                                }
                                                continue loop10;
                                                addr40:
                                                if(_loc6_ && deltaTime)
                                                {
                                                   continue;
                                                }
                                                addr47:
                                                if(_loc5_ || _loc3_)
                                                {
                                                   if(_loc5_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         if(true)
                                                         {
                                                            break loop11;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop3;
                                                   }
                                                   continue loop6;
                                                }
                                                addr101:
                                                while(true)
                                                {
                                                   continue loop10;
                                                   §§goto(addr47);
                                                }
                                             }
                                          }
                                          else
                                          {
                                             §§goto(addr212);
                                          }
                                       }
                                       var _loc3_:* = §§pop();
                                       var _loc4_:* = this.§-m§;
                                       addr199:
                                       for each(animation in _loc4_)
                                       {
                                          if(!_loc5_)
                                          {
                                          }
                                          addr184:
                                          this.§0p§(animation);
                                          if(_loc5_ || deltaTime)
                                          {
                                             if(_loc5_ || this)
                                             {
                                                if(false)
                                                {
                                                   §§goto(addr184);
                                                }
                                                §§goto(addr199);
                                             }
                                             §§goto(addr184);
                                          }
                                          addr198:
                                          §§goto(addr198);
                                       }
                                       if(!(_loc6_ && deltaTime))
                                       {
                                          this.§4c§ = 0;
                                          addr279:
                                          if(!_loc6_)
                                          {
                                             addr274:
                                             if(this.§-m§.length == 0)
                                             {
                                                if(_loc6_)
                                                {
                                                }
                                                this.§2!k§ = true;
                                                addr254:
                                                if(_loc5_ || animation)
                                                {
                                                   if(_loc5_ || deltaTime)
                                                   {
                                                      if(_loc5_ || this)
                                                      {
                                                         if(_loc6_ && animation)
                                                         {
                                                            §§goto(addr279);
                                                         }
                                                         addr211:
                                                         §§goto(addr212);
                                                      }
                                                      §§goto(addr274);
                                                   }
                                                   §§goto(addr254);
                                                }
                                                addr271:
                                                §§goto(addr271);
                                             }
                                             §§goto(addr211);
                                          }
                                          addr283:
                                          §§goto(addr283);
                                       }
                                       §§goto(addr274);
                                    }
                                 }
                                 continue loop1;
                              }
                           }
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        this.§4c§ += deltaTime;
                        §§goto(addr101);
                     }
                  }
               }
            }
         }
      }
      
      private function §4!a§() : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || index)
         {
         }
         var index:uint = 0;
         var mc:MovieClip = null;
         if(!_loc5_)
         {
            while(true)
            {
            }
            addr70:
         }
         loop1:
         while(true)
         {
            loop2:
            while(true)
            {
               addr57:
               while(true)
               {
                  this.§-m§.length = 0;
                  while(_loc5_ && this)
                  {
                  }
                  if(!_loc5_)
                  {
                     continue loop1;
                  }
                  continue loop2;
               }
               continue loop1;
            }
         }
      }
      
      private function §"!L§(start:Number, end:Number) : Number
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc4_ && start)
         {
         }
         if(_loc3_)
         {
            while(true)
            {
               §§goto(addr73);
            }
         }
         addr73:
         while(true)
         {
            if(!_loc4_)
            {
               if(!_loc4_)
               {
                  break;
               }
               continue loop0;
            }
         }
         return Math.floor(start + Math.random() * (end - start));
      }
      
      protected function §0p§(tmc:MovieClip) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc3_ && tmc)
         {
         }
         if(_loc4_ || _loc3_)
         {
            while(true)
            {
               loop1:
               while(true)
               {
                  while(_loc3_)
                  {
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  while(false)
                  {
                     continue loop1;
                  }
                  var tFrame:int = tmc.currentFrame + 1;
                  if(!(_loc3_ && _loc3_))
                  {
                     loop4:
                     while(true)
                     {
                        §§push(tFrame);
                        loop5:
                        while(true)
                        {
                           if(§§pop() < tmc.totalFrames)
                           {
                              while(true)
                              {
                                 tmc.gotoAndStop(tFrame);
                                 addr94:
                                 loop10:
                                 while(_loc4_)
                                 {
                                    addr96:
                                    if(_loc4_ || tFrame)
                                    {
                                       continue loop4;
                                    }
                                    addr147:
                                    addr155:
                                    while(!_loc3_)
                                    {
                                       while(true)
                                       {
                                          addr132:
                                          while(!_loc4_)
                                          {
                                             continue loop5;
                                          }
                                          this.§<!@§(tmc);
                                          break loop10;
                                       }
                                       §§goto(addr96);
                                    }
                                    while(true)
                                    {
                                       continue loop5;
                                    }
                                 }
                                 addr113:
                              }
                              return;
                              addr88:
                           }
                           §§goto(addr155);
                        }
                     }
                  }
                  §§goto(addr149);
               }
            }
         }
         §§goto(addr40);
      }
      
      protected function §<!@§(target:MovieClip) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc3_)
         {
         }
         if(!_loc2_)
         {
            loop0:
            while(true)
            {
               while(this.§-m§.indexOf(target) != -1)
               {
                  continue loop0;
                  addr72:
                  if(_loc3_ || target)
                  {
                     addr79:
                     if(!_loc3_)
                     {
                        loop4:
                        while(true)
                        {
                           if(!(_loc2_ && _loc3_))
                           {
                              §§goto(addr72);
                           }
                           else
                           {
                              while(true)
                              {
                                 this.§-m§.splice(this.§-m§.indexOf(target),1);
                                 continue loop4;
                              }
                              addr95:
                           }
                        }
                        continue;
                     }
                     if(_loc3_)
                     {
                        addr34:
                        break;
                     }
                     continue loop0;
                  }
               }
               return;
            }
         }
         §§goto(addr34);
      }
   }
}
