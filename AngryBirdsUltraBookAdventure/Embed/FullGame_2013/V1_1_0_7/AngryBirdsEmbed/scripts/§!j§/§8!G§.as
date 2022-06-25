package §!j§
{
   import §#X§.§,!F§;
   import §&o§.§<3§;
   import §&o§.DisplayObject;
   import §&o§.Sprite;
   import §9K§.§5!H§;
   import flash.geom.Rectangle;
   
   public class §8!G§ extends §;[§
   {
      
      private static const §=%§:Number = 2.5;
      
      private static const §;7§:Number = 0.15;
      
      private static const §%T§:Number = 0.25;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §=%§ = 2.5;
            if(_loc1_)
            {
               §§goto(addr23);
            }
            §§goto(addr28);
         }
         addr23:
         if(_loc1_)
         {
            addr28:
            §%T§ = 0.25;
         }
      }
      
      private var §2!>§:Number;
      
      private var §!!§:Number;
      
      private var §0I§:§<3§;
      
      private var §[!§:Boolean;
      
      private var §,D§:Number;
      
      public function §8!G§(param1:String, param2:Number, param3:§5!H§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super(param1,param2,param3,param4);
            if(!_loc6_)
            {
               addr41:
               §§push(this);
               §§push(3 + Math.random() * 3);
               if(!(_loc6_ && param2))
               {
                  §§push(-§§pop());
               }
               §§pop().§2!>§ = §§pop();
            }
            return;
         }
         §§goto(addr41);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super.dispose();
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Sprite = null;
         if(_loc4_ || param1)
         {
            §§push(this.§0I§);
            if(_loc4_ || _loc2_)
            {
               if(§§pop() == null)
               {
                  if(!_loc3_)
                  {
                     if(this.§2!>§ > 0)
                     {
                        if(_loc4_ || _loc3_)
                        {
                           this.§3y§();
                           addr86:
                           this.§%]§();
                           addr88:
                           §§push(this);
                           §§push(this.§2!>§);
                           if(!_loc3_)
                           {
                              §§push(param1);
                              if(_loc4_ || param1)
                              {
                                 §§push(§§pop() / 1000);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§pop().§2!>§ = §§pop();
                           addr63:
                        }
                        §§goto(addr105);
                     }
                     §§goto(addr63);
                  }
                  §§goto(addr88);
               }
               else
               {
                  addr76:
                  if(this.§0I§)
                  {
                     §§goto(addr77);
                  }
               }
               §§goto(addr86);
            }
            §§goto(addr76);
         }
         addr77:
         this.§7S§();
         if(_loc4_ || param1)
         {
            §§goto(addr86);
         }
         addr105:
      }
      
      private function §3y§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!(_loc3_ && _loc1_))
         {
            if(§'K§.numChildren > 0)
            {
               addr34:
               _loc1_ = §'K§.getChildAt(0) as Sprite;
               if(!_loc3_)
               {
                  if(_loc1_)
                  {
                     if(!_loc3_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(_loc4_)
                        {
                           this.§0I§ = new §<3§(_loc2_.width,_loc2_.height,16777215);
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(this.§0I§);
                              if(_loc4_)
                              {
                                 §§pop().x = _loc2_.left;
                                 if(_loc4_ || _loc2_)
                                 {
                                    §§push(this.§0I§);
                                    if(!_loc3_)
                                    {
                                       addr98:
                                       §§pop().y = _loc2_.top;
                                       addr113:
                                       if(!_loc3_)
                                       {
                                          addr103:
                                          §§push(this.§0I§);
                                       }
                                       this.§2!>§ = 0;
                                       if(Math.random() < 0.25)
                                       {
                                          if(!(_loc3_ && this))
                                          {
                                             addr127:
                                             this.§!!§ = 1 + Math.random() * (§=%§ - 1);
                                             addr175:
                                             §§push(this);
                                             §§push(0.2);
                                             if(_loc4_ || _loc3_)
                                             {
                                                §§push(§§pop() + Math.random() * 2);
                                             }
                                             §§pop().§,D§ = §§pop();
                                             if(!(_loc3_ && _loc1_))
                                             {
                                                this.§[!§ = false;
                                                §§goto(addr200);
                                             }
                                             addr200:
                                             return;
                                             addr136:
                                          }
                                          §§goto(addr136);
                                       }
                                       else
                                       {
                                          §§push(this);
                                          §§push(0.3);
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(Math.random() * (§=%§ - 0.3));
                                             if(!(_loc3_ && this))
                                             {
                                                §§push(§§pop() * 0.3);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§!!§ = §§pop();
                                          if(_loc4_)
                                          {
                                             §§goto(addr175);
                                          }
                                          §§goto(addr200);
                                       }
                                    }
                                    §§pop().alpha = 0;
                                    if(_loc4_)
                                    {
                                       addr109:
                                       _loc1_.addChild(this.§0I§);
                                    }
                                 }
                                 §§goto(addr113);
                              }
                              §§goto(addr98);
                           }
                           §§goto(addr109);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr175);
                  }
                  §§goto(addr98);
               }
               §§goto(addr127);
            }
            §§goto(addr200);
         }
         §§goto(addr34);
      }
      
      private function §7S§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(!(_loc8_ && _loc2_))
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         if(!_loc8_)
         {
            §§push(this.§2!>§);
            if(_loc7_)
            {
               §§push(§;7§);
               if(_loc7_ || _loc3_)
               {
                  if(§§pop() < §§pop())
                  {
                     if(_loc7_)
                     {
                        §§push(this.§2!>§);
                        §§push(§;7§);
                        if(!(_loc8_ && this))
                        {
                           §§push(§§pop() / §§pop());
                           if(_loc7_)
                           {
                              _loc2_ = Number(§§pop());
                              if(_loc7_)
                              {
                                 addr68:
                              }
                           }
                           else
                           {
                              addr206:
                              _loc2_ = §§pop();
                           }
                        }
                        else
                        {
                           addr72:
                           §§push(this.§!!§);
                           if(_loc7_ || _loc2_)
                           {
                              if(§§pop() < §§pop() + §§pop())
                              {
                                 §§push(§=%§);
                                 if(!_loc8_)
                                 {
                                    §§push(§§pop() + this.§!!§);
                                    §§push(§=%§ * 2);
                                    if(_loc7_ || _loc3_)
                                    {
                                       addr101:
                                       _loc5_ = §§pop() / §§pop();
                                       §§push(1);
                                       if(!_loc8_)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(!_loc8_)
                                             {
                                                §§push(Math.random() * _loc5_);
                                                if(!_loc8_)
                                                {
                                                   addr122:
                                                   §§push(Number(§§pop() + §§pop()));
                                                   if(!(_loc7_ || _loc3_))
                                                   {
                                                      §§goto(addr206);
                                                   }
                                                   addr207:
                                                   this.§0I§.alpha = _loc2_;
                                                   addr211:
                                                   var _loc3_:* = uint(Math.round((1 - _loc2_) * 255));
                                                   §§push(_loc3_);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() << 16);
                                                      if(!_loc8_)
                                                      {
                                                         §§push(§§pop() + (_loc3_ << 8));
                                                         if(_loc7_)
                                                         {
                                                            §§push(§§pop() + _loc3_);
                                                            if(!_loc8_)
                                                            {
                                                               §§push(uint(§§pop()));
                                                               if(_loc7_)
                                                               {
                                                                  addr240:
                                                                  _loc3_ = §§pop();
                                                                  if(_loc7_ || _loc2_)
                                                                  {
                                                                     §§push(this.§2!>§);
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        addr257:
                                                                        if(§§pop() > §=%§)
                                                                        {
                                                                           if(_loc7_)
                                                                           {
                                                                              if(§'K§.numChildren > 0)
                                                                              {
                                                                                 if(_loc6_ = §'K§.getChildAt(0) as Sprite)
                                                                                 {
                                                                                    if(_loc7_ || _loc1_)
                                                                                    {
                                                                                       _loc6_.removeChild(this.§0I§,true);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              this.§0I§ = null;
                                                                              if(_loc8_ && _loc2_)
                                                                              {
                                                                              }
                                                                              §§goto(addr328);
                                                                           }
                                                                           §§push(16777215);
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr300:
                                                                              _loc3_ = uint(§§pop());
                                                                              if(_loc7_)
                                                                              {
                                                                                 addr303:
                                                                                 §§push(this);
                                                                                 §§push(2 + 20 * Math.random());
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                 }
                                                                                 §§pop().§2!>§ = §§pop();
                                                                              }
                                                                           }
                                                                           addr328:
                                                                           var _loc4_:* = int(§'K§.numChildren - 1);
                                                                           §§goto(addr314);
                                                                        }
                                                                        addr314:
                                                                        §§goto(addr327);
                                                                     }
                                                                     addr327:
                                                                     while(_loc4_ >= 1)
                                                                     {
                                                                        _loc1_ = §'K§.getChildAt(_loc4_);
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           _loc1_.color = _loc3_;
                                                                           if(_loc8_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§push(_loc4_);
                                                                        if(!_loc8_)
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                        }
                                                                        _loc4_ = §§pop();
                                                                     }
                                                                     return;
                                                                  }
                                                                  §§goto(addr303);
                                                               }
                                                               §§goto(addr300);
                                                            }
                                                            §§goto(addr257);
                                                         }
                                                      }
                                                      §§goto(addr328);
                                                   }
                                                   §§goto(addr240);
                                                }
                                                else
                                                {
                                                   addr147:
                                                   §§push(this.§!!§);
                                                   if(!_loc8_)
                                                   {
                                                      addr156:
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc7_)
                                                      {
                                                         addr155:
                                                         §§push(§§pop() + §%T§);
                                                      }
                                                      if(§§pop() < §§pop())
                                                      {
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            addr175:
                                                            §§push(1);
                                                            §§push(this.§2!>§);
                                                            if(_loc7_ || _loc2_)
                                                            {
                                                               addr184:
                                                               §§push(§;7§);
                                                               if(_loc7_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() + this.§!!§);
                                                                  if(!_loc8_)
                                                                  {
                                                                     addr202:
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        §§push(§%T§);
                                                                     }
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc7_)
                                                                     {
                                                                        addr205:
                                                                        §§goto(addr206);
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     §§goto(addr206);
                                                                  }
                                                                  §§goto(addr202);
                                                                  §§push(§§pop() / §§pop());
                                                               }
                                                            }
                                                            §§goto(addr202);
                                                         }
                                                         §§goto(addr211);
                                                      }
                                                      §§goto(addr207);
                                                   }
                                                   §§goto(addr155);
                                                }
                                             }
                                             _loc2_ = §§pop();
                                             if(_loc7_ || _loc1_)
                                             {
                                             }
                                             §§goto(addr207);
                                          }
                                          §§goto(addr184);
                                       }
                                       §§goto(addr175);
                                       addr99:
                                    }
                                    §§goto(addr122);
                                 }
                                 §§goto(addr101);
                              }
                              else
                              {
                                 §§push(this.§2!>§);
                                 if(_loc7_)
                                 {
                                    §§push(§;7§);
                                    if(_loc7_)
                                    {
                                       §§goto(addr147);
                                    }
                                    §§goto(addr156);
                                 }
                              }
                              §§goto(addr205);
                           }
                           §§goto(addr156);
                        }
                        §§goto(addr122);
                     }
                     §§goto(addr68);
                  }
                  else
                  {
                     §§push(this.§2!>§);
                     §§push(§;7§);
                  }
                  §§goto(addr72);
               }
               §§goto(addr99);
            }
            §§goto(addr206);
         }
         §§goto(addr101);
      }
      
      private function §%]§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            if(this.§2!>§ > this.§,D§)
            {
               if(_loc1_ || this)
               {
                  if(!this.§[!§)
                  {
                     if(!_loc2_)
                     {
                        addr45:
                        §,!F§.§!!C§("Lightning04","ChannelExplosions");
                        if(_loc2_)
                        {
                        }
                        §§goto(addr54);
                     }
                  }
                  §§goto(addr54);
               }
               this.§[!§ = true;
            }
            addr54:
            return;
         }
         §§goto(addr45);
      }
   }
}
