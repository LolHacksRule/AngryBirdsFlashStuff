package §6!@§
{
   import §-!0§.§'!3§;
   import §?!?§.§3!E§;
   import §?^§.§?C§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   import flash.geom.Rectangle;
   
   public class §;Y§ extends §5l§
   {
      
      private static const §+-§:Number = 2.5;
      
      private static const §0+§:Number = 0.15;
      
      private static const §!<§:Number = 0.25;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §;Y§)
         {
            §+-§ = 2.5;
            if(!_loc1_)
            {
               §§goto(addr39);
            }
            §§goto(addr44);
         }
         addr39:
         if(!_loc1_)
         {
            addr44:
            §!<§ = 0.25;
         }
      }
      
      private var §<X§:Number;
      
      private var §<!2§:Number;
      
      private var §3h§:§?C§;
      
      private var §!h§:Boolean;
      
      private var §;j§:Number;
      
      public function §;Y§(param1:String, param2:Number, param3:§'!3§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super(param1,param2,param3,param4);
            if(_loc6_ || this)
            {
               addr42:
               §§push(this);
               §§push(3 + Math.random() * 3);
               if(_loc6_)
               {
                  §§push(-§§pop());
               }
               §§pop().§<X§ = §§pop();
            }
            return;
         }
         §§goto(addr42);
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
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Sprite = null;
         §§push(this.§3h§);
         if(!_loc3_)
         {
            if(§§pop() == null)
            {
               if(_loc4_)
               {
                  if(this.§<X§ > 0)
                  {
                     this.§?9§();
                  }
                  addr60:
                  this.§?p§();
               }
               §§push(this);
               §§push(this.§<X§);
               if(!_loc3_)
               {
                  §§push(param1);
                  if(_loc4_ || this)
                  {
                     §§push(§§pop() / 1000);
                  }
                  §§push(§§pop() + §§pop());
               }
               §§pop().§<X§ = §§pop();
               return;
            }
            addr57:
            if(this.§3h§)
            {
               this.§"U§();
            }
            §§goto(addr60);
         }
         §§goto(addr57);
      }
      
      private function §?9§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!_loc3_)
         {
            if(§`6§.numChildren > 0)
            {
               addr29:
               _loc1_ = §`6§.getChildAt(0) as Sprite;
               if(_loc4_ || _loc2_)
               {
                  if(_loc1_)
                  {
                     if(_loc4_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(_loc4_ || this)
                        {
                           this.§3h§ = new §?C§(_loc2_.width,_loc2_.height,16777215);
                           if(_loc4_ || _loc2_)
                           {
                              §§push(this.§3h§);
                              if(!_loc3_)
                              {
                                 §§pop().x = _loc2_.left;
                                 if(!_loc3_)
                                 {
                                    §§push(this.§3h§);
                                    if(_loc4_ || this)
                                    {
                                       addr103:
                                       §§pop().y = _loc2_.top;
                                       §§goto(addr124);
                                    }
                                    §§pop().alpha = 0;
                                    if(_loc4_ || _loc2_)
                                    {
                                    }
                                    §§goto(addr124);
                                 }
                                 addr124:
                                 if(_loc4_ || _loc1_)
                                 {
                                    §§push(this.§3h§);
                                 }
                                 _loc1_.addChild(this.§3h§);
                                 this.§<X§ = 0;
                                 if(Math.random() < 0.25)
                                 {
                                    this.§<!2§ = 1 + Math.random() * (§+-§ - 1);
                                    if(_loc4_ || _loc3_)
                                    {
                                       addr185:
                                       §§push(this);
                                       §§push(0.2);
                                       if(_loc4_ || _loc3_)
                                       {
                                          §§push(§§pop() + Math.random() * 2);
                                       }
                                       §§pop().§;j§ = §§pop();
                                       if(_loc4_ || this)
                                       {
                                          this.§!h§ = false;
                                       }
                                    }
                                 }
                                 else
                                 {
                                    §§push(this);
                                    §§push(0.3);
                                    if(!(_loc3_ && this))
                                    {
                                       §§push(Math.random() * (§+-§ - 0.3));
                                       if(_loc4_)
                                       {
                                          §§push(§§pop() * 0.3);
                                       }
                                       §§push(§§pop() + §§pop());
                                    }
                                    §§pop().§<!2§ = §§pop();
                                    if(_loc4_)
                                    {
                                       §§goto(addr185);
                                    }
                                 }
                                 §§goto(addr210);
                              }
                              §§goto(addr103);
                           }
                        }
                     }
                  }
               }
               §§goto(addr103);
            }
            addr210:
            return;
         }
         §§goto(addr29);
      }
      
      private function §"U§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(!(_loc7_ && this))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(_loc8_)
         {
            §§push(this.§<X§);
            §§push(§0+§);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() < §§pop())
               {
                  if(_loc8_ || _loc3_)
                  {
                     §§push(this.§<X§);
                     if(!_loc7_)
                     {
                        §§push(§0+§);
                        if(!_loc7_)
                        {
                           §§push(Number(§§pop() / §§pop()));
                           if(_loc8_)
                           {
                              _loc2_ = §§pop();
                              addr210:
                              this.§3h§.alpha = _loc2_;
                              addr214:
                              var _loc3_:* = uint(Math.round((1 - _loc2_) * 255));
                              if(_loc8_)
                              {
                                 §§push(_loc3_);
                                 if(_loc8_)
                                 {
                                    §§push(§§pop() << 16);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() + (_loc3_ << 8));
                                       if(!(_loc7_ && _loc1_))
                                       {
                                          §§push(§§pop() + _loc3_);
                                          if(!_loc7_)
                                          {
                                             §§push(uint(§§pop()));
                                             if(_loc8_ || _loc1_)
                                             {
                                                addr255:
                                                _loc3_ = §§pop();
                                                if(!_loc7_)
                                                {
                                                   §§push(this.§<X§);
                                                   if(!_loc7_)
                                                   {
                                                      addr262:
                                                      if(§§pop() > §+-§)
                                                      {
                                                         if(§`6§.numChildren > 0)
                                                         {
                                                            if(!_loc7_)
                                                            {
                                                               if(_loc6_ = §`6§.getChildAt(0) as Sprite)
                                                               {
                                                                  if(_loc8_)
                                                                  {
                                                                     _loc6_.removeChild(this.§3h§,true);
                                                                  }
                                                                  §§goto(addr286);
                                                               }
                                                               addr286:
                                                               this.§3h§ = null;
                                                               §§push(16777215);
                                                               if(!(_loc7_ && _loc2_))
                                                               {
                                                                  addr298:
                                                                  _loc3_ = uint(§§pop());
                                                                  if(_loc7_ && _loc1_)
                                                                  {
                                                                  }
                                                                  §§goto(addr331);
                                                               }
                                                               addr331:
                                                               var _loc4_:* = int(§`6§.numChildren - 1);
                                                               §§goto(addr327);
                                                            }
                                                            §§push(this);
                                                            §§push(2 + 20 * Math.random());
                                                            if(_loc8_)
                                                            {
                                                               §§push(-§§pop());
                                                            }
                                                            §§pop().§<X§ = §§pop();
                                                            addr327:
                                                            §§goto(addr330);
                                                         }
                                                         §§goto(addr286);
                                                      }
                                                      §§goto(addr331);
                                                   }
                                                   addr330:
                                                   while(_loc4_ >= 1)
                                                   {
                                                      _loc1_ = §`6§.getChildAt(_loc4_);
                                                      if(_loc8_)
                                                      {
                                                         _loc1_.color = _loc3_;
                                                         if(_loc8_)
                                                         {
                                                            §§push(_loc4_);
                                                            if(!_loc7_)
                                                            {
                                                               §§push(§§pop() - 1);
                                                            }
                                                            _loc4_ = §§pop();
                                                         }
                                                      }
                                                   }
                                                   return;
                                                }
                                                §§goto(addr331);
                                             }
                                             §§goto(addr298);
                                          }
                                          §§goto(addr262);
                                       }
                                    }
                                    §§goto(addr298);
                                 }
                                 §§goto(addr255);
                              }
                              §§goto(addr298);
                           }
                           §§goto(addr214);
                        }
                        else
                        {
                           addr103:
                           §§push(§§pop() / (§§pop() * 2));
                           if(_loc8_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc8_ || _loc3_)
                              {
                                 addr116:
                                 _loc5_ = §§pop();
                                 addr117:
                                 §§push(1);
                                 if(_loc8_ || _loc1_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc8_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc7_ && _loc2_))
                                       {
                                          addr140:
                                          §§push(§§pop() + Math.random() * _loc5_);
                                          if(_loc8_)
                                          {
                                             addr143:
                                             §§push(Number(§§pop()));
                                             if(_loc8_)
                                             {
                                                _loc2_ = §§pop();
                                             }
                                             §§goto(addr210);
                                          }
                                          addr207:
                                          _loc2_ = Number(§§pop());
                                          addr206:
                                          if(_loc7_)
                                          {
                                          }
                                          §§goto(addr210);
                                       }
                                       else
                                       {
                                          addr152:
                                          §§push(§0+§);
                                          if(!_loc7_)
                                          {
                                             addr155:
                                             §§push(this.§<!2§);
                                             if(_loc8_)
                                             {
                                                addr174:
                                                §§push(§§pop() + §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§push(§!<§);
                                                }
                                                if(§§pop() < §§pop())
                                                {
                                                   if(!_loc7_)
                                                   {
                                                      addr178:
                                                      §§push(1);
                                                      §§push(this.§<X§);
                                                      if(_loc8_)
                                                      {
                                                         §§push(§0+§);
                                                         if(_loc8_)
                                                         {
                                                            §§push(§§pop() + this.§<!2§);
                                                            if(!(_loc7_ && _loc2_))
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(!(_loc7_ && _loc1_))
                                                               {
                                                                  addr204:
                                                                  §§push(§§pop() / §!<§);
                                                               }
                                                               §§goto(addr206);
                                                               §§push(§§pop() - §§pop());
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr204);
                                                   }
                                                }
                                                §§goto(addr210);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§goto(addr174);
                                       }
                                    }
                                    §§goto(addr204);
                                 }
                                 §§goto(addr178);
                              }
                              §§goto(addr207);
                           }
                           §§goto(addr143);
                        }
                     }
                     else
                     {
                        addr102:
                        §§push(§+-§);
                     }
                     §§goto(addr103);
                  }
                  §§goto(addr117);
               }
               else
               {
                  §§push(this.§<X§);
                  §§push(§0+§);
                  if(_loc8_ || _loc2_)
                  {
                     §§push(this.§<!2§);
                     if(!(_loc7_ && _loc2_))
                     {
                        if(§§pop() < §§pop() + §§pop())
                        {
                           §§push(§+-§);
                           §§push(this.§<!2§);
                           if(!_loc7_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc8_ || _loc1_)
                              {
                                 §§goto(addr102);
                              }
                              §§goto(addr116);
                           }
                           §§goto(addr155);
                        }
                        else
                        {
                           §§push(this.§<X§);
                           if(_loc8_)
                           {
                              §§goto(addr152);
                           }
                        }
                        §§goto(addr207);
                     }
                     §§goto(addr174);
                  }
               }
               §§goto(addr103);
            }
            §§goto(addr140);
         }
         §§goto(addr210);
      }
      
      private function §?p§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            if(this.§<X§ > this.§;j§)
            {
               if(_loc2_ || _loc1_)
               {
                  §§goto(addr56);
               }
            }
            §§goto(addr61);
         }
         addr56:
         if(!this.§!h§)
         {
            if(!_loc1_)
            {
               addr61:
               §3!E§.§4I§("Lightning04","ChannelExplosions");
               if(!_loc2_)
               {
               }
               §§goto(addr70);
            }
            this.§!h§ = true;
            §§goto(addr70);
         }
         addr70:
      }
   }
}
