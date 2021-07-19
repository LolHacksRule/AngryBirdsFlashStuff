package § "!§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §8!0§ extends § ! §
   {
      
      private static const §[!^§:int = 50;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §[!^§ = 50;
         }
      }
      
      private var §5!D§:MovieClip;
      
      public function §8!0§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§5!D§ = new MovieClip();
            while(true)
            {
               addChild(this.§5!D§);
               loop1:
               while(!_loc6_)
               {
                  while(true)
                  {
                     super(param1,param2,param3,param4);
                     if(_loc5_ || this)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr70);
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_)
         {
            super.createAvatar(param1,param2,param3,param4,true);
         }
         while(true)
         {
            addChild(§`F§);
            loop1:
            while(!_loc7_)
            {
               this.§^"&§(§3"A§);
               do
               {
                  this.§^^§(§`F§,§[!^§);
                  while(!(_loc7_ && this))
                  {
                     this.§;!I§(§3"A§ as §!"O§);
                     if(_loc7_)
                     {
                        continue;
                     }
                     §§goto(addr41);
                  }
                  continue loop1;
               }
               while(_loc7_);
               
               return;
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
            do
            {
               this.§^"&§(§`F§);
               do
               {
                  this.§;!I§(§`F§ as §!"O§);
               }
               while(!(_loc4_ || param2));
               
            }
            while(!_loc4_);
            
         }
      }
      
      private function §^"&§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         while(true)
         {
            if(this.§5!D§.numChildren <= 0)
            {
               if(!_loc2_)
               {
                  this.§5!D§.scrollRect = new Rectangle(0,0,§[!^§,§[!^§);
               }
               while(_loc3_ || _loc3_)
               {
                  this.§5!D§.addChild(param1);
                  if(!(_loc2_ && param1))
                  {
                     return;
                  }
               }
            }
            else
            {
               this.§5!D§.removeChildAt(0);
            }
         }
      }
      
      private function §;!I§(param1:§!"O§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1.width > 0);
            if(_loc2_ || _loc2_)
            {
               if(§§pop())
               {
                  loop2:
                  while(true)
                  {
                     §§pop();
                     addr92:
                     while(true)
                     {
                        §§push(param1.height > 0);
                        if(!_loc3_)
                        {
                           break;
                        }
                        continue loop2;
                     }
                  }
                  addr91:
               }
               while(true)
               {
                  if(§§pop())
                  {
                     if(_loc2_)
                     {
                        this.§^^§(param1,§[!^§);
                        break;
                     }
                     break;
                  }
                  param1.addEventListener(Event.COMPLETE,this.§%>§);
                  if(_loc3_ && _loc3_)
                  {
                     break;
                  }
                  if(!_loc3_)
                  {
                     addr19:
                     return;
                     addr51:
                  }
                  §§goto(addr92);
               }
               §§goto(addr19);
            }
            §§goto(addr91);
         }
         §§goto(addr51);
      }
      
      private function §%>§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§!"O§ = param1.currentTarget as §!"O§;
         if(!(_loc4_ && _loc2_))
         {
            if(_loc2_)
            {
               if(_loc3_)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§%>§);
               }
               while(true)
               {
                  §§goto(addr54);
               }
            }
            addr54:
            §§goto(addr66);
         }
         addr66:
         while(true)
         {
            this.§^^§(_loc2_,§[!^§);
            if(_loc3_ || _loc2_)
            {
               break;
            }
            continue loop0;
         }
      }
      
      private function §^^§(param1:Sprite, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc5_:* = 0;
         var _loc4_:* = int(param1.width);
         if(!(_loc6_ && param1))
         {
            §§push(int(param1.height));
            loop0:
            while(true)
            {
               _loc5_ = §§pop();
               loop1:
               while(true)
               {
                  §§push(param1 is §2w§);
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
                        loop4:
                        while(true)
                        {
                           §§push(§§pop() * 1.4);
                           loop5:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop6:
                              while(true)
                              {
                                 param2 = §§pop();
                                 loop7:
                                 while(true)
                                 {
                                    param1.x = -5;
                                    loop8:
                                    while(true)
                                    {
                                       param1.y = -5;
                                       loop9:
                                       while(true)
                                       {
                                          §§push(param2);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(_loc5_);
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop13:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      loop14:
                                                      while(true)
                                                      {
                                                         param1.scaleX = _loc3_;
                                                         while(!(_loc6_ && _loc3_))
                                                         {
                                                            param1.scaleY = _loc3_;
                                                            while(true)
                                                            {
                                                               continue loop2;
                                                               addr94:
                                                               if(!(_loc6_ && param1))
                                                               {
                                                                  param1.scaleY = _loc3_;
                                                                  continue loop9;
                                                               }
                                                            }
                                                            addr249:
                                                            if(_loc7_ || this)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  param1.scaleX = _loc3_;
                                                                  loop26:
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        param1.scaleY = _loc3_;
                                                                     }
                                                                     else
                                                                     {
                                                                        loop27:
                                                                        while(true)
                                                                        {
                                                                           if(_loc6_ && _loc3_)
                                                                           {
                                                                              loop22:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    if(_loc7_ || _loc3_)
                                                                                    {
                                                                                       if(§§pop() < _loc5_)
                                                                                       {
                                                                                          addr194:
                                                                                          if(!(_loc6_ && _loc3_))
                                                                                          {
                                                                                             addr201:
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                addr209:
                                                                                                §§push(param2);
                                                                                                if(!(_loc7_ || _loc3_))
                                                                                                {
                                                                                                   continue loop13;
                                                                                                }
                                                                                                if(!_loc7_)
                                                                                                {
                                                                                                   continue loop6;
                                                                                                }
                                                                                                addr219:
                                                                                                §§push(_loc4_);
                                                                                                if(_loc6_)
                                                                                                {
                                                                                                   continue loop11;
                                                                                                }
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(_loc7_ || param2)
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      addr232:
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      if(_loc7_ || param2)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         continue loop27;
                                                                                                      }
                                                                                                      continue loop4;
                                                                                                   }
                                                                                                   continue loop12;
                                                                                                }
                                                                                                §§goto(addr232);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(int((param1 as §!"O§).§#";§));
                                                                                                   addr284:
                                                                                                   while(_loc7_)
                                                                                                   {
                                                                                                      _loc4_ = §§pop();
                                                                                                   }
                                                                                                   continue loop0;
                                                                                                   §§goto(addr201);
                                                                                                }
                                                                                                addr279:
                                                                                             }
                                                                                          }
                                                                                          while(!(_loc6_ && param2))
                                                                                          {
                                                                                             §§push(int((param1 as §!"O§).§ %§));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                continue loop22;
                                                                                             }
                                                                                             §§goto(addr194);
                                                                                          }
                                                                                          continue loop7;
                                                                                       }
                                                                                       §§push(param2);
                                                                                       if(!(_loc6_ && param2))
                                                                                       {
                                                                                          if(!_loc6_)
                                                                                          {
                                                                                             §§push(_loc5_);
                                                                                             if(!(_loc6_ && param1))
                                                                                             {
                                                                                                §§push(§§pop() / §§pop());
                                                                                                if(!(_loc7_ || param1))
                                                                                                {
                                                                                                   addr146:
                                                                                                   _loc3_ = §§pop();
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc7_ || param1))
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      if(_loc6_)
                                                                                                      {
                                                                                                         continue loop1;
                                                                                                      }
                                                                                                      param1.scaleX = _loc3_;
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc7_)
                                                                                                         {
                                                                                                            addr33:
                                                                                                            return;
                                                                                                            addr171:
                                                                                                         }
                                                                                                         §§goto(addr94);
                                                                                                         addr54:
                                                                                                         if(!(_loc6_ && param2))
                                                                                                         {
                                                                                                            continue loop23;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr299);
                                                                                                   }
                                                                                                   continue loop26;
                                                                                                }
                                                                                                addr131:
                                                                                                if(!(_loc6_ && param2))
                                                                                                {
                                                                                                   continue loop10;
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr232);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr209);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr131);
                                                                                       §§goto(addr232);
                                                                                    }
                                                                                    §§goto(addr284);
                                                                                 }
                                                                                 §§goto(addr265);
                                                                              }
                                                                              continue loop5;
                                                                           }
                                                                           §§goto(addr249);
                                                                        }
                                                                     }
                                                                     §§goto(addr171);
                                                                  }
                                                                  addr258:
                                                                  continue;
                                                               }
                                                               continue loop14;
                                                            }
                                                         }
                                                         continue loop3;
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
         }
         §§goto(addr33);
      }
   }
}
