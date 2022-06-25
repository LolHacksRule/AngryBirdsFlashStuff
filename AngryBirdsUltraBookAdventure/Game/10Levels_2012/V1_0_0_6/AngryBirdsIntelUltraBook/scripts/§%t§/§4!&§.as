package §%t§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §4!&§ extends §9!7§
   {
      
      private static const §1$§:int = 50;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §1$§ = 50;
         }
      }
      
      private var §?!4§:MovieClip;
      
      public function §4!&§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§?!4§ = new MovieClip();
            while(true)
            {
               addChild(this.§?!4§);
               while(_loc5_ || this)
               {
                  super(param1,param2,param3,param4);
                  if(!_loc5_)
                  {
                     continue;
                  }
                  return;
                  addr42:
               }
            }
         }
         §§goto(addr42);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(!(_loc6_ && param2))
         {
            super.createAvatar(param1,param2,param3,param4,true);
         }
         while(true)
         {
            addChild(§2-§);
            while(!_loc6_)
            {
               this.§[y§(§`'§);
               while(!(_loc6_ && this))
               {
                  this.§%!U§(§2-§,§1$§);
                  while(!(_loc6_ && param3))
                  {
                     this.§]!U§(§`'§ as §?!a§);
                     if(_loc7_ || this)
                     {
                        return;
                     }
                  }
               }
            }
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param1))
         {
            super.createFacebookProfile(param1,param2,true);
            while(true)
            {
               this.§[y§(§2-§);
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            this.§]!U§(§2-§ as §?!a§);
            if(_loc4_)
            {
               if(!(_loc5_ && param1))
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §[y§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         while(true)
         {
            if(this.§?!4§.numChildren <= 0)
            {
               do
               {
                  this.§?!4§.scrollRect = new Rectangle(0,0,§1$§,§1$§);
                  do
                  {
                     this.§?!4§.addChild(param1);
                  }
                  while(_loc3_ && param1);
                  
               }
               while(_loc3_);
               
               if(_loc2_ || param1)
               {
                  break;
               }
            }
            else
            {
               this.§?!4§.removeChildAt(0);
            }
         }
      }
      
      private function §]!U§(param1:§?!a§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            §§push(param1.width > 0);
            if(!(_loc3_ && _loc3_))
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr102:
                     while(true)
                     {
                        §§push(param1.height > 0);
                        if(_loc2_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr101:
               }
               for(; !§§pop(); §§goto(addr102))
               {
                  param1.addEventListener(Event.COMPLETE,this.§=!a§);
                  if(_loc3_ && _loc3_)
                  {
                     addr24:
                     return;
                  }
                  if(!_loc2_)
                  {
                     break;
                  }
                  if(_loc2_ || this)
                  {
                     §§goto(addr24);
                  }
               }
               addr83:
               this.§%!U§(param1,§1$§);
               §§goto(addr87);
            }
            §§goto(addr101);
         }
         §§goto(addr83);
      }
      
      private function §=!a§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§?!a§ = param1.currentTarget as §?!a§;
         if(!(_loc3_ && _loc2_))
         {
            if(_loc2_)
            {
               while(true)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§=!a§);
                  while(true)
                  {
                  }
               }
               addr77:
            }
            do
            {
               this.§%!U§(_loc2_,§1$§);
               if(_loc3_ && _loc3_)
               {
                  continue;
               }
            }
            while(_loc3_ && _loc3_);
            
            return;
         }
         §§goto(addr77);
      }
      
      private function §%!U§(param1:Sprite, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = int(param1.width);
         var _loc5_:* = int(param1.height);
         if(_loc6_)
         {
            §§push(param1 is §1§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     if(_loc6_ || this)
                     {
                        §§push(§§pop() * 1.4);
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop()));
                        }
                     }
                     loop2:
                     while(true)
                     {
                        param2 = §§pop();
                        loop3:
                        while(true)
                        {
                           param1.x = -5;
                           while(true)
                           {
                              param1.y = -5;
                              addr270:
                              while(true)
                              {
                                 §§push(param2);
                                 continue loop2;
                              }
                              addr163:
                              if(!(_loc6_ || param2))
                              {
                                 continue;
                              }
                              §§push(param2);
                              if(!(_loc7_ && param2))
                              {
                                 if(!(_loc7_ && _loc3_))
                                 {
                                    §§push(_loc4_);
                                    loop25:
                                    while(true)
                                    {
                                       §§push(§§pop() / §§pop());
                                       addr187:
                                       loop26:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop27:
                                          while(true)
                                          {
                                             _loc3_ = §§pop();
                                             loop28:
                                             while(true)
                                             {
                                                if(_loc6_)
                                                {
                                                   param1.scaleX = _loc3_;
                                                   loop29:
                                                   while(true)
                                                   {
                                                      if(_loc6_ || param1)
                                                      {
                                                         param1.scaleY = _loc3_;
                                                         while(true)
                                                         {
                                                            if(!_loc6_)
                                                            {
                                                               continue loop29;
                                                            }
                                                         }
                                                         addr117:
                                                      }
                                                      loop14:
                                                      for(; _loc6_; continue loop29)
                                                      {
                                                         §§push((param1 as §?!a§).§'!+§);
                                                         if(_loc6_)
                                                         {
                                                            §§push(int(§§pop()));
                                                         }
                                                         loop15:
                                                         while(true)
                                                         {
                                                            _loc4_ = §§pop();
                                                            addr217:
                                                            loop16:
                                                            while(_loc6_ || this)
                                                            {
                                                               §§push((param1 as §?!a§).§?x§);
                                                               loop17:
                                                               while(true)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  loop18:
                                                                  while(true)
                                                                  {
                                                                     _loc5_ = §§pop();
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc4_);
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop18;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop17;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop15;
                                                                        }
                                                                        if(§§pop() >= _loc5_)
                                                                        {
                                                                           §§push(param2);
                                                                           if(!_loc7_)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 continue loop27;
                                                                              }
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§push(_loc5_);
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    continue loop25;
                                                                                 }
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(_loc6_ || param2)
                                                                                    {
                                                                                       addr105:
                                                                                       §§push(Number(§§pop()));
                                                                                       if(!_loc7_)
                                                                                       {
                                                                                          if(_loc6_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             loop20:
                                                                                             while(!_loc7_)
                                                                                             {
                                                                                                param1.scaleX = _loc3_;
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc7_ && param2)
                                                                                                   {
                                                                                                      continue loop28;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      param1.scaleY = _loc3_;
                                                                                                      for(; _loc6_ || this; param1.x = -(param1.width - param2) / 2,if(_loc7_)
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(_loc6_)
                                                                                                      {
                                                                                                         if(!(_loc7_ && _loc3_))
                                                                                                         {
                                                                                                            §§goto(addr29);
                                                                                                         }
                                                                                                         §§goto(addr117);
                                                                                                         §§goto(addr29);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr73);
                                                                                                      })
                                                                                                      {
                                                                                                         if(_loc6_)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         addr152:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc6_)
                                                                                                            {
                                                                                                               break loop19;
                                                                                                            }
                                                                                                            continue loop19;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop20;
                                                                                                   }
                                                                                                }
                                                                                                continue loop28;
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          continue loop2;
                                                                                       }
                                                                                       continue loop26;
                                                                                    }
                                                                                    §§goto(addr105);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       addr246:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                    }
                                                                                    addr245:
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc3_ = §§pop();
                                                                                 break loop14;
                                                                              }
                                                                           }
                                                                           §§goto(addr105);
                                                                        }
                                                                        §§goto(addr152);
                                                                     }
                                                                     addr154:
                                                                     addr234:
                                                                     if(!(_loc7_ && param2))
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           §§goto(addr163);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr270);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        param1.scaleY = _loc3_;
                                                                        break loop16;
                                                                        §§goto(addr154);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               addr200:
                                                               while(true)
                                                               {
                                                                  §§push(param1 is §?!a§);
                                                                  if(!_loc6_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(§§pop())
                                                                  {
                                                                     continue loop14;
                                                                  }
                                                                  §§goto(addr29);
                                                               }
                                                               continue loop0;
                                                               §§goto(addr217);
                                                            }
                                                         }
                                                      }
                                                      while(!(_loc7_ && param1))
                                                      {
                                                         param1.scaleX = _loc3_;
                                                         §§goto(addr234);
                                                      }
                                                      continue loop1;
                                                      addr29:
                                                      return;
                                                   }
                                                }
                                                §§goto(addr217);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr246);
                              }
                              §§goto(addr187);
                           }
                        }
                     }
                  }
               }
               §§goto(addr200);
            }
         }
         §§goto(addr80);
      }
   }
}
