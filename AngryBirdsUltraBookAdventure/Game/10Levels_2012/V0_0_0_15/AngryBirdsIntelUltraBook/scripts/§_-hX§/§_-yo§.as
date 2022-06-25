package §_-hX§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class §_-yo§ extends §_-pI§
   {
      
      private static const §_-Wv§:int = 50;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §_-Wv§ = 50;
         }
      }
      
      private var §_-X1§:MovieClip;
      
      public function §_-yo§(param1:String, param2:String, param3:Boolean = false, param4:String = null)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§_-X1§ = new MovieClip();
            do
            {
               addChild(this.§_-X1§);
               do
               {
                  super(param1,param2,param3,param4);
               }
               while(_loc5_);
               
            }
            while(!(_loc6_ || param3));
            
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
            while(true)
            {
               addChild(§_-2A§);
               while(true)
               {
                  this.§_-0-0§(§_-gM§);
                  loop2:
                  while(!(_loc6_ && param1))
                  {
                     continue loop0;
                     while(true)
                     {
                        this.§_-0C8§(§_-2A§,§_-Wv§);
                        do
                        {
                           this.§_-k7§(§_-gM§ as §_-bT§);
                        }
                        while(!(_loc7_ || param3));
                        
                        if(_loc7_ || this)
                        {
                           break;
                        }
                        continue loop2;
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr89);
      }
      
      override protected function createFacebookProfile(param1:String, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            super.createFacebookProfile(param1,param2,true);
         }
         do
         {
            this.§_-0-0§(§_-2A§);
            do
            {
               this.§_-k7§(§_-2A§ as §_-bT§);
            }
            while(!(_loc4_ || param1));
            
         }
         while(!(_loc4_ || this));
         
      }
      
      private function §_-0-0§(param1:Sprite) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         while(true)
         {
            if(this.§_-X1§.numChildren <= 0)
            {
               if(_loc2_ && _loc2_)
               {
                  break;
               }
               if(_loc3_ || this)
               {
                  this.§_-X1§.scrollRect = new Rectangle(0,0,§_-Wv§,§_-Wv§);
                  break;
               }
            }
            else
            {
               this.§_-X1§.removeChildAt(0);
            }
         }
         do
         {
            this.§_-X1§.addChild(param1);
         }
         while(!(_loc3_ || _loc2_));
         
      }
      
      private function §_-k7§(param1:§_-bT§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            §§push(param1.width > 0);
            loop0:
            while(true)
            {
               if(!§§pop())
               {
                  while(true)
                  {
                     if(!§§pop())
                     {
                        param1.addEventListener(Event.COMPLETE,this.§_-8M§);
                        if(_loc3_)
                        {
                           if(_loc3_ || param1)
                           {
                              §§goto(addr25);
                           }
                           addr84:
                           this.§_-0C8§(param1,§_-Wv§);
                        }
                        if(!_loc2_)
                        {
                           break;
                        }
                        addr98:
                        loop3:
                        while(true)
                        {
                           §§push(param1.height > 0);
                           if(_loc3_)
                           {
                              continue loop0;
                           }
                           addr97:
                           while(true)
                           {
                              §§pop();
                              continue loop3;
                           }
                        }
                     }
                     §§goto(addr84);
                  }
                  addr25:
                  return;
                  addr82:
               }
               §§goto(addr97);
            }
         }
         §§goto(addr98);
      }
      
      private function §_-8M§(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:§_-bT§ = param1.currentTarget as §_-bT§;
         if(_loc4_)
         {
            if(_loc2_)
            {
               while(true)
               {
                  _loc2_.removeEventListener(Event.COMPLETE,this.§_-8M§);
                  addr58:
                  while(true)
                  {
                  }
               }
               addr52:
            }
            while(true)
            {
               this.§_-0C8§(_loc2_,§_-Wv§);
               if(!_loc4_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
               §§goto(addr52);
            }
            return;
         }
         §§goto(addr58);
      }
      
      private function §_-0C8§(param1:Sprite, param2:Number) : void
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc3_:* = NaN;
         var _loc4_:* = int(param1.width);
         var _loc5_:* = int(param1.height);
         if(!_loc6_)
         {
            §§push(param1 is §_-WC§);
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
                        addr338:
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           addr339:
                           while(true)
                           {
                              param2 = §§pop();
                              addr340:
                              while(true)
                              {
                                 param1.x = -5;
                                 addr330:
                                 while(true)
                                 {
                                    param1.y = -5;
                                    addr325:
                                    while(true)
                                    {
                                       §§push(param2);
                                       addr299:
                                       while(true)
                                       {
                                          §§push(_loc5_);
                                          addr310:
                                          while(true)
                                          {
                                             §§push(§§pop() / §§pop());
                                             addr311:
                                             while(true)
                                             {
                                                if(!(_loc7_ || param2))
                                                {
                                                   continue loop2;
                                                }
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   _loc3_ = §§pop();
                                                   addr320:
                                                   while(true)
                                                   {
                                                      param1.scaleX = _loc3_;
                                                      addr296:
                                                      while(true)
                                                      {
                                                         param1.scaleY = _loc3_;
                                                         addr291:
                                                         while(true)
                                                         {
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
                  addr335:
               }
               while(true)
               {
                  §§push(param1 is §_-bT§);
                  if(_loc6_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     loop7:
                     while(true)
                     {
                        §§push((param1 as §_-bT§).§_-09q§);
                        loop8:
                        while(true)
                        {
                           §§push(int(§§pop()));
                           loop9:
                           while(true)
                           {
                              _loc4_ = §§pop();
                              loop10:
                              while(true)
                              {
                                 §§push((param1 as §_-bT§).§_-cD§);
                                 if(_loc7_ || this)
                                 {
                                    §§push(int(§§pop()));
                                 }
                                 loop11:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    loop12:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(!(_loc7_ || param1))
                                       {
                                          continue loop11;
                                       }
                                       if(!_loc7_)
                                       {
                                          continue loop9;
                                       }
                                       if(!(_loc7_ || _loc3_))
                                       {
                                          continue loop8;
                                       }
                                       if(§§pop() < _loc5_)
                                       {
                                          addr257:
                                          if(_loc7_ || param2)
                                          {
                                             addr238:
                                             §§push(param2 / _loc4_);
                                             break;
                                          }
                                          param1.scaleX = _loc3_;
                                          if(_loc7_ || param1)
                                          {
                                             param1.scaleY = _loc3_;
                                             addr166:
                                             if(!(_loc7_ || this))
                                             {
                                                continue loop10;
                                             }
                                             if(_loc7_ || param2)
                                             {
                                                if(_loc7_ || _loc3_)
                                                {
                                                   if(_loc7_ || param2)
                                                   {
                                                      if(!_loc6_)
                                                      {
                                                         §§goto(addr30);
                                                      }
                                                      §§goto(addr340);
                                                   }
                                                   §§goto(addr325);
                                                }
                                                §§goto(addr296);
                                             }
                                             §§goto(addr291);
                                          }
                                          §§goto(addr330);
                                       }
                                       else
                                       {
                                          §§push(param2);
                                          if(!(_loc6_ && _loc3_))
                                          {
                                             if(_loc7_)
                                             {
                                                if(_loc7_)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc7_)
                                                   {
                                                      if(!(_loc6_ && param1))
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc6_)
                                                         {
                                                            addr110:
                                                            if(_loc6_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            §§push(Number(§§pop()));
                                                         }
                                                         if(!_loc6_)
                                                         {
                                                            if(!(_loc6_ && this))
                                                            {
                                                               _loc3_ = §§pop();
                                                               while(true)
                                                               {
                                                                  if(_loc7_ || this)
                                                                  {
                                                                     if(!(_loc6_ && param1))
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     §§goto(addr257);
                                                                  }
                                                                  break;
                                                                  addr46:
                                                                  if(!(_loc7_ || param2))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc6_ && this)
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                                  §§goto(addr30);
                                                               }
                                                               §§goto(addr257);
                                                            }
                                                            §§goto(addr338);
                                                         }
                                                         else
                                                         {
                                                            addr247:
                                                            if(_loc7_ || param1)
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  §§goto(addr257);
                                                               }
                                                               §§goto(addr311);
                                                            }
                                                            §§goto(addr319);
                                                         }
                                                      }
                                                      §§goto(addr310);
                                                   }
                                                   else
                                                   {
                                                      §§goto(addr238);
                                                   }
                                                }
                                                §§goto(addr339);
                                             }
                                             else
                                             {
                                                §§goto(addr238);
                                             }
                                          }
                                          §§goto(addr110);
                                       }
                                    }
                                    if(_loc7_ || this)
                                    {
                                       §§goto(addr247);
                                       §§push(Number(§§pop()));
                                    }
                                    break loop10;
                                 }
                              }
                              §§goto(addr299);
                           }
                        }
                     }
                  }
                  addr30:
                  return;
               }
            }
         }
         §§goto(addr330);
      }
   }
}
