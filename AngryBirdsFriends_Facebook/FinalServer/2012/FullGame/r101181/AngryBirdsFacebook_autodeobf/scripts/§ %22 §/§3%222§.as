package § " §
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §3"2§ extends §2!!§
   {
      
      private static const §,!l§:int = 50;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §,!l§ = 50;
         }
      }
      
      private var §%",§:MovieClip;
      
      public function §3"2§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§%",§ = new MovieClip();
         }
         do
         {
            addChild(this.§%",§);
            do
            {
               super(param1,param2,param3,param4);
            }
            while(!_loc5_);
            
         }
         while(!_loc5_);
         
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param3)
         {
            super.createAvatar(param1,param2,param3,param4,true);
            while(true)
            {
               addChild(§#!j§);
               loop1:
               for(; _loc6_ || this; if(!(_loc6_ || param2))
               {
                  continue;
               },return,addr58:)
               {
                  this.§8T§(§>!#§);
                  while(true)
                  {
                     this.§"G§(§#!j§,§,!l§);
                     while(_loc6_)
                     {
                        this.§8"F§(§>!#§ as §+!p§);
                        if(_loc6_ || param2)
                        {
                           continue loop1;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr58);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super.createFacebookProfile(param1,param2,true);
            do
            {
               this.§8T§(§#!j§);
               do
               {
                  this.§8"F§(§#!j§ as §+!p§);
               }
               while(!(_loc5_ || param2));
               
            }
            while(_loc4_ && param2);
            
         }
      }
      
      private function §8T§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         while(true)
         {
            if(this.§%",§.numChildren <= 0)
            {
               if(!_loc2_)
               {
                  this.§%",§.scrollRect = new Rectangle(0,0,§,!l§,§,!l§);
               }
               do
               {
                  this.§%",§.addChild(param1);
               }
               while(!(_loc3_ || param1));
               
               if(!_loc2_)
               {
                  break;
               }
            }
            else
            {
               this.§%",§.removeChildAt(0);
            }
         }
      }
      
      private function §8"F§(param1:§+!p§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            §§push(param1.width > 0);
            if(_loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr97:
                     while(true)
                     {
                        §§push(param1.height > 0);
                        if(!(_loc3_ && this))
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr96:
               }
               while(true)
               {
                  if(!§§pop())
                  {
                     param1.addEventListener(Event.COMPLETE,this.§04§);
                     if(!(_loc3_ && this))
                     {
                        §§goto(addr24);
                     }
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     addr83:
                     this.§"G§(param1,§,!l§);
                     break;
                  }
                  §§goto(addr97);
               }
               addr24:
               return;
            }
            §§goto(addr96);
         }
         §§goto(addr83);
      }
      
      private function §04§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§+!p§ = param1.currentTarget as §+!p§;
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§04§);
               }
               while(true)
               {
               }
               addr77:
            }
            while(true)
            {
               this.§"G§(_loc2_,§,!l§);
               if(!_loc4_)
               {
                  break;
               }
               §§goto(addr77);
            }
         }
      }
      
      private function §"G§(param1:Sprite, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc5_:* = 0;
         var _loc4_:* = int(param1.width);
         if(!_loc6_)
         {
            §§push(int(param1.height));
            loop0:
            while(true)
            {
               _loc5_ = §§pop();
               loop1:
               while(true)
               {
                  §§push(param1 is §3P§);
                  loop2:
                  while(true)
                  {
                     if(!§§pop())
                     {
                        continue;
                     }
                     loop3:
                     while(true)
                     {
                        §§push(param2);
                        if(_loc7_ || this)
                        {
                           §§push(§§pop() * 1.4);
                        }
                        loop4:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop5:
                           while(true)
                           {
                              param2 = §§pop();
                              loop6:
                              while(true)
                              {
                                 param1.x = -5;
                                 loop7:
                                 while(true)
                                 {
                                    param1.y = -5;
                                    loop8:
                                    while(_loc7_)
                                    {
                                       §§push(param2);
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          addr278:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             addr279:
                                             while(!_loc6_)
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr283:
                                                   while(true)
                                                   {
                                                      param1.scaleX = _loc3_;
                                                      addr274:
                                                      while(true)
                                                      {
                                                         param1.scaleY = _loc3_;
                                                         addr269:
                                                         while(true)
                                                         {
                                                            continue loop2;
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop5;
                                          }
                                          addr142:
                                          if(!(_loc7_ || param2))
                                          {
                                             continue;
                                          }
                                          §§push(Number(§§pop()));
                                          if(!_loc6_)
                                          {
                                             _loc3_ = §§pop();
                                             loop23:
                                             while(true)
                                             {
                                                param1.scaleX = _loc3_;
                                                loop24:
                                                while(true)
                                                {
                                                   if(_loc7_ || this)
                                                   {
                                                      if(_loc7_)
                                                      {
                                                         if(!(_loc6_ && _loc3_))
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               continue loop8;
                                                            }
                                                            if(!(_loc7_ || this))
                                                            {
                                                               continue loop3;
                                                            }
                                                            param1.scaleY = _loc3_;
                                                            for(; _loc7_; param1.x = -(param1.width - param2) / 2,if(_loc6_)
                                                            {
                                                               continue;
                                                            },if(_loc6_)
                                                            {
                                                               continue loop24;
                                                            },if(!_loc7_)
                                                            {
                                                               continue loop23;
                                                            },if(!(_loc6_ && _loc3_))
                                                            {
                                                               addr55:
                                                               if(_loc7_ || param2)
                                                               {
                                                                  if(!_loc7_)
                                                                  {
                                                                     continue loop7;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc4_);
                                                                     if(_loc7_)
                                                                     {
                                                                        addr180:
                                                                        if(!(_loc7_ || _loc3_))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        if(!_loc6_)
                                                                        {
                                                                           if(§§pop() < _loc5_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(param2);
                                                                           if(_loc7_ || _loc3_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop4;
                                                                              }
                                                                           }
                                                                           else
                                                                           {
                                                                              addr135:
                                                                              if(!(_loc6_ && param1))
                                                                              {
                                                                                 §§goto(addr142);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr203:
                                                                                 if(_loc6_)
                                                                                 {
                                                                                    break loop24;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           _loc3_ = §§pop();
                                                                           addr207:
                                                                           if(_loc7_)
                                                                           {
                                                                              param1.scaleX = _loc3_;
                                                                              param1.scaleY = _loc3_;
                                                                              addr168:
                                                                              if(_loc6_)
                                                                              {
                                                                                 §§goto(addr207);
                                                                              }
                                                                              addr28:
                                                                              return;
                                                                              addr175:
                                                                              addr170:
                                                                           }
                                                                           continue loop1;
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              _loc5_ = §§pop();
                                                                              continue loop22;
                                                                           }
                                                                           addr262:
                                                                           while(true)
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              continue loop21;
                                                                           }
                                                                        }
                                                                        addr223:
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        _loc4_ = §§pop();
                                                                        addr264:
                                                                        while(true)
                                                                        {
                                                                           §§push((param1 as §+!p§).§6!n§);
                                                                           continue loop0;
                                                                        }
                                                                     }
                                                                  }
                                                                  addr191:
                                                                  §§push(param2);
                                                                  if(_loc7_)
                                                                  {
                                                                     addr195:
                                                                     §§push(_loc4_);
                                                                     if(!(_loc6_ && param2))
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr278);
                                                                     }
                                                                  }
                                                                  §§goto(addr203);
                                                               }
                                                               §§goto(addr28);
                                                            },§§goto(addr168))
                                                            {
                                                               if(_loc7_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§goto(addr274);
                                                            }
                                                            §§goto(addr269);
                                                         }
                                                         §§goto(addr264);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   §§goto(addr175);
                                                }
                                                §§goto(addr279);
                                             }
                                          }
                                          §§goto(addr282);
                                       }
                                    }
                                    continue loop6;
                                 }
                              }
                           }
                           if(!(_loc7_ || param1))
                           {
                              continue;
                           }
                           §§push(_loc5_);
                           if(_loc7_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!(_loc6_ && param1))
                              {
                                 §§goto(addr135);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr195);
                        }
                     }
                  }
               }
               while(_loc7_ || this)
               {
                  §§goto(addr223);
                  §§push(int(§§pop()));
                  §§goto(addr180);
               }
            }
         }
         §§goto(addr170);
      }
   }
}
