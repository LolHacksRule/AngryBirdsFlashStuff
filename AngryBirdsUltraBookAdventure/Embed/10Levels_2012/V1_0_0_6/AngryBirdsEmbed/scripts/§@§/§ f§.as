package §@§
{
   import §#h§.§ !H§;
   import §,_§.§-!!§;
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §5`§.§?y§;
   import flash.geom.Rectangle;
   
   public class § f§ extends §5r§
   {
      
      private static const §8!5§:Number = 2.5;
      
      private static const §]f§:Number = 0.15;
      
      private static const §&-§:Number = 0.25;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || § f§)
         {
            §8!5§ = 2.5;
            if(_loc2_ || _loc2_)
            {
               addr44:
               §]f§ = 0.15;
               if(_loc2_)
               {
                  §&-§ = 0.25;
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      private var §1! §:Number;
      
      private var §76§:Number;
      
      private var §2%§:§-!!§;
      
      private var §6^§:Boolean;
      
      private var §7!'§:Number;
      
      public function § f§(param1:String, param2:Number, param3:§?y§, param4:Number)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            super(param1,param2,param3,param4);
            if(!(_loc6_ && this))
            {
               addr46:
               §§push(this);
               §§push(3 + Math.random() * 3);
               if(_loc5_)
               {
                  §§push(-§§pop());
               }
               §§pop().§1! § = §§pop();
            }
            return;
         }
         §§goto(addr46);
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
         if(_loc4_)
         {
            §§push(this.§2%§);
            if(!(_loc3_ && _loc2_))
            {
               if(§§pop() == null)
               {
                  if(!(_loc3_ && this))
                  {
                     if(this.§1! § > 0)
                     {
                        if(_loc3_)
                        {
                        }
                        §§goto(addr90);
                     }
                     §§goto(addr65);
                  }
                  this.§@!A§();
                  if(!(_loc3_ && _loc3_))
                  {
                     addr65:
                  }
                  §§goto(addr90);
               }
               else
               {
                  addr68:
                  if(this.§2%§)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        this.§6E§();
                        if(!_loc3_)
                        {
                           §§goto(addr90);
                        }
                        §§goto(addr94);
                     }
                     §§goto(addr90);
                  }
               }
               addr90:
               this.§!;§();
               if(_loc4_)
               {
                  addr94:
                  §§push(this);
                  §§push(this.§1! §);
                  if(!_loc3_)
                  {
                     §§push(param1);
                     if(_loc4_ || _loc2_)
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§pop().§1! § = §§pop();
               }
               return;
            }
            §§goto(addr68);
         }
         §§goto(addr65);
      }
      
      private function §@!A§() : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!(_loc4_ && _loc2_))
         {
            if(§7s§.numChildren > 0)
            {
               addr33:
               _loc1_ = §7s§.getChildAt(0) as Sprite;
               if(!(_loc4_ && _loc1_))
               {
                  if(_loc1_)
                  {
                     if(_loc3_)
                     {
                        _loc2_ = _loc1_.getBounds(_loc1_);
                        if(!(_loc4_ && _loc1_))
                        {
                           this.§2%§ = new §-!!§(_loc2_.width,_loc2_.height,16777215);
                           if(!(_loc4_ && _loc2_))
                           {
                              §§push(this.§2%§);
                              if(!(_loc4_ && _loc2_))
                              {
                                 §§pop().x = _loc2_.left;
                                 if(_loc3_ || this)
                                 {
                                    §§push(this.§2%§);
                                    if(!_loc4_)
                                    {
                                       §§pop().y = _loc2_.top;
                                       if(_loc3_ || this)
                                       {
                                          addr124:
                                          this.§2%§.alpha = 0;
                                          addr122:
                                          if(_loc4_ && _loc1_)
                                          {
                                          }
                                          §§goto(addr137);
                                       }
                                       _loc1_.addChild(this.§2%§);
                                       addr137:
                                       this.§1! § = 0;
                                       if(Math.random() < 0.25)
                                       {
                                          this.§76§ = 1 + Math.random() * (§8!5§ - 1);
                                       }
                                       else
                                       {
                                          §§push(this);
                                          §§push(0.3);
                                          if(_loc3_)
                                          {
                                             §§push(Math.random() * (§8!5§ - 0.3));
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop() * 0.3);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§pop().§76§ = §§pop();
                                       }
                                       §§goto(addr185);
                                    }
                                 }
                                 §§goto(addr122);
                              }
                              §§goto(addr124);
                           }
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr185);
                  }
                  §§goto(addr124);
               }
            }
            addr185:
            §§push(this);
            §§push(0.2);
            if(_loc3_ || _loc3_)
            {
               §§push(§§pop() + Math.random() * 2);
            }
            §§pop().§7!'§ = §§pop();
            this.§6^§ = false;
            return;
         }
         §§goto(addr33);
      }
      
      private function §6E§() : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:Number = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(_loc8_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§1! §);
         §§push(§]f§);
         if(_loc8_ || _loc2_)
         {
            if(§§pop() < §§pop())
            {
               §§push(Number(this.§1! § / §]f§));
               if(_loc8_)
               {
                  _loc2_ = §§pop();
                  addr195:
                  this.§2%§.alpha = _loc2_;
               }
               else
               {
                  addr126:
                  _loc2_ = §§pop();
                  if(!_loc7_)
                  {
                     §§goto(addr195);
                  }
                  else
                  {
                     addr152:
                     §§push(1);
                     §§push(this.§1! §);
                     if(_loc8_ || _loc1_)
                     {
                        §§push(§]f§);
                        if(!(_loc7_ && _loc1_))
                        {
                           §§push(§§pop() + this.§76§);
                           if(_loc8_)
                           {
                              §§goto(addr190);
                           }
                        }
                        §§push(§§pop() / §§pop());
                     }
                     §§goto(addr190);
                  }
               }
               addr190:
               §§goto(addr191);
            }
            else
            {
               §§push(this.§1! §);
               if(!_loc7_)
               {
                  §§push(§]f§);
                  §§push(this.§76§);
                  if(!_loc7_)
                  {
                     §§push(§§pop() + §§pop());
                     if(!(_loc7_ && this))
                     {
                        if(§§pop() < §§pop())
                        {
                           if(!_loc7_)
                           {
                              §§push(§8!5§ + this.§76§);
                              §§push(§8!5§);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§goto(addr84);
                              }
                              §§goto(addr117);
                           }
                           §§goto(addr190);
                        }
                        else
                        {
                           §§push(this.§1! §);
                        }
                        §§goto(addr132);
                     }
                  }
                  §§goto(addr148);
               }
               §§goto(addr125);
            }
         }
         addr84:
         §§push(§§pop() / (§§pop() * 2));
         if(_loc8_ || _loc1_)
         {
            _loc5_ = §§pop();
            §§push(1);
            if(_loc8_ || this)
            {
               §§push(_loc5_);
               if(!_loc7_)
               {
                  §§push(§§pop() - §§pop());
                  if(!(_loc7_ && this))
                  {
                     addr117:
                     §§push(§§pop() + Math.random() * _loc5_);
                     if(_loc8_ || this)
                     {
                        addr125:
                        §§goto(addr126);
                        §§push(Number(§§pop()));
                     }
                     else
                     {
                        addr132:
                        §§push(§]f§);
                        if(_loc8_ || _loc2_)
                        {
                           §§push(this.§76§);
                           if(_loc8_)
                           {
                              §§push(§§pop() + §§pop());
                              if(_loc8_)
                              {
                                 addr148:
                                 §§push(§§pop() + §&-§);
                              }
                           }
                           §§goto(addr148);
                        }
                        if(§§pop() < §§pop())
                        {
                           if(!_loc7_)
                           {
                              §§goto(addr152);
                           }
                        }
                     }
                     §§goto(addr195);
                  }
                  §§goto(addr132);
               }
               §§goto(addr188);
            }
            §§goto(addr152);
         }
         addr191:
         §§push(§§pop() - §§pop());
         if(!_loc7_)
         {
            addr188:
            §§push(§&-§);
         }
         _loc2_ = Number(§§pop() - §§pop());
         if(!_loc7_)
         {
            §§goto(addr195);
         }
         var _loc3_:* = uint(Math.round((1 - _loc2_) * 255));
         if(!_loc7_)
         {
            §§push(_loc3_);
            if(!_loc7_)
            {
               §§push(§§pop() << 16);
               if(_loc8_)
               {
                  §§push(§§pop() + (_loc3_ << 8));
                  if(_loc8_ || _loc3_)
                  {
                     §§push(§§pop() + _loc3_);
                     if(_loc8_)
                     {
                        §§push(uint(§§pop()));
                        if(!_loc7_)
                        {
                           _loc3_ = §§pop();
                           if(_loc8_ || this)
                           {
                              §§push(this.§1! §);
                              if(_loc8_ || _loc2_)
                              {
                                 if(§§pop() > §8!5§)
                                 {
                                    §§goto(addr254);
                                 }
                              }
                              §§goto(addr298);
                           }
                           §§goto(addr287);
                        }
                        §§goto(addr286);
                     }
                  }
                  §§goto(addr286);
               }
               §§goto(addr285);
            }
            §§goto(addr286);
         }
         addr254:
         if(§7s§.numChildren > 0)
         {
            if(_loc6_ = §7s§.getChildAt(0) as Sprite)
            {
               if(_loc8_ || this)
               {
                  _loc6_.removeChild(this.§2%§,true);
               }
            }
         }
         this.§2%§ = null;
         §§push(16777215);
         if(_loc8_)
         {
            addr286:
            _loc3_ = uint(§§pop());
            addr287:
            §§push(this);
            §§push(2 + 20 * Math.random());
            if(_loc8_)
            {
               §§push(-§§pop());
            }
            §§pop().§1! § = §§pop();
            addr298:
            §§push(int(§7s§.numChildren - 1));
            addr285:
         }
         var _loc4_:* = §§pop();
         while(_loc4_ >= 1)
         {
            _loc1_ = §7s§.getChildAt(_loc4_);
            if(!(_loc7_ && this))
            {
               _loc1_.color = _loc3_;
               if(_loc8_)
               {
                  §§push(_loc4_);
                  if(_loc8_ || _loc1_)
                  {
                     §§push(§§pop() - 1);
                  }
                  _loc4_ = §§pop();
               }
            }
         }
      }
      
      private function §!;§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || this)
         {
            if(this.§1! § > this.§7!'§)
            {
               if(_loc1_)
               {
                  if(!this.§6^§)
                  {
                     if(!(_loc2_ && _loc1_))
                     {
                        § !H§.§]p§("Lightning04","ChannelExplosions");
                        if(!(_loc2_ && _loc2_))
                        {
                           this.§6^§ = true;
                        }
                     }
                  }
               }
            }
         }
      }
   }
}
