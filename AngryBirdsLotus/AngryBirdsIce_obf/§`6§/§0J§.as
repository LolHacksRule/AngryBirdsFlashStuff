package §`6§
{
   import §1n§.§5#§;
   import §3O§.§@6§;
   import §^V§.§09§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   import flash.geom.Rectangle;
   
   public class §0J§ extends §8!!§
   {
      
      private static const §1,§:Number = 2.5;
      
      private static const § y§:Number = 0.15;
      
      private static const §2!@§:Number = 0.25;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §1,§ = 2.5;
            do
            {
               § y§ = 0.15;
               do
               {
                  §2!@§ = 0.25;
               }
               while(_loc1_ && _loc2_);
               
            }
            while(_loc1_);
            
         }
      }
      
      private var §7;§:Number;
      
      private var §4S§:Number;
      
      private var §`!"§:§09§;
      
      private var §!'§:Boolean;
      
      private var §3n§:Number;
      
      public function §0J§(param1:String, param2:Number, param3:§5#§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
         }
         do
         {
            §§push(this);
            §§push(3 + Math.random() * 3);
            if(_loc6_ || param1)
            {
               §§push(-§§pop());
            }
            §§pop().§7;§ = §§pop();
         }
         while(_loc5_ && this);
         
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            super.dispose();
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Sprite = null;
         if(!_loc4_)
         {
            §§push(this.§`!"§);
            loop0:
            while(true)
            {
               if(§§pop() != null)
               {
                  continue;
               }
               if(this.§7;§ > 0)
               {
                  loop1:
                  while(true)
                  {
                     this.§4!?§();
                     addr91:
                     while(true)
                     {
                        if(_loc4_ && this)
                        {
                           continue loop1;
                        }
                        this.§+!D§();
                        while(true)
                        {
                           break loop0;
                        }
                     }
                  }
                  addr109:
               }
               while(true)
               {
                  break loop0;
                  §§goto(addr109);
               }
            }
            while(true)
            {
               this.§;!C§();
               do
               {
                  §§push(this);
                  §§push(this.§7;§);
                  if(!_loc4_)
                  {
                     §§push(param1);
                     if(!(_loc4_ && param1))
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§7;§ = §§pop();
               }
               while(!_loc3_);
               
               if(!(_loc4_ && _loc3_))
               {
                  break;
               }
               §§goto(addr91);
               §§goto(addr100);
            }
            return;
         }
         §§goto(addr100);
      }
      
      private function §4!?§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!(_loc3_ && _loc3_))
         {
            if(§`;§.numChildren > 0)
            {
               addr34:
               _loc1_ = §`;§.getChildAt(0) as Sprite;
               if(_loc4_ || _loc3_)
               {
                  if(_loc1_)
                  {
                     if(!_loc3_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(_loc4_ || _loc2_)
                        {
                           this.§`!"§ = new §09§(_loc2_.width,_loc2_.height,16777215);
                        }
                        loop0:
                        while(true)
                        {
                           §§push(this.§`!"§);
                           loop1:
                           while(true)
                           {
                              §§pop().x = _loc2_.left;
                              loop2:
                              while(true)
                              {
                                 §§push(this.§`!"§);
                                 loop3:
                                 while(true)
                                 {
                                    §§pop().y = _loc2_.top;
                                    continue loop0;
                                    addr81:
                                    addr144:
                                    loop5:
                                    do
                                    {
                                       §§push(this.§`!"§);
                                       if(_loc4_ || _loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             §§pop().alpha = 0;
                                             while(_loc4_ || _loc1_)
                                             {
                                                _loc1_.addChild(this.§`!"§);
                                                if(_loc4_)
                                                {
                                                   if(_loc4_ || _loc2_)
                                                   {
                                                      continue loop5;
                                                   }
                                                   continue loop2;
                                                }
                                             }
                                             continue loop0;
                                          }
                                          continue loop1;
                                       }
                                       continue loop3;
                                    }
                                    while(false);
                                    
                                    this.§7;§ = 0;
                                    if(_loc4_)
                                    {
                                       if(Math.random() >= 0.25)
                                       {
                                          §§push(this);
                                          §§push(0.3);
                                          if(!(_loc3_ && this))
                                          {
                                             §§push(Math.random() * (§1,§ - 0.3));
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(§§pop() * 0.3);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§4S§ = §§pop();
                                          if(_loc3_ && _loc2_)
                                          {
                                             addr240:
                                          }
                                          loop7:
                                          while(true)
                                          {
                                             §§push(this);
                                             §§push(0.2);
                                             if(_loc4_ || _loc1_)
                                             {
                                                §§push(§§pop() + Math.random() * 2);
                                             }
                                             §§pop().§3n§ = §§pop();
                                             do
                                             {
                                                this.§!'§ = false;
                                             }
                                             while(!(_loc4_ || _loc1_));
                                             
                                             addr161:
                                             while(true)
                                             {
                                                if(true)
                                                {
                                                   break loop7;
                                                }
                                                continue loop7;
                                             }
                                          }
                                          §§goto(addr241);
                                       }
                                       this.§4S§ = 1 + Math.random() * (§1,§ - 1);
                                       §§goto(addr240);
                                       addr149:
                                    }
                                    §§goto(addr161);
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr240);
                  }
                  §§goto(addr144);
               }
               §§goto(addr149);
            }
            addr241:
            return;
         }
         §§goto(addr34);
      }
      
      private function §+!D§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(_loc7_ || this)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!(_loc8_ && _loc1_))
         {
            §§push(this.§7;§);
            if(_loc7_)
            {
               §§push(§ y§);
               loop0:
               while(true)
               {
                  if(§§pop() < §§pop())
                  {
                     addr225:
                     §§push(this.§7;§ / § y§);
                     if(_loc7_)
                     {
                        §§push(Number(§§pop()));
                     }
                  }
                  else
                  {
                     §§push(this.§7;§);
                     if(_loc7_)
                     {
                        §§push(§ y§);
                        §§push(this.§4S§);
                        loop1:
                        while(true)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc8_ && this))
                           {
                              continue loop0;
                           }
                           §§goto(addr225);
                           addr80:
                           if(!(_loc7_ || _loc2_))
                           {
                              continue;
                           }
                           if(§§pop() < §§pop() + §§pop())
                           {
                              addr89:
                              §§push(1);
                              if(!(_loc8_ && _loc2_))
                              {
                                 §§push(this.§7;§);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(§ y§);
                                    if(!(_loc8_ && this))
                                    {
                                       §§push(§§pop() + this.§4S§);
                                       if(_loc7_)
                                       {
                                          addr124:
                                          §§push(§§pop() - §§pop());
                                          if(!_loc8_)
                                          {
                                             §§push(§2!@§);
                                          }
                                          if(_loc7_)
                                          {
                                             addr127:
                                             _loc2_ = Number(§§pop() - §§pop());
                                             if(_loc7_ || _loc2_)
                                             {
                                                loop2:
                                                while(true)
                                                {
                                                   this.§`!"§.alpha = _loc2_;
                                                   if(true)
                                                   {
                                                      break;
                                                   }
                                                   addr49:
                                                   while(true)
                                                   {
                                                      continue loop2;
                                                   }
                                                }
                                                var _loc3_:* = uint(Math.round((1 - _loc2_) * 255));
                                                addr42:
                                                if(_loc7_)
                                                {
                                                   §§push(_loc3_);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      §§push(§§pop() << 16);
                                                      if(_loc7_ || this)
                                                      {
                                                         §§push(§§pop() + (_loc3_ << 8));
                                                         if(!_loc8_)
                                                         {
                                                            §§push(§§pop() + _loc3_);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(uint(§§pop()));
                                                               if(!_loc8_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  §§push(this.§7;§);
                                                                  if(!(_loc8_ && _loc3_))
                                                                  {
                                                                     addr282:
                                                                     if(§§pop() > §1,§)
                                                                     {
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           if(§`;§.numChildren > 0)
                                                                           {
                                                                              addr295:
                                                                              if(_loc6_ = §`;§.getChildAt(0) as Sprite)
                                                                              {
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    _loc6_.removeChild(this.§`!"§,true);
                                                                                 }
                                                                              }
                                                                           }
                                                                           this.§`!"§ = null;
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(16777215);
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr320:
                                                                                 _loc3_ = uint(§§pop());
                                                                                 if(_loc8_)
                                                                                 {
                                                                                 }
                                                                                 §§goto(addr343);
                                                                              }
                                                                              addr343:
                                                                              var _loc4_:* = int(§`;§.numChildren - 1);
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§push(this);
                                                                           §§push(2 + 20 * Math.random());
                                                                           if(!(_loc8_ && _loc2_))
                                                                           {
                                                                              §§push(-§§pop());
                                                                           }
                                                                           §§pop().§7;§ = §§pop();
                                                                        }
                                                                     }
                                                                     addr339:
                                                                     §§goto(addr342);
                                                                  }
                                                                  addr342:
                                                                  while(_loc4_ >= 1)
                                                                  {
                                                                     _loc1_ = §`;§.getChildAt(_loc4_);
                                                                     if(!(_loc8_ && this))
                                                                     {
                                                                        _loc1_.color = _loc3_;
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr320);
                                                            }
                                                         }
                                                         §§goto(addr282);
                                                      }
                                                   }
                                                   §§goto(addr320);
                                                }
                                                §§goto(addr295);
                                                addr42:
                                             }
                                             else
                                             {
                                                §§goto(addr42);
                                                addr230:
                                             }
                                          }
                                          else
                                          {
                                             loop7:
                                             while(true)
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc7_)
                                                {
                                                   §§push(§§pop() + Math.random() * _loc5_);
                                                }
                                                if(!_loc8_)
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(!_loc7_)
                                                   {
                                                      break loop1;
                                                   }
                                                   _loc2_ = §§pop();
                                                   if(_loc7_ || _loc1_)
                                                   {
                                                      §§goto(addr49);
                                                   }
                                                }
                                                else
                                                {
                                                   addr214:
                                                   while(true)
                                                   {
                                                      _loc5_ = §§pop();
                                                      continue loop7;
                                                   }
                                                   addr214:
                                                }
                                                while(true)
                                                {
                                                   §§push(1);
                                                   addr139:
                                                   while(true)
                                                   {
                                                      continue loop7;
                                                   }
                                                }
                                                §§goto(addr214);
                                             }
                                          }
                                          §§goto(addr42);
                                       }
                                       §§goto(addr124);
                                       §§push(§§pop() / §§pop());
                                    }
                                 }
                                 §§goto(addr124);
                              }
                              §§goto(addr139);
                           }
                           §§goto(addr42);
                        }
                     }
                     else
                     {
                        §§goto(addr214);
                     }
                  }
                  _loc2_ = §§pop();
                  §§goto(addr230);
               }
            }
            §§goto(addr225);
         }
         §§goto(addr89);
      }
      
      private function §;!C§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            if(this.§7;§ > this.§3n§)
            {
               if(_loc1_)
               {
                  addr64:
                  if(!this.§!'§)
                  {
                     while(true)
                     {
                        §@6§.§0+§("Lightning04","ChannelExplosions");
                     }
                     addr67:
                  }
                  §§goto(addr19);
               }
               while(true)
               {
                  this.§!'§ = true;
                  if(_loc2_)
                  {
                     continue;
                  }
                  if(!(_loc2_ && _loc1_))
                  {
                     break;
                  }
                  §§goto(addr67);
               }
            }
            addr19:
            return;
         }
         §§goto(addr64);
      }
   }
}
