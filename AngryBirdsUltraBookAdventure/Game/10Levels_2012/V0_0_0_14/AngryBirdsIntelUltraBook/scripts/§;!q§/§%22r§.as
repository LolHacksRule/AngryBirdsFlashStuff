package §;!q§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §"r§ extends §=t§
   {
      
      private static const §@f§:int = 50;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §@f§ = 50;
         }
      }
      
      private var §=9§:MovieClip;
      
      public function §"r§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§=9§ = new MovieClip();
            while(true)
            {
               addChild(this.§=9§);
               §§goto(addr56);
            }
         }
         addr56:
         while(true)
         {
            super(param1,param2,param3,param4);
            if(!_loc5_)
            {
               if(_loc6_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super.createAvatar(param1,param2,param3,param4,true);
            while(true)
            {
               addChild(§9!H§);
            }
            addr96:
         }
         loop1:
         while(true)
         {
            this.§?!$§(§`!j§);
            loop2:
            while(true)
            {
               this.§4%§(§9!H§,§@f§);
               while(true)
               {
                  if(_loc6_ || param2)
                  {
                     continue loop1;
                  }
                  continue loop2;
                  addr78:
                  this.§>@§(§`!j§ as §%t§);
                  if(_loc6_ || param1)
                  {
                     return;
                  }
               }
               continue loop1;
            }
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.createFacebookProfile(param1,param2,true);
            while(true)
            {
               this.§?!$§(§9!H§);
               §§goto(addr53);
            }
         }
         addr53:
         while(true)
         {
            this.§>@§(§9!H§ as §%t§);
            if(!(_loc5_ && this))
            {
               if(!_loc5_)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      private function §?!$§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         while(true)
         {
            if(this.§=9§.numChildren <= 0)
            {
               if(!(_loc3_ && _loc2_))
               {
                  this.§=9§.scrollRect = new Rectangle(0,0,§@f§,§@f§);
               }
               while(!_loc3_)
               {
                  this.§=9§.addChild(param1);
                  if(_loc2_)
                  {
                     return;
                  }
               }
            }
            else
            {
               this.§=9§.removeChildAt(0);
            }
         }
      }
      
      private function §>@§(param1:§%t§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
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
                        if(_loc2_)
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
                     param1.addEventListener(Event.COMPLETE,this.§!#§);
                     if(_loc2_ || param1)
                     {
                        §§goto(addr24);
                     }
                  }
                  if(_loc3_)
                  {
                     break;
                  }
                  if(_loc2_ || _loc3_)
                  {
                     addr83:
                     this.§4%§(param1,§@f§);
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
      
      private function §!#§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§%t§ = param1.currentTarget as §%t§;
         if(_loc4_ || this)
         {
            if(_loc2_)
            {
               if(!(_loc3_ && this))
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§!#§);
                  addr78:
                  while(true)
                  {
                  }
                  addr78:
               }
               §§goto(addr78);
            }
            while(true)
            {
               this.§4%§(_loc2_,§@f§);
               if(_loc4_)
               {
                  break;
               }
               §§goto(addr78);
            }
            return;
         }
         §§goto(addr78);
      }
      
      private function §4%§(param1:Sprite, param2:Number) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:* = NaN;
         var _loc4_:* = int(param1.width);
         var _loc5_:* = int(param1.height);
         if(!(_loc7_ && param2))
         {
            §§push(param1 is §%!l§);
            while(true)
            {
               if(§§pop())
               {
                  loop1:
                  while(true)
                  {
                     §§push(param2);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() * 1.4);
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           while(true)
                           {
                              param2 = §§pop();
                              loop5:
                              while(true)
                              {
                                 param1.x = -5;
                                 while(true)
                                 {
                                    param1.y = -5;
                                    loop7:
                                    while(true)
                                    {
                                       §§push(param2);
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             while(!(_loc7_ && param2))
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   loop12:
                                                   while(true)
                                                   {
                                                      param1.scaleX = _loc3_;
                                                      while(true)
                                                      {
                                                         param1.scaleY = _loc3_;
                                                         while(true)
                                                         {
                                                            addr196:
                                                            if(!(_loc7_ && param2))
                                                            {
                                                               param1.scaleY = _loc3_;
                                                               addr151:
                                                               if(!(_loc6_ || param2))
                                                               {
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push((param1 as §%t§).§`!W§);
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        §§push(int(§§pop()));
                                                                        loop21:
                                                                        while(_loc6_)
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              if(_loc7_ && _loc3_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop20;
                                                                              addr182:
                                                                              if(!(_loc6_ || param1))
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              addr189:
                                                                              if(!(_loc7_ && _loc3_))
                                                                              {
                                                                                 §§goto(addr196);
                                                                              }
                                                                              else
                                                                              {
                                                                                 addr274:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push((param1 as §%t§).§!'§);
                                                                                    break loop21;
                                                                                    §§goto(addr189);
                                                                                 }
                                                                                 addr274:
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           addr279:
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              continue loop19;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               if(_loc6_ || param1)
                                                               {
                                                                  §§goto(addr34);
                                                               }
                                                               continue loop1;
                                                            }
                                                         }
                                                         addr139:
                                                         if(_loc7_ && _loc3_)
                                                         {
                                                            continue;
                                                         }
                                                         param1.scaleX = _loc3_;
                                                         while(true)
                                                         {
                                                            param1.scaleY = _loc3_;
                                                            while(true)
                                                            {
                                                               if(_loc6_ || this)
                                                               {
                                                                  if(_loc7_ && param2)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               addr130:
                                                               while(!_loc7_)
                                                               {
                                                                  if(!(_loc7_ && this))
                                                                  {
                                                                     §§goto(addr139);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr256);
                                                                  }
                                                               }
                                                               §§goto(addr180);
                                                            }
                                                            continue loop12;
                                                            if(!(_loc6_ || param1))
                                                            {
                                                               continue;
                                                            }
                                                            if(_loc6_ || param2)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  continue loop7;
                                                               }
                                                               if(_loc7_ && _loc3_)
                                                               {
                                                                  continue loop5;
                                                               }
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr151);
                                                            }
                                                            §§goto(addr34);
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                             continue loop2;
                                          }
                                          if(!(_loc6_ || param2))
                                          {
                                             continue;
                                          }
                                          _loc3_ = §§pop();
                                          §§goto(addr130);
                                       }
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
                  §§push(param1 is §%t§);
                  if(_loc7_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     §§goto(addr274);
                  }
                  addr34:
                  return;
               }
            }
         }
         §§goto(addr274);
      }
   }
}
