package §,_§
{
   import §,G§.§ u§;
   import §,G§.transformCoords;
   import §catch§.§'d§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §-!!§ extends DisplayObject
   {
      
      private static var §`?§:Vector3D;
      
      private static var §2j§:Point;
      
      private static var §!!G§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || §-!!§)
         {
            §`?§ = new Vector3D();
            if(!(_loc2_ && _loc2_))
            {
               §2j§ = new Point();
               if(!(_loc2_ && _loc1_))
               {
                  addr55:
                  §!!G§ = new Matrix();
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      protected var § !!§:§ u§;
      
      private var §8!?§:Number = 0.0;
      
      private var §=!8§:Number = 0.0;
      
      private var §&!C§:uint = 16777215;
      
      public function §-!!§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            super();
            if(_loc5_ || param2)
            {
               this.§ !!§ = new § u§(4,param4);
               if(!(_loc6_ && param3))
               {
                  addr65:
                  this.updateVertexData(param1,param2,param3,param4);
                  if(!(_loc6_ && param1))
                  {
                     addr78:
                     this.§&!C§ = param3;
                  }
               }
               return;
            }
            §§goto(addr65);
         }
         §§goto(addr78);
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            §§push(this.§ !!§);
            if(!(_loc6_ && param2))
            {
               §§pop().setPremultipliedAlpha(param4);
               if(_loc5_ || this)
               {
                  §§push(this.§ !!§);
                  if(_loc5_)
                  {
                     §§push(0);
                     if(_loc5_)
                     {
                        §§push(0);
                        if(!_loc6_)
                        {
                           §§push(0);
                           if(_loc5_ || param1)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              addr55:
                              §§push(this.§ !!§);
                              if(!(_loc6_ && param1))
                              {
                                 §§push(1);
                                 if(!(_loc6_ && this))
                                 {
                                    §§push(param1);
                                    if(!(_loc6_ && param2))
                                    {
                                       §§push(0);
                                       if(_loc5_ || this)
                                       {
                                          addr98:
                                          §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                          §§push(this.§ !!§);
                                          if(_loc5_ || param1)
                                          {
                                             addr108:
                                             §§push(2);
                                             if(_loc5_ || param3)
                                             {
                                                §§push(0);
                                                if(_loc5_)
                                                {
                                                   §§push(param2);
                                                   if(!(_loc6_ && this))
                                                   {
                                                      addr137:
                                                      §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                      §§goto(addr148);
                                                   }
                                                   §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                   addr148:
                                                   §§push(this.§ !!§);
                                                   if(_loc5_)
                                                   {
                                                      addr144:
                                                      §§push(3);
                                                      §§push(param1);
                                                      §§push(param2);
                                                   }
                                                   §§pop().§'!1§(param3);
                                                   if(_loc5_)
                                                   {
                                                      this.§8!?§ = param1;
                                                      if(_loc5_)
                                                      {
                                                         addr157:
                                                         this.§=!8§ = param2;
                                                      }
                                                   }
                                                   return;
                                                   §§push(this.§ !!§);
                                                }
                                             }
                                          }
                                          §§goto(addr144);
                                       }
                                       §§goto(addr137);
                                    }
                                 }
                                 §§goto(addr144);
                              }
                              §§goto(addr137);
                           }
                           §§goto(addr98);
                        }
                     }
                     §§goto(addr144);
                  }
                  §§goto(addr108);
               }
               §§goto(addr55);
            }
            §§goto(addr137);
         }
         §§goto(addr157);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:* = 0;
         if(_loc8_)
         {
            if(param2 == null)
            {
               addr23:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc9_ && _loc3_))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(_loc8_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_ || this)
            {
               if(param1 == this)
               {
                  if(_loc8_ || _loc3_)
                  {
                     _loc7_ = 0;
                     addr78:
                     loop2:
                     while(true)
                     {
                        §§push(_loc7_);
                        if(_loc8_ || param1)
                        {
                           §§push(4);
                           if(_loc8_ || this)
                           {
                              if(§§pop() < §§pop())
                              {
                                 §§push(this.§ !!§);
                                 if(!_loc9_)
                                 {
                                    §§push(_loc7_);
                                    if(_loc8_ || this)
                                    {
                                       §§pop().§4G§(§§pop(),§`?§);
                                       if(_loc8_ || param2)
                                       {
                                          if(_loc3_ < §`?§.x)
                                          {
                                             §§push(Number(_loc3_));
                                             if(_loc8_ || this)
                                             {
                                                addr119:
                                                §§push(Number(§§pop()));
                                                if(_loc8_)
                                                {
                                                   _loc3_ = §§pop();
                                                   if(!_loc9_)
                                                   {
                                                      §§push(_loc4_);
                                                      if(!(_loc9_ && _loc3_))
                                                      {
                                                         if(§§pop() > §`?§.x)
                                                         {
                                                            addr150:
                                                            §§push(Number(Number(_loc4_)));
                                                            if(!(_loc9_ && param2))
                                                            {
                                                               _loc4_ = §§pop();
                                                               §§push(_loc5_);
                                                               if(_loc8_)
                                                               {
                                                                  §§push(§§pop() < §`?§.y);
                                                                  if(_loc8_)
                                                                  {
                                                                     if(§§pop())
                                                                     {
                                                                        §§push(_loc5_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr177:
                                                                           _loc5_ = Number(Number(§§pop()));
                                                                           addr176:
                                                                           if(_loc8_)
                                                                           {
                                                                              §§push(_loc6_);
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 §§push(§§pop() > §`?§.y);
                                                                                 if(_loc8_ || param2)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          addr214:
                                                                                          §§push(_loc6_);
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             addr209:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc6_ = Number(§§pop());
                                                                                          if(!(_loc8_ || this))
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       _loc7_++;
                                                                                       continue;
                                                                                    }
                                                                                    §§push(Number(§`?§.y));
                                                                                    §§goto(addr214);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop())
                                                                                       {
                                                                                          if(!_loc9_)
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc6_);
                                                                                                if(!(_loc9_ && param2))
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                      }
                                                                                                      addr422:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc6_ = §§pop();
                                                                                                         if(_loc8_ || param1)
                                                                                                         {
                                                                                                            addr430:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_++;
                                                                                                               addr431:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc7_);
                                                                                                                  break loop2;
                                                                                                               }
                                                                                                            }
                                                                                                            addr430:
                                                                                                         }
                                                                                                         addr461:
                                                                                                         param2.width = _loc4_ - _loc3_;
                                                                                                         §§goto(addr473);
                                                                                                      }
                                                                                                   }
                                                                                                   addr402:
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   addr421:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr422);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr394:
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       §§push(Number(§2j§.y));
                                                                                       if(!(_loc9_ && param1))
                                                                                       {
                                                                                          §§goto(addr421);
                                                                                       }
                                                                                    }
                                                                                    param2.height = _loc6_ - _loc5_;
                                                                                    addr391:
                                                                                    addr473:
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       break loop3;
                                                                                    }
                                                                                    addr473:
                                                                                    return param2;
                                                                                    addr391:
                                                                                 }
                                                                              }
                                                                              §§goto(addr422);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_);
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!(_loc9_ && _loc3_))
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(Number(§§pop()));
                                                                                          if(_loc8_)
                                                                                          {
                                                                                             _loc3_ = §§pop();
                                                                                             if(!(_loc9_ && param2))
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(!(_loc9_ && _loc3_))
                                                                                                {
                                                                                                   §§push(§§pop() > §2j§.x);
                                                                                                   if(_loc8_ || param1)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         if(_loc8_ || param1)
                                                                                                         {
                                                                                                            addr352:
                                                                                                            §§push(Number(_loc4_));
                                                                                                         }
                                                                                                         §§goto(addr430);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(Number(§2j§.x));
                                                                                                      }
                                                                                                      §§push(Number(§§pop()));
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_ = §§pop();
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc5_ < §2j§.y);
                                                                                                               if(!_loc8_)
                                                                                                               {
                                                                                                               }
                                                                                                               §§goto(addr391);
                                                                                                            }
                                                                                                            addr361:
                                                                                                         }
                                                                                                         addr451:
                                                                                                         param2.x = _loc3_;
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            param2.y = _loc5_;
                                                                                                            if(!_loc9_)
                                                                                                            {
                                                                                                               §§goto(addr461);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr473);
                                                                                                      }
                                                                                                      addr358:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(§§pop())
                                                                                                      {
                                                                                                         §§push(_loc5_);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            addr371:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                            addr371:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            addr383:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§push(Number(§2j§.y));
                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                         {
                                                                                                            §§goto(addr383);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc5_ = §§pop();
                                                                                                         §§push(_loc6_);
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            §§goto(addr391);
                                                                                                            §§push(§§pop() > §2j§.y);
                                                                                                         }
                                                                                                         §§goto(addr421);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr352);
                                                                                             }
                                                                                             §§goto(addr394);
                                                                                          }
                                                                                          §§goto(addr371);
                                                                                       }
                                                                                       addr314:
                                                                                    }
                                                                                    §§goto(addr358);
                                                                                 }
                                                                                 addr302:
                                                                              }
                                                                              §§goto(addr383);
                                                                           }
                                                                           addr294:
                                                                        }
                                                                        §§goto(addr402);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§push(Number(§`?§.y));
                                                                     }
                                                                     §§goto(addr176);
                                                                  }
                                                                  §§goto(addr391);
                                                               }
                                                               §§goto(addr371);
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         else
                                                         {
                                                            §§push(Number(§`?§.x));
                                                            if(_loc8_ || _loc3_)
                                                            {
                                                               §§goto(addr150);
                                                            }
                                                         }
                                                         §§goto(addr177);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                   else
                                                   {
                                                      addr251:
                                                   }
                                                   §§goto(addr451);
                                                }
                                                §§goto(addr177);
                                             }
                                             §§goto(addr150);
                                          }
                                          else
                                          {
                                             §§push(Number(§`?§.x));
                                          }
                                          §§goto(addr119);
                                       }
                                       §§goto(addr430);
                                    }
                                    while(true)
                                    {
                                       §§pop().§4G§(§§pop(),§`?§);
                                       if(!(_loc9_ && _loc3_))
                                       {
                                          transformCoords(§!!G§,§`?§.x,§`?§.y,§2j§);
                                          if(_loc8_)
                                          {
                                             if(_loc3_ < §2j§.x)
                                             {
                                                §§goto(addr294);
                                             }
                                             else
                                             {
                                                §§push(Number(§2j§.x));
                                             }
                                             §§goto(addr314);
                                          }
                                          §§goto(addr431);
                                       }
                                       §§goto(addr361);
                                    }
                                    addr270:
                                 }
                                 while(true)
                                 {
                                    §§goto(addr270);
                                 }
                                 §§goto(addr451);
                                 addr269:
                              }
                              §§goto(addr251);
                           }
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(_loc8_ || param2)
                                 {
                                    §§goto(addr451);
                                 }
                                 §§goto(addr473);
                              }
                              else
                              {
                                 §§goto(addr269);
                                 §§push(this.§ !!§);
                              }
                              §§goto(addr461);
                           }
                           addr433:
                        }
                        break;
                     }
                  }
                  §§goto(addr78);
               }
               else
               {
                  §>!>§(param1,§!!G§);
                  §§push(0);
                  if(_loc8_ || this)
                  {
                     _loc7_ = §§pop();
                     §§goto(addr431);
                  }
               }
               while(true)
               {
                  §§goto(addr433);
                  §§goto(addr431);
               }
               §§goto(addr461);
            }
            §§goto(addr78);
         }
         §§goto(addr23);
      }
      
      public function §8L§(param1:int) : uint
      {
         return this.§ !!§.§?6§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§ !!§.§[@§(param1,param2);
         }
      }
      
      public function §6F§(param1:int) : Number
      {
         return this.§ !!§.§for §(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§ !!§.§!!6§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§&!C§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(this.§&!C§ != param1)
            {
               if(!(_loc3_ && param1))
               {
                  this.§&!C§ = param1;
                  if(_loc3_ && _loc3_)
                  {
                  }
                  §§goto(addr59);
               }
               this.§ !!§.§'!1§(param1,1);
            }
         }
         addr59:
      }
      
      public function copyVertexDataTo(param1:§ u§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            this.§ !!§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§'d§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
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
         return this.§8!?§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§=!8§;
      }
   }
}
