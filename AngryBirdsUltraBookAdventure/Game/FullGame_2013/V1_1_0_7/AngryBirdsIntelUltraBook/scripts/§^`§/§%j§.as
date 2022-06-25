package §^`§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §%j§ extends §,!K§
   {
      
      private static const §5!Z§:int = 50;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §5!Z§ = 50;
         }
      }
      
      private var §6O§:MovieClip;
      
      public function §%j§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§6O§ = new MovieClip();
            do
            {
               addChild(this.§6O§);
               do
               {
                  super(param1,param2,param3,param4);
               }
               while(_loc6_ && param2);
               
            }
            while(_loc6_ && param1);
            
         }
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         if(_loc7_)
         {
            super.createAvatar(param1,param2,param3,param4,true);
            loop0:
            do
            {
               addChild(§4!^§);
               loop1:
               while(true)
               {
                  this.§1=§(§#Y§);
                  loop2:
                  do
                  {
                     this.§@2§(§4!^§,§5!Z§);
                     while(_loc7_)
                     {
                        this.§<?§(§#Y§ as §14§);
                        if(!_loc6_)
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
                  while(!(_loc7_ || param3));
                  
                  continue loop0;
               }
            }
            while(_loc6_ && this);
            
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            super.createFacebookProfile(param1,param2,true);
            while(true)
            {
               this.§1=§(§4!^§);
               loop1:
               while(_loc4_ || this)
               {
                  while(true)
                  {
                     this.§<?§(§4!^§ as §14§);
                     if(!(_loc5_ && param3))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr68);
      }
      
      private function §1=§(param1:Sprite) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         loop0:
         while(true)
         {
            if(this.§6O§.numChildren <= 0)
            {
               loop1:
               while(true)
               {
                  this.§6O§.scrollRect = new Rectangle(0,0,§5!Z§,§5!Z§);
                  while(!(_loc3_ && param1))
                  {
                     this.§6O§.addChild(param1);
                     if(_loc2_)
                     {
                        if(!(_loc3_ && _loc2_))
                        {
                           break loop1;
                        }
                        continue loop1;
                     }
                  }
                  continue loop0;
               }
               return;
            }
            this.§6O§.removeChildAt(0);
         }
      }
      
      private function §<?§(param1:§14§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            §§push(param1.width > 0);
            if(!_loc2_)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr103:
                     loop2:
                     while(true)
                     {
                        §§push(param1.height > 0);
                        if(_loc2_ && _loc3_)
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              param1.addEventListener(Event.COMPLETE,this.§0N§);
                              if(!(_loc2_ && _loc2_))
                              {
                                 if(!(_loc2_ && param1))
                                 {
                                    §§goto(addr25);
                                 }
                                 addr87:
                                 if(_loc3_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              addr25:
                              return;
                              addr93:
                           }
                           §§goto(addr87);
                           continue loop2;
                        }
                        this.§@2§(param1,§5!Z§);
                        §§goto(addr93);
                     }
                  }
                  addr102:
               }
               §§goto(addr85);
            }
            §§goto(addr102);
         }
         §§goto(addr103);
      }
      
      private function §0N§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§14§ = param1.currentTarget as §14§;
         if(_loc4_ || _loc3_)
         {
            if(_loc2_)
            {
               while(true)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§0N§);
                  addr83:
                  while(true)
                  {
                  }
                  addr67:
                  if(!(_loc4_ || param1))
                  {
                     continue;
                  }
                  return;
                  addr74:
               }
            }
            while(true)
            {
               this.§@2§(_loc2_,§5!Z§);
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§goto(addr67);
            }
         }
         §§goto(addr74);
      }
      
      private function §@2§(param1:Sprite, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = int(param1.width);
         var _loc5_:* = int(param1.height);
         if(!_loc6_)
         {
            §§push(param1 is §>!N§);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  continue;
               }
               loop1:
               while(true)
               {
                  §§push(param2);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop() * 1.4);
                     loop3:
                     while(true)
                     {
                        §§push(Number(§§pop()));
                        loop4:
                        while(true)
                        {
                           param2 = §§pop();
                           loop5:
                           while(true)
                           {
                              param1.x = -5;
                              loop6:
                              while(true)
                              {
                                 param1.y = -5;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(param2);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(_loc5_);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop() / §§pop());
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Number(§§pop()));
                                             loop11:
                                             while(true)
                                             {
                                                _loc3_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   param1.scaleX = _loc3_;
                                                   loop13:
                                                   while(true)
                                                   {
                                                      param1.scaleY = _loc3_;
                                                      while(_loc7_)
                                                      {
                                                         continue loop0;
                                                         addr64:
                                                         if(!(_loc6_ && this))
                                                         {
                                                            param1.x = -(param1.width - param2) / 2;
                                                            addr71:
                                                            if(_loc6_)
                                                            {
                                                               while(true)
                                                               {
                                                                  if(_loc7_)
                                                                  {
                                                                     §§goto(addr64);
                                                                  }
                                                                  else
                                                                  {
                                                                     loop25:
                                                                     while(true)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           continue loop13;
                                                                        }
                                                                        param1.scaleX = _loc3_;
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ && _loc3_))
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(!_loc6_)
                                                                                 {
                                                                                    if(_loc7_ || param1)
                                                                                    {
                                                                                       param1.scaleY = _loc3_;
                                                                                       addr142:
                                                                                       if(!_loc6_)
                                                                                       {
                                                                                          §§goto(addr30);
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop5;
                                                                                 }
                                                                                 loop18:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push((param1 as §14§).§1"$§);
                                                                                    if(!(_loc6_ && param2))
                                                                                    {
                                                                                       §§push(int(§§pop()));
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       addr238:
                                                                                       §§push(_loc4_);
                                                                                       if(!(_loc7_ || this))
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       if(_loc7_)
                                                                                       {
                                                                                          if(§§pop() < _loc5_)
                                                                                          {
                                                                                             addr191:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(param2);
                                                                                                if(_loc7_ || param1)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      addr201:
                                                                                                      §§push(_loc4_);
                                                                                                      while(!_loc6_)
                                                                                                      {
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(_loc6_ && param2)
                                                                                                         {
                                                                                                         }
                                                                                                         loop23:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!(_loc7_ || _loc3_))
                                                                                                            {
                                                                                                               continue loop3;
                                                                                                            }
                                                                                                            _loc3_ = §§pop();
                                                                                                            §§goto(addr221);
                                                                                                            addr212:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop23;
                                                                                                            }
                                                                                                         }
                                                                                                         continue loop4;
                                                                                                         §§goto(addr201);
                                                                                                      }
                                                                                                      continue loop9;
                                                                                                      addr202:
                                                                                                   }
                                                                                                   continue loop4;
                                                                                                }
                                                                                                §§goto(addr212);
                                                                                             }
                                                                                             addr191:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§push(param2);
                                                                                             if(!(_loc6_ && _loc3_))
                                                                                             {
                                                                                                if(_loc6_ && _loc3_)
                                                                                                {
                                                                                                   continue loop2;
                                                                                                }
                                                                                                §§push(_loc5_);
                                                                                                if(!(_loc6_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr202);
                                                                                                }
                                                                                                §§goto(addr213);
                                                                                             }
                                                                                             if(_loc7_ || param1)
                                                                                             {
                                                                                                if(_loc7_ || _loc3_)
                                                                                                {
                                                                                                   if(!_loc6_)
                                                                                                   {
                                                                                                      if(_loc7_)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc7_)
                                                                                                            {
                                                                                                               param1.scaleX = _loc3_;
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            continue loop27;
                                                                                                            §§goto(addr46);
                                                                                                         }
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      continue loop8;
                                                                                                   }
                                                                                                   continue loop10;
                                                                                                }
                                                                                                continue loop11;
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr213);
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             continue loop18;
                                                                                          }
                                                                                          addr270:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(!_loc7_)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§goto(addr238);
                                                                              }
                                                                              continue loop2;
                                                                           }
                                                                           §§goto(addr191);
                                                                        }
                                                                        addr221:
                                                                     }
                                                                  }
                                                                  §§goto(addr71);
                                                               }
                                                               continue;
                                                               addr62:
                                                            }
                                                            addr46:
                                                            if(_loc6_ && _loc3_)
                                                            {
                                                               continue loop24;
                                                            }
                                                         }
                                                         continue;
                                                         if(_loc7_)
                                                         {
                                                            if(_loc6_)
                                                            {
                                                               continue loop12;
                                                            }
                                                         }
                                                         else
                                                         {
                                                            §§goto(addr142);
                                                         }
                                                         addr30:
                                                         return;
                                                      }
                                                      continue loop7;
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
                  }
               }
            }
         }
         §§goto(addr191);
      }
   }
}
