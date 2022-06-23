package §&o§
{
   import §'j§.§3!!§;
   import §'j§.transformCoords;
   import §=!0§.§2N§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §<3§ extends DisplayObject
   {
      
      private static var §8`§:Vector3D;
      
      private static var §#w§:Point;
      
      private static var §2$§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §8`§ = new Vector3D();
            if(_loc1_)
            {
               §#w§ = new Point();
               if(!(_loc2_ && _loc1_))
               {
                  addr50:
                  §2$§ = new Matrix();
               }
               return;
            }
         }
         §§goto(addr50);
      }
      
      protected var §,Y§:§3!!§;
      
      private var §'v§:Number = 0.0;
      
      private var §>Z§:Number = 0.0;
      
      private var §2!;§:uint = 16777215;
      
      public function §<3§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            if(_loc6_)
            {
               this.§,Y§ = new §3!!§(4,param4);
               if(!_loc5_)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  if(!(_loc5_ && param3))
                  {
                     addr54:
                     this.§2!;§ = param3;
                  }
               }
               return;
            }
         }
         §§goto(addr54);
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            §§push(this.§,Y§);
            if(_loc5_ || param1)
            {
               §§pop().§5!3§(param4);
               if(_loc5_ || param3)
               {
                  §§push(this.§,Y§);
                  if(_loc5_)
                  {
                     §§push(0);
                     if(!(_loc6_ && this))
                     {
                        §§push(0);
                        if(_loc5_ || param2)
                        {
                           §§push(0);
                           if(_loc5_)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              if(!_loc6_)
                              {
                                 §§push(this.§,Y§);
                                 if(!_loc6_)
                                 {
                                    §§push(1);
                                    if(_loc5_)
                                    {
                                       §§push(param1);
                                       if(_loc5_)
                                       {
                                          §§push(0);
                                          if(_loc5_)
                                          {
                                             addr85:
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             if(_loc5_)
                                             {
                                                addr88:
                                                §§push(this.§,Y§);
                                                if(_loc5_ || param3)
                                                {
                                                   addr97:
                                                   §§push(2);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr105:
                                                      §§push(0);
                                                      if(_loc5_ || param2)
                                                      {
                                                         addr113:
                                                         §§push(param2);
                                                         if(!(_loc6_ && this))
                                                         {
                                                            §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                            if(_loc5_ || this)
                                                            {
                                                               addr156:
                                                               §§push(this.§,Y§);
                                                               if(_loc5_ || param1)
                                                               {
                                                                  addr149:
                                                                  §§push(3);
                                                                  §§push(param1);
                                                               }
                                                               §§pop().§^$§(param3);
                                                               if(!_loc6_)
                                                               {
                                                                  addr160:
                                                                  this.§'v§ = param1;
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            addr163:
                                                            this.§>Z§ = param2;
                                                            return;
                                                         }
                                                         addr151:
                                                         §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                         if(!_loc6_)
                                                         {
                                                            §§goto(addr156);
                                                            §§push(this.§,Y§);
                                                         }
                                                         §§goto(addr160);
                                                      }
                                                      §§goto(addr151);
                                                      §§push(param2);
                                                   }
                                                   §§goto(addr149);
                                                }
                                                §§goto(addr156);
                                             }
                                             §§goto(addr160);
                                          }
                                          §§goto(addr151);
                                       }
                                       §§goto(addr113);
                                    }
                                    §§goto(addr105);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr160);
                           }
                           §§goto(addr85);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr149);
                  }
                  §§goto(addr156);
               }
               §§goto(addr160);
            }
            §§goto(addr97);
         }
         §§goto(addr88);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(!_loc9_)
         {
            if(param2 == null)
            {
               addr23:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc8_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!(_loc9_ && param1))
            {
               if(param1 == this)
               {
                  if(!_loc9_)
                  {
                     addr66:
                     _loc7_ = 0;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(_loc7_);
                     if(_loc9_ && _loc3_)
                     {
                        addr260:
                        _loc7_ = §§pop();
                        if(_loc8_)
                        {
                           break;
                        }
                        break;
                     }
                     §§push(4);
                     if(!_loc9_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           param2.x = _loc3_;
                           addr414:
                        }
                        else
                        {
                           §§push(this.§,Y§);
                           if(!_loc9_)
                           {
                              §§push(_loc7_);
                              if(_loc8_)
                              {
                                 §§pop().§#!6§(§§pop(),§8`§);
                                 if(_loc8_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc8_ || this)
                                    {
                                       if(§§pop() < §8`§.x)
                                       {
                                          §§push(_loc3_);
                                          if(_loc8_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc9_ && param2))
                                             {
                                                addr115:
                                                _loc3_ = Number(§§pop());
                                                if(_loc4_ > §8`§.x)
                                                {
                                                   if(_loc8_ || param2)
                                                   {
                                                      addr142:
                                                      §§push(Number(Number(_loc4_)));
                                                      if(_loc8_)
                                                      {
                                                         _loc4_ = §§pop();
                                                         if(_loc8_ || _loc3_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(_loc8_)
                                                            {
                                                               §§push(§§pop() < §8`§.y);
                                                               if(_loc8_ || _loc3_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(Number(_loc5_));
                                                                     if(_loc8_ || param2)
                                                                     {
                                                                        addr180:
                                                                        §§push(Number(§§pop()));
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr183:
                                                                           _loc5_ = §§pop();
                                                                           if(_loc6_ > §8`§.y)
                                                                           {
                                                                              addr285:
                                                                              if(_loc8_)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 if(_loc8_ || _loc3_)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc8_ || _loc3_)
                                                                                    {
                                                                                       addr223:
                                                                                       §§push(Number(§§pop()));
                                                                                       addr207:
                                                                                    }
                                                                                    continue;
                                                                                 }
                                                                                 addr359:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() < §#w§.y);
                                                                                    if(!(_loc9_ && param2))
                                                                                    {
                                                                                       addr370:
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          addr378:
                                                                                          §§push(Number(§#w§.y));
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr379:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc5_ = §§pop();
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc6_);
                                                                                                      addr383:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() > §#w§.y);
                                                                                                         addr386:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(!_loc9_)
                                                                                                               {
                                                                                                                  addr389:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(_loc6_));
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr393:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr389:
                                                                                                               }
                                                                                                               §§goto(addr427);
                                                                                                            }
                                                                                                            §§push(Number(§#w§.y));
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc6_ = Number(§§pop());
                                                                                                               if(_loc8_ || _loc3_)
                                                                                                               {
                                                                                                                  _loc7_++;
                                                                                                                  if(!_loc9_)
                                                                                                                  {
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  §§goto(addr427);
                                                                                                               }
                                                                                                               break loop2;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr382:
                                                                                                }
                                                                                                §§goto(addr389);
                                                                                             }
                                                                                          }
                                                                                          addr378:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr374:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr378);
                                                                                                }
                                                                                             }
                                                                                             addr373:
                                                                                          }
                                                                                          §§goto(addr374);
                                                                                       }
                                                                                       addr370:
                                                                                    }
                                                                                    §§goto(addr386);
                                                                                 }
                                                                                 addr359:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc3_);
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    if(§§pop() < §#w§.x)
                                                                                    {
                                                                                       if(!_loc9_)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                addr309:
                                                                                                loop16:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc8_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc3_ = §§pop();
                                                                                                         if(_loc8_ || param2)
                                                                                                         {
                                                                                                            §§push(_loc4_);
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() > §#w§.x);
                                                                                                               addr324:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(§§pop())
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        §§push(Number(_loc4_));
                                                                                                                        if(_loc8_ || param1)
                                                                                                                        {
                                                                                                                           addr347:
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc8_ || param2)
                                                                                                                           {
                                                                                                                              _loc4_ = §§pop();
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§goto(addr359);
                                                                                                                                 §§push(_loc5_);
                                                                                                                              }
                                                                                                                              §§goto(addr370);
                                                                                                                           }
                                                                                                                           §§goto(addr379);
                                                                                                                        }
                                                                                                                        §§goto(addr359);
                                                                                                                     }
                                                                                                                     break loop16;
                                                                                                                  }
                                                                                                                  §§push(Number(§#w§.x));
                                                                                                                  if(!(_loc9_ && _loc3_))
                                                                                                                  {
                                                                                                                     §§goto(addr347);
                                                                                                                  }
                                                                                                                  §§goto(addr378);
                                                                                                                  §§goto(addr378);
                                                                                                               }
                                                                                                            }
                                                                                                            addr321:
                                                                                                         }
                                                                                                         §§goto(addr389);
                                                                                                      }
                                                                                                      addr312:
                                                                                                   }
                                                                                                   §§goto(addr378);
                                                                                                }
                                                                                                §§goto(addr437);
                                                                                                addr309:
                                                                                             }
                                                                                             §§goto(addr374);
                                                                                          }
                                                                                          §§goto(addr393);
                                                                                       }
                                                                                       §§goto(addr382);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr309);
                                                                                       §§push(Number(§#w§.x));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr309);
                                                                              }
                                                                              addr285:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§push(Number(§8`§.y));
                                                                              if(!_loc9_)
                                                                              {
                                                                                 §§goto(addr223);
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§goto(addr383);
                                                                              }
                                                                           }
                                                                           §§goto(addr383);
                                                                        }
                                                                        §§goto(addr321);
                                                                     }
                                                                     §§goto(addr183);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr180);
                                                                     §§push(Number(§8`§.y));
                                                                  }
                                                                  §§goto(addr180);
                                                               }
                                                               §§goto(addr324);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         §§goto(addr427);
                                                      }
                                                      §§goto(addr373);
                                                   }
                                                   §§goto(addr285);
                                                }
                                                else
                                                {
                                                   §§push(Number(§8`§.x));
                                                   if(!(_loc9_ && this))
                                                   {
                                                      §§goto(addr142);
                                                   }
                                                }
                                                §§goto(addr180);
                                             }
                                             §§goto(addr383);
                                          }
                                          §§goto(addr374);
                                       }
                                       else
                                       {
                                          §§push(Number(§8`§.x));
                                          if(_loc8_)
                                          {
                                             §§goto(addr115);
                                          }
                                       }
                                       §§goto(addr309);
                                    }
                                    §§goto(addr207);
                                 }
                                 break;
                              }
                              while(true)
                              {
                                 §§pop().§#!6§(§§pop(),§8`§);
                                 if(_loc8_ || this)
                                 {
                                    transformCoords(§2$§,§8`§.x,§8`§.y,§#w§);
                                    §§goto(addr285);
                                 }
                                 §§goto(addr370);
                              }
                              addr268:
                           }
                           while(true)
                           {
                              §§goto(addr268);
                           }
                           addr267:
                        }
                        §§goto(addr427);
                     }
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc9_)
                           {
                              §§goto(addr414);
                           }
                           §§goto(addr427);
                        }
                        else
                        {
                           §§goto(addr267);
                           §§push(this.§,Y§);
                        }
                        §§goto(addr427);
                     }
                  }
                  while(true)
                  {
                     §§push(_loc7_);
                     §§goto(addr410);
                  }
               }
               else
               {
                  §&M§(param1,§2$§);
                  if(!(_loc9_ && _loc3_))
                  {
                     §§push(0);
                     if(_loc8_)
                     {
                        §§goto(addr260);
                     }
                     addr410:
                     while(true)
                     {
                        §§goto(addr411);
                        continue loop0;
                     }
                     addr427:
                     param2.y = _loc5_;
                     if(!(_loc9_ && this))
                     {
                        addr437:
                        param2.width = _loc4_ - _loc3_;
                        if(_loc8_ || this)
                        {
                           param2.height = _loc6_ - _loc5_;
                        }
                     }
                     return param2;
                  }
               }
               §§goto(addr285);
            }
            §§goto(addr66);
         }
         §§goto(addr23);
      }
      
      public function §4p§(param1:int) : uint
      {
         return this.§,Y§.§+!#§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§,Y§.§[V§(param1,param2);
         }
      }
      
      public function §6!D§(param1:int) : Number
      {
         return this.§,Y§.§7Q§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§,Y§.§0z§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§2!;§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || param1)
         {
            if(this.§2!;§ != param1)
            {
               if(!_loc3_)
               {
                  addr39:
                  this.§2!;§ = param1;
                  if(!(_loc3_ && _loc2_))
                  {
                     this.§,Y§.§^$§(param1,1);
                  }
               }
            }
            return;
         }
         §§goto(addr39);
      }
      
      public function copyVertexDataTo(param1:§3!!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param3))
         {
            this.§,Y§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§2N§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            param1.batchQuad(this,param2);
         }
      }
      
      public function get useColor() : Boolean
      {
         return true;
      }
      
      public function get clippedBitmapData() : BitmapData
      {
         return null;
      }
      
      public function get initialWidth() : Number
      {
         return this.§'v§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§>Z§;
      }
   }
}
