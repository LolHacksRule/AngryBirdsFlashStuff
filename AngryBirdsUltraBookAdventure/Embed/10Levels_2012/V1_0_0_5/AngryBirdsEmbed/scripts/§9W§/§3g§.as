package §9W§
{
   import §#!;§.§?h§;
   import §@e§.§;2§;
   import §@e§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §3g§ extends DisplayObject
   {
      
      private static var §0!;§:Vector3D;
      
      private static var §2Y§:Point;
      
      private static var §[9§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            §0!;§ = new Vector3D();
            if(!(_loc2_ && §3g§))
            {
               §2Y§ = new Point();
               if(!(_loc2_ && §3g§))
               {
                  addr55:
                  §[9§ = new Matrix();
               }
               return;
            }
         }
         §§goto(addr55);
      }
      
      protected var §5J§:§;2§;
      
      private var §,v§:Number = 0.0;
      
      private var §%C§:Number = 0.0;
      
      private var §,X§:uint = 16777215;
      
      public function §3g§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param2)
         {
            super();
            if(_loc5_)
            {
               addr47:
               this.§5J§ = new §;2§(4,param4);
               if(_loc5_)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  if(_loc5_ || param2)
                  {
                     addr68:
                     this.§,X§ = param3;
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
         §§push(this.§5J§);
         if(!_loc6_)
         {
            §§pop().setPremultipliedAlpha(param4);
            §§push(this.§5J§);
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
                           §§push(this.§5J§);
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
                                          §§push(this.§5J§);
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
                                       §§push(this.§5J§);
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
                                             this.§5J§.§,!#§(param3);
                                          }
                                          §§goto(addr150);
                                       }
                                       §§goto(addr142);
                                    }
                                    this.§,v§ = param1;
                                    this.§%C§ = param2;
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
                                                      if(§§pop() <= §2Y§.y)
                                                      {
                                                         §§push(Number(§2Y§.y));
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
                                                                           §§push(this.§5J§);
                                                                           loop16:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              addr274:
                                                                              while(true)
                                                                              {
                                                                                 §§pop().§`j§(§§pop(),§0!;§);
                                                                                 if(!(_loc9_ || _loc3_))
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 transformCoords(§[9§,§0!;§.x,§0!;§.y,§2Y§);
                                                                                 if(_loc8_ && param2)
                                                                                 {
                                                                                    continue loop1;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(_loc8_ && param2)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                                 §§push(§§pop() < §2Y§.x);
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
                                                                                                   §§push(§§pop() > §2Y§.x);
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
                                                                                                               if(§§pop() >= §2Y§.y)
                                                                                                               {
                                                                                                                  §§push(Number(§2Y§.y));
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
                                                                                                         §§push(Number(§2Y§.x));
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
                                                                                       §§push(Number(§2Y§.x));
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
                           §§push(this.§5J§);
                           if(_loc9_ || param1)
                           {
                              §§push(_loc7_);
                              if(_loc9_ || _loc3_)
                              {
                                 §§pop().§`j§(§§pop(),§0!;§);
                                 if(!_loc8_)
                                 {
                                    §§push(_loc3_);
                                    if(_loc9_ || param2)
                                    {
                                       if(§§pop() < §0!;§.x)
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
                                                   if(§§pop() > §0!;§.x)
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
                                                         §§push(§§pop() < §0!;§.y);
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
                                                               §§push(§§pop() > §0!;§.y);
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
                                                                     §§push(Number(§0!;§.y));
                                                                  }
                                                                  §§goto(addr210);
                                                               }
                                                               §§goto(addr328);
                                                            }
                                                            else
                                                            {
                                                               §§goto(addr191);
                                                               §§push(Number(§0!;§.y));
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                         §§goto(addr309);
                                                      }
                                                      §§goto(addr191);
                                                   }
                                                   else
                                                   {
                                                      §§push(Number(§0!;§.x));
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
                                          §§push(Number(§0!;§.x));
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
                  §8w§(param1,§[9§);
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
      
      public function §3T§(param1:int) : uint
      {
         return this.§5J§.§+!+§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param2))
         {
            this.§5J§.§6!%§(param1,param2);
         }
      }
      
      public function §8!C§(param1:int) : Number
      {
         return this.§5J§.§,!8§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§5J§.§?n§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§,X§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§,X§ != param1)
            {
               if(_loc2_ || param1)
               {
                  this.§,X§ = param1;
                  if(_loc2_ || _loc2_)
                  {
                     addr49:
                     this.§5J§.§,!#§(param1,1);
                  }
               }
            }
            return;
         }
         §§goto(addr49);
      }
      
      public function copyVertexDataTo(param1:§;2§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§5J§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§?h§, param2:Number) : void
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
         return this.§,v§;
      }
      
      public function get initialHeight() : Number
      {
         return this.§%C§;
      }
   }
}
