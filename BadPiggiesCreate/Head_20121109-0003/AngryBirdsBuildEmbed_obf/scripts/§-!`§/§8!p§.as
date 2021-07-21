package §-!`§
{
   import §6x§.§9!§;
   import §6x§.transformCoords;
   import §@!X§.§"W§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §8!p§ extends DisplayObject
   {
      
      private static var §=A§:Vector3D;
      
      private static var §;!'§:Point;
      
      private static var §`!3§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc1_))
         {
            §=A§ = new Vector3D();
            if(_loc2_ || §8!p§)
            {
               §;!'§ = new Point();
               if(!_loc1_)
               {
                  addr51:
                  §`!3§ = new Matrix();
               }
               return;
            }
         }
         §§goto(addr51);
      }
      
      protected var §8<§:§9!§;
      
      private var §]F§:Number = 0.0;
      
      private var §,!n§:Number = 0.0;
      
      private var §+h§:uint = 16777215;
      
      public function §8!p§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super();
            if(!_loc6_)
            {
               addr47:
               this.§8<§ = new §9!§(4,param4);
               if(!_loc6_)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  if(!(_loc6_ && param3))
                  {
                     this.§+h§ = param3;
                  }
               }
            }
            return;
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
         §§push(this.§8<§);
         if(!_loc6_)
         {
            §§pop().setPremultipliedAlpha(param4);
            §§push(this.§8<§);
            if(_loc5_)
            {
               §§push(0);
               if(_loc5_ || param2)
               {
                  §§push(0);
                  if(!(_loc6_ && param3))
                  {
                     §§push(0);
                     if(!(_loc6_ && this))
                     {
                        §§pop().setPosition(§§pop(),§§pop(),§§pop());
                        if(!_loc6_)
                        {
                           §§push(this.§8<§);
                           if(!_loc6_)
                           {
                              §§push(1);
                              if(!_loc6_)
                              {
                                 §§push(param1);
                                 if(_loc5_)
                                 {
                                    §§push(0);
                                    if(_loc5_ || this)
                                    {
                                       §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                       §§push(this.§8<§);
                                       if(!_loc6_)
                                       {
                                          addr86:
                                          §§push(2);
                                          if(_loc5_)
                                          {
                                             §§push(0);
                                             if(!_loc6_)
                                             {
                                                addr92:
                                                §§push(param2);
                                                if(_loc5_)
                                                {
                                                   §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                   §§push(this.§8<§);
                                                   if(_loc5_ || param1)
                                                   {
                                                      addr118:
                                                      §§pop().setPosition(3,param1,param2);
                                                      if(!(_loc6_ && param3))
                                                      {
                                                         §§goto(addr128);
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                   addr128:
                                                   this.§8<§.§9!Y§(param3);
                                                   if(_loc5_)
                                                   {
                                                      addr132:
                                                      this.§]F§ = param1;
                                                      this.§,!n§ = param2;
                                                   }
                                                   return;
                                                }
                                                §§goto(addr118);
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                              §§goto(addr118);
                           }
                           §§goto(addr86);
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr118);
                  }
                  §§goto(addr92);
               }
               §§goto(addr118);
            }
            §§goto(addr86);
         }
         §§goto(addr118);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(!_loc8_)
         {
            if(param2 == null)
            {
               addr24:
               param2 = new Rectangle();
            }
            var _loc3_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc9_)
            {
               if(param1 == this)
               {
                  if(_loc9_ || this)
                  {
                     addr62:
                     _loc7_ = 0;
                  }
                  loop2:
                  while(true)
                  {
                     §§push(_loc7_);
                     if(_loc9_)
                     {
                        §§push(4);
                        if(!_loc8_)
                        {
                           if(§§pop() >= §§pop())
                           {
                              addr419:
                              param2.x = _loc3_;
                              param2.y = _loc5_;
                              param2.width = _loc4_ - _loc3_;
                              if(_loc9_ || param2)
                              {
                                 param2.height = _loc6_ - _loc5_;
                              }
                           }
                           else
                           {
                              §§push(this.§8<§);
                              if(!_loc8_)
                              {
                                 §§push(_loc7_);
                                 if(_loc9_ || _loc3_)
                                 {
                                    §§pop().getPosition(§§pop(),§=A§);
                                    §§push(_loc3_ < §=A§.x);
                                    if(_loc9_ || this)
                                    {
                                       if(§§pop())
                                       {
                                          if(_loc9_)
                                          {
                                             §§push(Number(_loc3_));
                                             if(!_loc8_)
                                             {
                                                addr104:
                                                §§push(Number(§§pop()));
                                                if(_loc9_ || _loc3_)
                                                {
                                                   _loc3_ = §§pop();
                                                   §§push(_loc4_ > §=A§.x);
                                                   if(_loc9_ || param2)
                                                   {
                                                      if(§§pop())
                                                      {
                                                         if(!(_loc8_ && param2))
                                                         {
                                                            §§push(_loc4_);
                                                            if(_loc9_ || _loc3_)
                                                            {
                                                               addr140:
                                                               §§push(Number(§§pop()));
                                                               if(!_loc8_)
                                                               {
                                                                  addr147:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc8_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr153:
                                                                        §§push(_loc5_);
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() < §=A§.y);
                                                                           if(_loc9_ || param2)
                                                                           {
                                                                              if(§§pop())
                                                                              {
                                                                                 §§push(Number(_loc5_));
                                                                                 if(_loc9_ || param2)
                                                                                 {
                                                                                    addr192:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(_loc9_ || this)
                                                                                    {
                                                                                       _loc5_ = §§pop();
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          if(_loc9_ || param1)
                                                                                          {
                                                                                             §§push(§§pop() > §=A§.y);
                                                                                             if(!_loc8_)
                                                                                             {
                                                                                                addr226:
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   addr388:
                                                                                                   §§push(_loc6_);
                                                                                                   if(!(_loc8_ && param2))
                                                                                                   {
                                                                                                      addr235:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      addr399:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr400:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc6_ = §§pop();
                                                                                                            addr401:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc7_++;
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  addr414:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_);
                                                                                                                     break loop2;
                                                                                                                  }
                                                                                                                  addr414:
                                                                                                               }
                                                                                                               §§goto(addr442);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr388:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§push(Number(§=A§.y));
                                                                                                }
                                                                                                _loc6_ = Number(§§pop());
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   _loc7_++;
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      continue;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc3_);
                                                                                                      if(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop() < §;!'§.x);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(§§pop())
                                                                                                            {
                                                                                                               if(_loc9_ || param2)
                                                                                                               {
                                                                                                                  §§push(Number(_loc3_));
                                                                                                                  if(_loc9_)
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        addr314:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc3_ = Number(§§pop());
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              if(_loc4_ > §;!'§.x)
                                                                                                                              {
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    addr338:
                                                                                                                                    §§push(Number(_loc4_));
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr339:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc4_ = §§pop();
                                                                                                                                          §§push(_loc5_);
                                                                                                                                          if(_loc9_ || param1)
                                                                                                                                          {
                                                                                                                                             addr348:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(§§pop() < §;!'§.y)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_ || this)
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                         addr360:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            addr372:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc5_ = Number(§§pop());
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      addr359:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr414);
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§;!'§.y));
                                                                                                                                                   if(_loc9_ || param1)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr372);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr388);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             addr348:
                                                                                                                                          }
                                                                                                                                          §§goto(addr388);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr338:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(Number(§;!'§.x));
                                                                                                                                 if(_loc9_ || this)
                                                                                                                                 {
                                                                                                                                    §§goto(addr338);
                                                                                                                                 }
                                                                                                                                 §§goto(addr348);
                                                                                                                              }
                                                                                                                              §§goto(addr348);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc6_ > §;!'§.y);
                                                                                                                              addr378:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(§§pop())
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_);
                                                                                                                                    if(!(_loc8_ && param2))
                                                                                                                                    {
                                                                                                                                       §§goto(addr388);
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                    }
                                                                                                                                    §§goto(addr388);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§push(Number(§;!'§.y));
                                                                                                                                    if(_loc9_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr399);
                                                                                                                                    }
                                                                                                                                    §§goto(addr400);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr303:
                                                                                                                  }
                                                                                                                  §§goto(addr348);
                                                                                                               }
                                                                                                               §§goto(addr401);
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               §§push(Number(§;!'§.x));
                                                                                                               if(!(_loc8_ && _loc3_))
                                                                                                               {
                                                                                                                  §§goto(addr314);
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr400);
                                                                                                         }
                                                                                                         addr291:
                                                                                                      }
                                                                                                      §§goto(addr388);
                                                                                                   }
                                                                                                   addr285:
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   addr270:
                                                                                                }
                                                                                                §§goto(addr414);
                                                                                             }
                                                                                             §§goto(addr291);
                                                                                          }
                                                                                          §§goto(addr388);
                                                                                       }
                                                                                       §§goto(addr359);
                                                                                    }
                                                                                    §§goto(addr360);
                                                                                    addr181:
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(Number(§=A§.y));
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    §§goto(addr192);
                                                                                 }
                                                                              }
                                                                              §§goto(addr339);
                                                                           }
                                                                           §§goto(addr378);
                                                                        }
                                                                        §§goto(addr235);
                                                                     }
                                                                     §§goto(addr442);
                                                                  }
                                                                  §§goto(addr181);
                                                               }
                                                               §§goto(addr348);
                                                            }
                                                            §§goto(addr192);
                                                         }
                                                         while(true)
                                                         {
                                                            transformCoords(§`!3§,§=A§.x,§=A§.y,§;!'§);
                                                            §§goto(addr285);
                                                         }
                                                         addr277:
                                                      }
                                                      else
                                                      {
                                                         §§push(Number(§=A§.x));
                                                      }
                                                      §§goto(addr147);
                                                   }
                                                   §§goto(addr226);
                                                }
                                                §§goto(addr140);
                                             }
                                             §§goto(addr303);
                                          }
                                          §§goto(addr153);
                                       }
                                       else
                                       {
                                          §§push(Number(§=A§.x));
                                          if(_loc9_)
                                          {
                                             §§goto(addr104);
                                          }
                                       }
                                       §§goto(addr338);
                                    }
                                    §§goto(addr378);
                                 }
                                 while(true)
                                 {
                                    §§pop().getPosition(§§pop(),§=A§);
                                    §§goto(addr277);
                                 }
                                 addr275:
                              }
                              while(true)
                              {
                                 §§goto(addr275);
                              }
                              addr274:
                           }
                           §§goto(addr442);
                        }
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              if(_loc9_)
                              {
                                 §§goto(addr419);
                              }
                           }
                           else
                           {
                              §§goto(addr274);
                              §§push(this.§8<§);
                           }
                           §§goto(addr442);
                        }
                        addr416:
                     }
                     break;
                  }
                  while(true)
                  {
                     §§goto(addr416);
                     §§goto(addr414);
                  }
                  addr442:
                  return param2;
                  addr415:
               }
               else
               {
                  §+y§(param1,§`!3§);
                  if(!_loc8_)
                  {
                     §§push(0);
                     if(!_loc8_)
                     {
                        _loc7_ = §§pop();
                        §§goto(addr270);
                     }
                     §§goto(addr415);
                  }
               }
               §§goto(addr419);
            }
            §§goto(addr62);
         }
         §§goto(addr24);
      }
      
      public function §>h§(param1:int) : uint
      {
         return this.§8<§.§7k§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§8<§.§2!9§(param1,param2);
         }
      }
      
      public function §85§(param1:int) : Number
      {
         return this.§8<§.§?!,§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            this.§8<§.§@!J§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§+h§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && param1))
         {
            if(this.§+h§ != param1)
            {
               if(!(_loc2_ && param1))
               {
                  addr55:
                  this.§+h§ = param1;
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§8<§.§9!Y§(param1,1);
                  }
               }
            }
            return;
         }
         §§goto(addr55);
      }
      
      public function copyVertexDataTo(param1:§9!§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || this)
         {
            this.§8<§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§"W§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
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
         return this.§]F§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§,!n§;
      }
   }
}
