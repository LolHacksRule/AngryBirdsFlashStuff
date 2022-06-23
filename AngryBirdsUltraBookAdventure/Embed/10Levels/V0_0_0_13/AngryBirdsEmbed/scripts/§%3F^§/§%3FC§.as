package §?^§
{
   import §&p§.§`G§;
   import §8f§.§+!A§;
   import §8f§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §?C§ extends DisplayObject
   {
      
      private static var §%!,§:Vector3D;
      
      private static var §8b§:Point;
      
      private static var §-!#§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §%!,§ = new Vector3D();
            if(!(_loc2_ && §?C§))
            {
               §8b§ = new Point();
               if(!(_loc2_ && §?C§))
               {
                  addr55:
                  §-!#§ = new Matrix();
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      protected var §5!@§:§+!A§;
      
      private var §2!B§:Number = 0.0;
      
      private var §2!0§:Number = 0.0;
      
      private var §#!A§:uint = 16777215;
      
      public function §?C§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super();
            if(_loc5_)
            {
               addr47:
               this.§5!@§ = new §+!A§(4,param4);
               if(_loc5_)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  if(_loc5_ || param2)
                  {
                     addr68:
                     this.§#!A§ = param3;
                  }
                  return;
               }
            }
            §§goto(addr68);
         }
         §§goto(addr47);
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§5!@§);
         if(!_loc6_)
         {
            §§pop().setPremultipliedAlpha(param4);
            §§push(this.§5!@§);
            if(_loc5_ || this)
            {
               §§push(0);
               if(!(_loc6_ && param3))
               {
                  §§push(0);
                  if(!(_loc6_ && param2))
                  {
                     §§push(0);
                     if(!_loc6_)
                     {
                        §§pop().setPosition(§§pop(),§§pop(),§§pop());
                        if(_loc5_)
                        {
                           §§push(this.§5!@§);
                           if(_loc5_ || param1)
                           {
                              addr72:
                              §§push(1);
                              if(_loc5_)
                              {
                                 §§push(param1);
                                 if(_loc5_ || param3)
                                 {
                                    §§push(0);
                                    if(!_loc6_)
                                    {
                                       addr86:
                                       §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                       if(_loc5_)
                                       {
                                          §§push(this.§5!@§);
                                          if(_loc5_)
                                          {
                                             addr93:
                                             §§push(2);
                                             if(_loc5_)
                                             {
                                                addr96:
                                                §§push(0);
                                                if(_loc5_ || this)
                                                {
                                                   addr104:
                                                   §§push(param2);
                                                   if(_loc5_ || param1)
                                                   {
                                                      §§goto(addr122);
                                                   }
                                                   §§goto(addr137);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§goto(addr135);
                                          }
                                          §§goto(addr134);
                                       }
                                       §§goto(addr142);
                                    }
                                    addr122:
                                    §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                    if(!_loc6_)
                                    {
                                       §§push(this.§5!@§);
                                       if(!(_loc6_ && param3))
                                       {
                                          addr137:
                                          §§pop().setPosition(3,param1,param2);
                                          addr136:
                                          addr135:
                                          addr134:
                                          if(_loc5_)
                                          {
                                             addr142:
                                             this.§5!@§.§3!>§(param3);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr142);
                                    }
                                    this.§2!B§ = param1;
                                    this.§2!0§ = param2;
                                    addr150:
                                    return;
                                 }
                                 §§goto(addr104);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr142);
                        }
                        §§goto(addr137);
                     }
                     §§goto(addr86);
                  }
                  §§goto(addr137);
               }
               §§goto(addr96);
            }
            §§goto(addr72);
         }
         §§goto(addr93);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(!(_loc8_ && param1))
         {
            if(param2 == null)
            {
               addr29:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc8_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc8_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               if(param1 == this)
               {
                  if(!_loc8_)
                  {
                     addr72:
                     _loc7_ = 0;
                  }
                  do
                  {
                     §§push(_loc7_);
                     if(_loc8_ && this)
                     {
                        addr268:
                        _loc7_ = §§pop();
                        break;
                     }
                     §§push(4);
                     if(!_loc8_)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(_loc9_ || param2)
                           {
                              addr436:
                              param2.x = _loc3_;
                              param2.y = _loc5_;
                              if(_loc9_)
                              {
                                 addr444:
                                 param2.width = _loc4_ - _loc3_;
                              }
                              §§goto(addr449);
                           }
                           addr369:
                           loop15:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!(_loc8_ && this))
                              {
                                 §§push(Number(§§pop()));
                                 if(!(_loc8_ && param1))
                                 {
                                    loop9:
                                    while(true)
                                    {
                                       loop6:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          if(!_loc8_)
                                          {
                                             _loc5_ = §§pop();
                                             if(_loc9_ || param2)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc6_);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      if(§§pop() <= §8b§.y)
                                                      {
                                                         §§push(Number(§8b§.y));
                                                         loop7:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr429:
                                                            while(true)
                                                            {
                                                               _loc6_ = §§pop();
                                                               _loc7_++;
                                                               if(_loc9_)
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc7_);
                                                                     addr434:
                                                                     loop1:
                                                                     while(true)
                                                                     {
                                                                        §§push(4);
                                                                        addr435:
                                                                        while(§§pop() < §§pop())
                                                                        {
                                                                           §§push(this.§5!@§);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              addr274:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§"[§(§§pop(),§%!,§);
                                                                                 if(!(_loc9_ || _loc3_))
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 transformCoords(§-!#§,§%!,§.x,§%!,§.y,§8b§);
                                                                                 if(_loc8_ && param2)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(_loc8_ && param2)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§push(§§pop() < §8b§.x);
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       §§push(_loc3_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          addr318:
                                                                                          while(true)
                                                                                          {
                                                                                             _loc3_ = Number(§§pop());
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§push(§§pop() > §8b§.x);
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            addr358:
                                                                                                            §§push(Number(_loc4_));
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  addr346:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        continue loop11;
                                                                                                                     }
                                                                                                                     _loc4_ = §§pop();
                                                                                                                     if(_loc8_ && this)
                                                                                                                     {
                                                                                                                        break loop1;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr335:
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(§§pop() >= §8b§.y)
                                                                                                               {
                                                                                                                  §§push(Number(§8b§.y));
                                                                                                                  if(!(_loc8_ && param1))
                                                                                                                  {
                                                                                                                     continue loop6;
                                                                                                                  }
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                               if(_loc9_ || this)
                                                                                                               {
                                                                                                                  continue loop15;
                                                                                                               }
                                                                                                               addr412:
                                                                                                               addr412:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(_loc6_));
                                                                                                                  addr414:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     continue loop7;
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr358:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§goto(addr358);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(Number(§8b§.x));
                                                                                                         if(!(_loc8_ && param2))
                                                                                                         {
                                                                                                            §§goto(addr346);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr414);
                                                                                                   }
                                                                                                   addr328:
                                                                                                }
                                                                                                §§goto(addr358);
                                                                                             }
                                                                                             break loop16;
                                                                                          }
                                                                                       }
                                                                                       addr311:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(Number(§8b§.x));
                                                                                       if(_loc9_)
                                                                                       {
                                                                                          §§goto(addr318);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr335);
                                                                                 }
                                                                              }
                                                                           }
                                                                           addr449:
                                                                           param2.height = _loc6_ - _loc5_;
                                                                           return param2;
                                                                        }
                                                                        break;
                                                                     }
                                                                     §§goto(addr436);
                                                                  }
                                                                  addr433:
                                                               }
                                                               break loop6;
                                                            }
                                                         }
                                                         addr428:
                                                      }
                                                      §§goto(addr412);
                                                   }
                                                }
                                                addr407:
                                             }
                                             §§goto(addr436);
                                          }
                                          §§goto(addr429);
                                       }
                                       §§goto(addr444);
                                    }
                                    addr385:
                                 }
                                 §§goto(addr428);
                              }
                              §§goto(addr385);
                           }
                           addr369:
                           §§goto(addr444);
                        }
                        else
                        {
                           §§push(this.§5!@§);
                           if(_loc9_ || param1)
                           {
                              §§push(_loc7_);
                              if(_loc9_ || _loc3_)
                              {
                                 §§pop().§"[§(§§pop(),§%!,§);
                                 if(!_loc8_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc9_ || param2)
                                    {
                                       if(§§pop() < §%!,§.x)
                                       {
                                          §§push(Number(_loc3_));
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             addr129:
                                             §§push(Number(§§pop()));
                                             if(!_loc8_)
                                             {
                                                _loc3_ = §§pop();
                                                §§push(_loc4_);
                                                if(_loc9_)
                                                {
                                                   if(§§pop() > §%!,§.x)
                                                   {
                                                      if(_loc9_ || param1)
                                                      {
                                                         addr160:
                                                         _loc4_ = Number(Number(_loc4_));
                                                      }
                                                      §§push(_loc5_);
                                                      if(!_loc8_)
                                                      {
                                                         addr165:
                                                         §§push(§§pop() < §%!,§.y);
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(_loc8_)
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(_loc5_);
                                                               if(!(_loc8_ && param2))
                                                               {
                                                                  addr191:
                                                                  _loc5_ = Number(Number(§§pop()));
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(_loc6_);
                                                                  }
                                                                  §§goto(addr369);
                                                               }
                                                               §§push(§§pop() > §%!,§.y);
                                                               if(_loc9_)
                                                               {
                                                                  if(§§pop())
                                                                  {
                                                                     §§push(Number(_loc6_));
                                                                     if(_loc9_)
                                                                     {
                                                                        addr210:
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(!(_loc8_ && this))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr412);
                                                                        }
                                                                        §§goto(addr358);
                                                                     }
                                                                     §§goto(addr311);
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr210);
                                                                     §§push(Number(§%!,§.y));
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr191);
                                                               §§push(Number(§%!,§.y));
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   else
                                                   {
                                                      §§push(Number(§%!,§.x));
                                                      if(_loc9_ || param1)
                                                      {
                                                         §§goto(addr160);
                                                      }
                                                   }
                                                   §§goto(addr165);
                                                }
                                                §§goto(addr346);
                                             }
                                          }
                                          §§goto(addr160);
                                       }
                                       else
                                       {
                                          §§push(Number(§%!,§.x));
                                          if(!(_loc8_ && param2))
                                          {
                                             §§goto(addr129);
                                          }
                                       }
                                       §§goto(addr414);
                                    }
                                    §§goto(addr210);
                                 }
                                 §§goto(addr369);
                              }
                              §§goto(addr274);
                           }
                        }
                        §§goto(addr273);
                     }
                     §§goto(addr435);
                  }
                  while(_loc7_++, _loc9_);
                  
                  §§goto(addr433);
               }
               else
               {
                  §<^§(param1,§-!#§);
                  if(_loc9_)
                  {
                     §§push(0);
                     if(_loc9_)
                     {
                        §§goto(addr268);
                     }
                     §§goto(addr434);
                  }
               }
               §§goto(addr407);
            }
            §§goto(addr72);
         }
         §§goto(addr29);
      }
      
      public function § Z§(param1:int) : uint
      {
         return this.§5!@§.§3,§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§5!@§.§<+§(param1,param2);
         }
      }
      
      public function § w§(param1:int) : Number
      {
         return this.§5!@§.§=1§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§5!@§.§`!'§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§#!A§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§#!A§ != param1)
            {
               if(_loc2_ || param1)
               {
                  this.§#!A§ = param1;
                  if(_loc2_ || _loc2_)
                  {
                     addr49:
                     this.§5!@§.§3!>§(param1,1);
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function copyVertexDataTo(param1:§+!A§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§5!@§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§`G§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
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
         return this.§2!B§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§2!0§;
      }
   }
}
