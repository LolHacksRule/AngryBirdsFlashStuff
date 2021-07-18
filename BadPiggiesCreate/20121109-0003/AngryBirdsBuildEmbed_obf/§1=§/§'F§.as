package §1=§
{
   import §-!`§.§8!p§;
   import §-!`§.DisplayObject;
   import §-!`§.Sprite;
   import §1?§.§+!§;
   import §=U§.§3p§;
   import flash.geom.Rectangle;
   
   public class §'F§ extends §-d§
   {
      
      private static const §[5§:Number = 2.5;
      
      private static const §@!S§:Number = 0.15;
      
      private static const §;Y§:Number = 0.25;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || §'F§)
         {
            §[5§ = 2.5;
            if(!(_loc1_ && _loc1_))
            {
               §@!S§ = 0.15;
               if(!(_loc1_ && _loc2_))
               {
                  addr54:
                  §;Y§ = 0.25;
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      private var §#F§:Number;
      
      private var §^V§:Number;
      
      private var §#K§:§8!p§;
      
      private var §5!7§:Boolean;
      
      private var §#y§:Number;
      
      public function §'F§(param1:String, param2:Number, param3:§3p§, param4:Number)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            super(param1,param2,param3,param4);
            if(_loc6_)
            {
               addr42:
               §§push(this);
               §§push(3 + Math.random() * 3);
               if(!(_loc5_ && param3))
               {
                  §§push(-§§pop());
               }
               §§pop().§#F§ = §§pop();
            }
            return;
         }
         §§goto(addr42);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && this))
         {
            super.dispose();
         }
      }
      
      override public function update(param1:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:Sprite = null;
         §§push(this.§#K§);
         if(!(_loc4_ && _loc3_))
         {
            if(§§pop() == null)
            {
               if(_loc3_)
               {
                  if(this.§#F§ > 0)
                  {
                     if(!_loc4_)
                     {
                        this.§^!,§();
                        if(_loc3_)
                        {
                           addr75:
                           this.§<0§();
                           if(_loc4_)
                           {
                           }
                           return;
                           addr52:
                        }
                        §§goto(addr75);
                     }
                     addr79:
                     §§push(this);
                     §§push(this.§#F§);
                     if(!_loc4_)
                     {
                        §§push(param1);
                        if(!(_loc4_ && param1))
                        {
                           §§push(§§pop() / 1000);
                        }
                        §§push(§§pop() + §§pop());
                     }
                     §§pop().§#F§ = §§pop();
                     §§goto(addr75);
                  }
                  §§goto(addr52);
               }
               §§goto(addr75);
            }
            else
            {
               addr55:
               if(this.§#K§)
               {
                  if(!(_loc4_ && this))
                  {
                     this.§ !,§();
                     §§goto(addr75);
                  }
                  §§goto(addr79);
               }
            }
            §§goto(addr75);
         }
         §§goto(addr55);
      }
      
      private function §^!,§() : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:Rectangle = null;
         var _loc1_:Sprite = null;
         if(!(_loc3_ && _loc1_))
         {
            if(§?[§.numChildren > 0)
            {
               addr34:
               _loc1_ = §?[§.getChildAt(0) as Sprite;
               if(_loc1_)
               {
                  _loc2_ = _loc1_.getBounds(_loc1_);
                  if(!_loc3_)
                  {
                     this.§#K§ = new §8!p§(_loc2_.width,_loc2_.height,16777215);
                     if(_loc4_)
                     {
                        §§push(this.§#K§);
                        if(!_loc3_)
                        {
                           §§pop().x = _loc2_.left;
                           if(!(_loc3_ && _loc3_))
                           {
                              §§push(this.§#K§);
                              if(_loc4_ || _loc2_)
                              {
                                 addr94:
                                 §§pop().y = _loc2_.top;
                                 addr109:
                                 if(!_loc3_)
                                 {
                                    §§push(this.§#K§);
                                 }
                                 this.§#F§ = 0;
                                 if(_loc4_)
                                 {
                                    if(Math.random() < 0.25)
                                    {
                                       this.§^V§ = 1 + Math.random() * (§[5§ - 1);
                                       if(!_loc3_)
                                       {
                                          addr168:
                                          §§push(this);
                                          §§push(0.2);
                                          if(_loc4_ || this)
                                          {
                                             §§push(§§pop() + Math.random() * 2);
                                          }
                                          §§pop().§#y§ = §§pop();
                                          addr129:
                                       }
                                       this.§5!7§ = false;
                                    }
                                    else
                                    {
                                       §§push(this);
                                       §§push(0.3);
                                       if(_loc4_ || _loc2_)
                                       {
                                          §§push(Math.random() * (§[5§ - 0.3));
                                          if(!(_loc3_ && _loc3_))
                                          {
                                             §§push(§§pop() * 0.3);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§pop().§^V§ = §§pop();
                                       if(_loc4_)
                                       {
                                          §§goto(addr168);
                                       }
                                    }
                                    §§goto(addr186);
                                 }
                                 §§goto(addr129);
                              }
                              §§pop().alpha = 0;
                              if(!_loc4_)
                              {
                              }
                              §§goto(addr109);
                           }
                           _loc1_.addChild(this.§#K§);
                           §§goto(addr109);
                        }
                        §§goto(addr94);
                     }
                  }
               }
               §§goto(addr94);
            }
            addr186:
            return;
         }
         §§goto(addr34);
      }
      
      private function § !,§() : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc6_:Sprite = null;
         var _loc1_:DisplayObject = null;
         §§push(0);
         if(_loc7_)
         {
            §§push(Number(§§pop()));
         }
         var _loc2_:* = §§pop();
         §§push(this.§#F§);
         if(_loc7_)
         {
            if(§§pop() < §@!S§)
            {
               if(!(_loc8_ && _loc3_))
               {
                  addr44:
                  §§push(this.§#F§ / §@!S§);
                  if(_loc7_ || this)
                  {
                     §§push(Number(§§pop()));
                     if(_loc7_ || _loc2_)
                     {
                        _loc2_ = §§pop();
                        if(_loc7_)
                        {
                           addr234:
                           this.§#K§.alpha = _loc2_;
                        }
                        else
                        {
                           addr116:
                           §§push(1);
                           if(!_loc8_)
                           {
                              §§push(_loc5_);
                              if(!(_loc8_ && _loc1_))
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    addr135:
                                    §§push(§§pop() + Math.random() * _loc5_);
                                    if(_loc7_)
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc7_ || _loc1_)
                                       {
                                          addr150:
                                          _loc2_ = §§pop();
                                          §§goto(addr234);
                                       }
                                       addr238:
                                       var _loc3_:* = uint(Math.round((1 - _loc2_) * 255));
                                       if(_loc7_ || this)
                                       {
                                          §§push(_loc3_);
                                          if(_loc7_)
                                          {
                                             §§push(§§pop() << 16);
                                             if(!_loc8_)
                                             {
                                                §§push(§§pop() + (_loc3_ << 8));
                                                if(_loc7_ || this)
                                                {
                                                   §§push(§§pop() + _loc3_);
                                                   if(!_loc8_)
                                                   {
                                                      §§push(uint(§§pop()));
                                                      if(_loc7_)
                                                      {
                                                         _loc3_ = §§pop();
                                                         §§push(this.§#F§);
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            if(§§pop() > §[5§)
                                                            {
                                                               if(§?[§.numChildren > 0)
                                                               {
                                                                  if(_loc7_ || _loc1_)
                                                                  {
                                                                     if(_loc6_ = §?[§.getChildAt(0) as Sprite)
                                                                     {
                                                                        if(_loc7_)
                                                                        {
                                                                           _loc6_.removeChild(this.§#K§,true);
                                                                           addr318:
                                                                           this.§#K§ = null;
                                                                           if(_loc7_)
                                                                           {
                                                                              §§goto(addr323);
                                                                           }
                                                                           §§goto(addr335);
                                                                        }
                                                                     }
                                                                     §§goto(addr318);
                                                                  }
                                                                  addr323:
                                                                  §§push(16777215);
                                                                  if(!(_loc8_ && _loc1_))
                                                                  {
                                                                     addr332:
                                                                     _loc3_ = uint(§§pop());
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr335:
                                                                        §§push(this);
                                                                        §§push(2 + 20 * Math.random());
                                                                        if(_loc7_ || _loc1_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                        }
                                                                        §§pop().§#F§ = §§pop();
                                                                        addr351:
                                                                        §§push(int(§?[§.numChildren - 1));
                                                                     }
                                                                     §§goto(addr351);
                                                                  }
                                                                  var _loc4_:* = §§pop();
                                                                  while(_loc4_ >= 1)
                                                                  {
                                                                     _loc1_ = §?[§.getChildAt(_loc4_);
                                                                     if(_loc7_ || _loc2_)
                                                                     {
                                                                        _loc1_.color = _loc3_;
                                                                        if(_loc7_ || this)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc7_)
                                                                           {
                                                                              §§push(§§pop() - 1);
                                                                           }
                                                                           _loc4_ = §§pop();
                                                                        }
                                                                     }
                                                                  }
                                                                  return;
                                                               }
                                                               §§goto(addr318);
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                      }
                                                      §§goto(addr332);
                                                   }
                                                }
                                                §§goto(addr335);
                                             }
                                          }
                                          §§goto(addr332);
                                       }
                                       §§goto(addr335);
                                    }
                                    §§goto(addr150);
                                 }
                              }
                              else
                              {
                                 addr204:
                                 §§push(§@!S§);
                                 if(!(_loc8_ && this))
                                 {
                                    §§push(§§pop() + this.§^V§);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() - §§pop());
                                       if(_loc7_)
                                       {
                                          addr221:
                                          §§push(§§pop() / §;Y§);
                                       }
                                       §§push(§§pop() - §§pop());
                                       if(!(_loc8_ && _loc2_))
                                       {
                                          addr231:
                                          _loc2_ = Number(§§pop());
                                          if(!_loc8_)
                                          {
                                             §§goto(addr234);
                                          }
                                          §§goto(addr238);
                                       }
                                       §§goto(addr231);
                                    }
                                 }
                                 §§goto(addr221);
                              }
                              §§goto(addr231);
                           }
                           else
                           {
                              addr195:
                              §§push(this.§#F§);
                              if(_loc7_ || _loc3_)
                              {
                                 §§goto(addr204);
                              }
                           }
                           §§goto(addr221);
                        }
                        §§goto(addr238);
                     }
                     else
                     {
                        addr69:
                        §§push(§@!S§);
                        if(!_loc8_)
                        {
                           §§push(this.§^V§);
                           if(!(_loc8_ && this))
                           {
                              if(§§pop() < §§pop() + §§pop())
                              {
                                 §§push(§[5§);
                                 if(_loc7_ || this)
                                 {
                                    §§push(§§pop() + this.§^V§);
                                    §§push(§[5§);
                                    if(_loc7_)
                                    {
                                       §§push(§§pop() * 2);
                                       if(!(_loc8_ && _loc1_))
                                       {
                                          §§push(Number(§§pop() / §§pop()));
                                          if(_loc7_ || _loc2_)
                                          {
                                             _loc5_ = §§pop();
                                             §§goto(addr116);
                                          }
                                          §§goto(addr135);
                                       }
                                       else
                                       {
                                          addr162:
                                          §§push(this.§^V§);
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(_loc7_)
                                             {
                                                addr174:
                                                §§push(§§pop() + §;Y§);
                                             }
                                             if(§§pop() < §§pop())
                                             {
                                                if(!(_loc8_ && _loc2_))
                                                {
                                                   addr194:
                                                   §§goto(addr195);
                                                   §§push(1);
                                                }
                                                §§goto(addr238);
                                             }
                                             §§goto(addr234);
                                          }
                                       }
                                       §§goto(addr234);
                                    }
                                    §§goto(addr174);
                                 }
                                 §§goto(addr150);
                              }
                              else
                              {
                                 §§push(this.§#F§);
                                 §§push(§@!S§);
                                 if(!(_loc8_ && _loc2_))
                                 {
                                    §§goto(addr162);
                                 }
                                 §§goto(addr174);
                              }
                           }
                        }
                        §§goto(addr174);
                     }
                  }
                  §§goto(addr150);
               }
               §§goto(addr194);
            }
            else
            {
               §§push(this.§#F§);
               if(_loc7_)
               {
                  §§goto(addr69);
               }
            }
            §§goto(addr150);
         }
         §§goto(addr44);
      }
      
      private function §<0§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            if(this.§#F§ > this.§#y§)
            {
               if(_loc2_)
               {
                  §§goto(addr36);
               }
            }
            §§goto(addr46);
         }
         addr36:
         if(!this.§5!7§)
         {
            if(!(_loc1_ && _loc2_))
            {
               addr46:
               §+!§.§&!b§("Lightning04","ChannelExplosions");
               if(_loc1_)
               {
               }
               §§goto(addr55);
            }
            this.§5!7§ = true;
            §§goto(addr55);
         }
         addr55:
      }
   }
}
