package §3!8§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §null § extends §0z§
   {
      
      private static const §[^§:int = 50;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §[^§ = 50;
         }
      }
      
      private var §+"§:MovieClip;
      
      public function §null §(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || this)
         {
            this.§+"§ = new MovieClip();
         }
         do
         {
            addChild(this.§+"§);
            do
            {
               super(param1,param2,param3,param4);
            }
            while(!_loc6_);
            
         }
         while(!_loc6_);
         
      }
      
      override protected function createAvatar(param1:String, param2:String, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         if(_loc6_ || param2)
         {
            super.createAvatar(param1,param2,param3,param4,true);
            loop0:
            while(true)
            {
               addChild(§4!H§);
               do
               {
                  this.§#!^§(§=!s§);
                  continue loop0;
               }
               while(!_loc6_);
               
            }
         }
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param3))
         {
            super.createFacebookProfile(param1,param2,true);
            while(true)
            {
               this.§#!^§(§4!H§);
               loop1:
               while(!(_loc4_ && param2))
               {
                  while(true)
                  {
                     this.§9i§(§4!H§ as §%!5§);
                     if(!(_loc4_ && param3))
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr74);
      }
      
      private function §#!^§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         while(true)
         {
            if(this.§+"§.numChildren <= 0)
            {
               if(!_loc3_)
               {
                  break;
               }
               if(_loc3_)
               {
                  this.§+"§.scrollRect = new Rectangle(0,0,§[^§,§[^§);
                  break;
               }
            }
            else
            {
               this.§+"§.removeChildAt(0);
            }
         }
         do
         {
            this.§+"§.addChild(param1);
         }
         while(!(_loc3_ || _loc3_));
         
      }
      
      private function §9i§(param1:§%!5§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1.width > 0);
            if(_loc2_ || this)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     §§pop();
                     addr102:
                     loop2:
                     while(true)
                     {
                        §§push(param1.height > 0);
                        if(!(_loc2_ || _loc2_))
                        {
                           continue;
                        }
                        while(true)
                        {
                           if(!§§pop())
                           {
                              param1.addEventListener(Event.COMPLETE,this.§>4§);
                              if(!(_loc3_ && param1))
                              {
                                 if(!(_loc3_ && _loc3_))
                                 {
                                    §§goto(addr19);
                                 }
                                 addr81:
                                 if(_loc2_)
                                 {
                                    break;
                                 }
                                 continue loop2;
                              }
                              addr19:
                              return;
                              addr87:
                           }
                           §§goto(addr81);
                           continue loop2;
                        }
                        this.§<!!§(param1,§[^§);
                        §§goto(addr87);
                     }
                  }
                  addr101:
               }
               §§goto(addr79);
            }
            §§goto(addr101);
         }
         §§goto(addr102);
      }
      
      private function §>4§(param1:Event) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:§%!5§ = param1.currentTarget as §%!5§;
         if(_loc3_ || this)
         {
            if(_loc2_)
            {
               if(!(_loc4_ && _loc3_))
               {
                  addr76:
                  _loc2_.removeEventListener(Event.COMPLETE,this.§>4§);
               }
               while(true)
               {
                  §§goto(addr54);
               }
            }
            addr54:
            while(true)
            {
               this.§<!!§(_loc2_,§[^§);
               if(!(_loc4_ && this))
               {
                  break;
               }
               continue loop0;
            }
            return;
         }
         §§goto(addr76);
      }
      
      private function §<!!§(param1:Sprite, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         if(_loc7_ || param1)
         {
            §§push(param1 is §2!_§);
            loop0:
            while(true)
            {
               if(§§pop())
               {
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
                                    while(true)
                                    {
                                       §§push(param2);
                                       if(!_loc6_)
                                       {
                                          §§push(_loc5_);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             loop26:
                                             while(true)
                                             {
                                                if(_loc7_ || _loc3_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   loop24:
                                                   while(true)
                                                   {
                                                      if(!_loc7_)
                                                      {
                                                         continue loop2;
                                                      }
                                                      §§push(Number(§§pop()));
                                                      loop25:
                                                      while(_loc7_ || this)
                                                      {
                                                         if(_loc6_ && this)
                                                         {
                                                            break loop24;
                                                         }
                                                         _loc3_ = §§pop();
                                                         while(true)
                                                         {
                                                            if(_loc7_)
                                                            {
                                                               addr242:
                                                               if(!(_loc6_ && param2))
                                                               {
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(_loc7_)
                                                                     {
                                                                        param1.scaleX = _loc3_;
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           if(!(_loc6_ && param2))
                                                                           {
                                                                              if(!(_loc7_ || this))
                                                                              {
                                                                                 continue loop5;
                                                                              }
                                                                              param1.scaleY = _loc3_;
                                                                              addr155:
                                                                              if(!(_loc7_ || param2))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc4_);
                                                                                    if(!_loc6_)
                                                                                    {
                                                                                       if(_loc7_ || _loc3_)
                                                                                       {
                                                                                          addr203:
                                                                                          if(_loc7_ || param2)
                                                                                          {
                                                                                             if(§§pop() < _loc5_)
                                                                                             {
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(param2);
                                                                                                }
                                                                                                addr212:
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§push(param2);
                                                                                                if(!(_loc6_ && param1))
                                                                                                {
                                                                                                   if(_loc7_)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      if(_loc6_ && param1)
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      §§push(§§pop() / §§pop());
                                                                                                      if(!(_loc6_ && param1))
                                                                                                      {
                                                                                                         addr125:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      if(_loc6_ && param2)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      if(!_loc7_)
                                                                                                      {
                                                                                                         continue loop24;
                                                                                                      }
                                                                                                      if(!(_loc6_ && this))
                                                                                                      {
                                                                                                         if(!(_loc7_ || param2))
                                                                                                         {
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         _loc3_ = §§pop();
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            param1.scaleX = _loc3_;
                                                                                                            loop22:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!(_loc7_ || param2))
                                                                                                               {
                                                                                                                  continue loop21;
                                                                                                               }
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               if(_loc6_)
                                                                                                               {
                                                                                                                  continue loop23;
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.scaleY = _loc3_;
                                                                                                                  continue loop22;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr155);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_ = §§pop();
                                                                                                            addr330:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               param1.scaleX = _loc3_;
                                                                                                               loop12:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  param1.scaleY = _loc3_;
                                                                                                                  addr306:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     addr274:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(param1 is §%!5§);
                                                                                                                        if(!_loc7_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        if(§§pop())
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop0;
                                                                                                                     §§goto(addr242);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr329:
                                                                                                      }
                                                                                                      §§goto(addr35);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      addr213:
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr125);
                                                                                             }
                                                                                             §§goto(addr213);
                                                                                          }
                                                                                          §§goto(addr292);
                                                                                       }
                                                                                       §§goto(addr293);
                                                                                    }
                                                                                    §§goto(addr272);
                                                                                 }
                                                                              }
                                                                              §§goto(addr35);
                                                                           }
                                                                           §§goto(addr212);
                                                                        }
                                                                        addr258:
                                                                        continue loop8;
                                                                     }
                                                                     continue loop6;
                                                                  }
                                                                  §§goto(addr330);
                                                               }
                                                               §§goto(addr306);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr329);
                                                      }
                                                   }
                                                   continue loop3;
                                                }
                                                continue loop8;
                                             }
                                          }
                                       }
                                       §§goto(addr328);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr274);
            }
         }
         §§goto(addr95);
      }
   }
}
