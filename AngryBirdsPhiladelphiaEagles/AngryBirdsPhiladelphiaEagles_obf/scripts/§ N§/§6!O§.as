package § N§
{
   import §+§.§0&§;
   import §+§.transformCoords;
   import §5Z§.§4]§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §6!O§ extends DisplayObject
   {
      
      private static var § &§:Vector3D;
      
      private static var §7,§:Point;
      
      private static var §"!§:Matrix;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            § &§ = new Vector3D();
            while(true)
            {
               §7,§ = new Point();
               while(!(_loc1_ && _loc2_))
               {
                  §"!§ = new Matrix();
                  if(_loc1_ && §6!O§)
                  {
                     continue;
                  }
                  return;
                  addr61:
               }
            }
         }
         §§goto(addr61);
      }
      
      protected var §"!F§:§0&§;
      
      private var §=!0§:Number = 0.0;
      
      private var §?2§:Number = 0.0;
      
      private var §1!#§:uint = 16777215;
      
      public function §6!O§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            super();
            loop0:
            while(true)
            {
               this.§"!F§ = new §0&§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  while(!_loc5_)
                  {
                     if(_loc6_)
                     {
                        this.§1!#§ = param3;
                        if(!_loc5_)
                        {
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         §§push(this.§"!F§);
         loop0:
         while(true)
         {
            §§pop().setPremultipliedAlpha(param4);
            loop1:
            while(true)
            {
               §§push(this.§"!F§);
               while(!_loc5_)
               {
                  §§push(0);
                  loop3:
                  while(true)
                  {
                     §§push(0);
                     loop4:
                     while(true)
                     {
                        §§push(0);
                        loop5:
                        while(true)
                        {
                           §§pop().setPosition(§§pop(),§§pop(),§§pop());
                           loop6:
                           while(true)
                           {
                              §§push(this.§"!F§);
                              loop7:
                              while(true)
                              {
                                 §§push(1);
                                 loop8:
                                 while(!_loc5_)
                                 {
                                    §§push(param1);
                                    while(true)
                                    {
                                       §§push(0);
                                       addr150:
                                       while(_loc6_)
                                       {
                                          §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                          if(_loc6_ || param2)
                                          {
                                             §§push(this.§"!F§);
                                             continue loop7;
                                          }
                                          continue loop6;
                                       }
                                       continue loop5;
                                       loop13:
                                       while(_loc6_ || param2)
                                       {
                                          §§push(param2);
                                          loop14:
                                          while(_loc6_)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             loop15:
                                             while(true)
                                             {
                                                §§push(this.§"!F§);
                                                while(true)
                                                {
                                                   §§push(3);
                                                   if(_loc6_)
                                                   {
                                                      if(_loc5_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(param1);
                                                      if(!_loc5_)
                                                      {
                                                         if(!(_loc5_ && param2))
                                                         {
                                                            §§push(param2);
                                                            if(_loc5_ && param1)
                                                            {
                                                               continue loop14;
                                                            }
                                                            §§goto(addr99);
                                                            continue loop14;
                                                         }
                                                         continue loop4;
                                                      }
                                                      continue loop13;
                                                   }
                                                   addr119:
                                                   while(true)
                                                   {
                                                      continue loop13;
                                                   }
                                                   addr99:
                                                   §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                   §§push(this.§"!F§);
                                                   if(_loc6_)
                                                   {
                                                      addr46:
                                                      if(!(_loc5_ && param1))
                                                      {
                                                         §§pop().§!X§(param3);
                                                         if(!(_loc6_ || param3))
                                                         {
                                                            break loop15;
                                                         }
                                                         continue loop15;
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                                continue loop8;
                                             }
                                             continue loop1;
                                          }
                                          §§goto(addr150);
                                       }
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                        }
                     }
                  }
                  if(_loc5_ && param2)
                  {
                     continue;
                  }
                  §§goto(addr119);
                  §§push(2);
               }
               continue loop0;
            }
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:* = 0;
         if(!(_loc8_ && _loc3_))
         {
            if(param2 == null)
            {
               addr29:
               param2 = new Rectangle();
            }
            var _loc3_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(!_loc8_)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:* = Number(Number.MAX_VALUE);
            §§push(-Number.MAX_VALUE);
            if(!(_loc8_ && param1))
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               if(param1 == this)
               {
                  if(_loc9_ || param1)
                  {
                     _loc7_ = 0;
                     addr492:
                     loop47:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop43:
                        while(true)
                        {
                           §§push(4);
                           loop42:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 loop27:
                                 while(true)
                                 {
                                    loop28:
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       if(!_loc8_)
                                       {
                                          param2.y = _loc5_;
                                          if(!_loc8_)
                                          {
                                             param2.width = _loc4_ - _loc3_;
                                             loop29:
                                             while(true)
                                             {
                                                if(!_loc8_)
                                                {
                                                   if(_loc9_)
                                                   {
                                                      if(_loc8_)
                                                      {
                                                         break;
                                                      }
                                                      continue;
                                                   }
                                                   addr386:
                                                   loop3:
                                                   while(_loc9_ || param1)
                                                   {
                                                      transformCoords(§"!§,§ &§.x,§ &§.y,§7,§);
                                                      §§push(_loc3_ < §7,§.x);
                                                      if(_loc9_)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            if(_loc9_ || param2)
                                                            {
                                                               if(_loc9_)
                                                               {
                                                                  §§push(Number(_loc3_));
                                                                  loop4:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc8_)
                                                                     {
                                                                        loop36:
                                                                        while(true)
                                                                        {
                                                                           _loc3_ = §§pop();
                                                                           addr331:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc4_);
                                                                              loop16:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() > §7,§.x);
                                                                                 if(!_loc8_)
                                                                                 {
                                                                                    if(§§pop())
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc4_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc8_ && param1))
                                                                                                {
                                                                                                   addr290:
                                                                                                   loop17:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop18:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc4_ = §§pop();
                                                                                                         loop19:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc9_ || _loc3_)
                                                                                                            {
                                                                                                               §§push(_loc5_);
                                                                                                               loop20:
                                                                                                               while(!(_loc8_ && param1))
                                                                                                               {
                                                                                                                  if(!(_loc8_ && param2))
                                                                                                                  {
                                                                                                                     if(§§pop() < §7,§.y)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc8_ && param1))
                                                                                                                           {
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop4;
                                                                                                                              }
                                                                                                                              continue loop16;
                                                                                                                           }
                                                                                                                           continue loop27;
                                                                                                                        }
                                                                                                                        continue loop17;
                                                                                                                        addr200:
                                                                                                                     }
                                                                                                                     addr245:
                                                                                                                     addr245:
                                                                                                                     §§push(Number(§7,§.y));
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        §§push(_loc6_);
                                                                                                                        addr270:
                                                                                                                        continue loop16;
                                                                                                                        if(_loc8_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        §§push(§§pop() > §7,§.y);
                                                                                                                        if(!(_loc8_ && param2))
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              if(_loc9_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(Number(§7,§.y));
                                                                                                                           }
                                                                                                                           _loc6_ = Number(§§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc9_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue loop19;
                                                                                                                              }
                                                                                                                              if(_loc9_ || param2)
                                                                                                                              {
                                                                                                                                 _loc7_++;
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr479:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_ < § &§.x);
                                                                                                                                 addr451:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!§§pop())
                                                                                                                                    {
                                                                                                                                       addr468:
                                                                                                                                       §§push(Number(§ &§.x));
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                          addr470:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc4_ > § &§.x)
                                                                                                                                             {
                                                                                                                                                break loop28;
                                                                                                                                             }
                                                                                                                                             addr443:
                                                                                                                                             addr443:
                                                                                                                                             addr443:
                                                                                                                                             addr443:
                                                                                                                                             §§push(Number(§ &§.x));
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc4_ = Number(§§pop());
                                                                                                                                                addr445:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc5_ < § &§.y);
                                                                                                                                                   addr412:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(§§pop())
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(_loc5_));
                                                                                                                                                            addr421:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr413:
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§ &§.y));
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr421);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc5_ = §§pop();
                                                                                                                                                         break loop29;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr468:
                                                                                                                                    }
                                                                                                                                    addr452:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr468);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr132:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc7_);
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop43;
                                                                                                                              }
                                                                                                                              §§push(4);
                                                                                                                              if(!(_loc9_ || param2))
                                                                                                                              {
                                                                                                                                 continue loop42;
                                                                                                                              }
                                                                                                                              if(§§pop() >= §§pop())
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       if(!_loc8_)
                                                                                                                                       {
                                                                                                                                          continue loop28;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr130);
                                                                                                                                    }
                                                                                                                                    §§goto(addr470);
                                                                                                                                 }
                                                                                                                                 addr117:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(this.§"!F§);
                                                                                                                                 if(!(_loc8_ && this))
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                    {
                                                                                                                                       §§pop().§#I§(§§pop(),§ &§);
                                                                                                                                       continue loop3;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                    }
                                                                                                                                    addr476:
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§pop().§#I§(§§pop(),§ &§);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr479);
                                                                                                                              §§goto(addr132);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              §§goto(addr102);
                                                                                                                           }
                                                                                                                           addr102:
                                                                                                                           addr374:
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 addr399:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr398:
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§push(Number(§ &§.y));
                                                                                                                           }
                                                                                                                           addr404:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc6_ = Number(§§pop());
                                                                                                                              _loc7_++;
                                                                                                                              continue loop47;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        addr397:
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr397);
                                                                                                                     }
                                                                                                                     addr394:
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop18;
                                                                                                               addr182:
                                                                                                            }
                                                                                                            §§goto(addr445);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr294:
                                                                                                }
                                                                                                §§goto(addr399);
                                                                                             }
                                                                                             addr283:
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr439:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr443);
                                                                                                }
                                                                                             }
                                                                                             addr438:
                                                                                          }
                                                                                          §§goto(addr445);
                                                                                       }
                                                                                       addr279:
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(Number(§7,§.x));
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr451);
                                                                                 }
                                                                              }
                                                                              continue loop36;
                                                                           }
                                                                        }
                                                                        addr329:
                                                                     }
                                                                     §§goto(addr468);
                                                                  }
                                                               }
                                                               §§goto(addr398);
                                                            }
                                                            §§goto(addr331);
                                                         }
                                                         else
                                                         {
                                                            §§push(Number(§7,§.x));
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      §§goto(addr412);
                                                   }
                                                   while(true)
                                                   {
                                                      if(_loc9_)
                                                      {
                                                         §§goto(addr374);
                                                         §§push(0);
                                                      }
                                                      §§goto(addr413);
                                                      §§goto(addr364);
                                                   }
                                                   addr364:
                                                }
                                                §§goto(addr200);
                                             }
                                             while(true)
                                             {
                                                §§goto(addr394);
                                             }
                                          }
                                          §§goto(addr117);
                                       }
                                       break;
                                    }
                                    while(_loc9_ || this)
                                    {
                                       §§goto(addr438);
                                       §§push(_loc4_);
                                    }
                                    §§goto(addr452);
                                 }
                              }
                              else
                              {
                                 §§push(this.§"!F§);
                              }
                              §§goto(addr476);
                           }
                        }
                     }
                     addr492:
                  }
                  §§goto(addr492);
               }
               else
               {
                  §>!B§(param1,§"!§);
               }
               §§goto(addr386);
            }
            §§goto(addr492);
         }
         §§goto(addr29);
      }
      
      public function §6u§(param1:int) : uint
      {
         return this.§"!F§.§^3§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§"!F§.§'O§(param1,param2);
         }
      }
      
      public function §5#§(param1:int) : Number
      {
         return this.§"!F§.§^S§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
         {
            this.§"!F§.§3!@§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§1!#§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            if(this.§1!#§ != param1)
            {
               do
               {
                  this.§1!#§ = param1;
                  do
                  {
                     this.§"!F§.§!X§(param1,1);
                  }
                  while(_loc3_ && _loc2_);
                  
               }
               while(_loc3_ && param1);
               
               addr68:
            }
            return;
         }
         §§goto(addr68);
      }
      
      public function copyVertexDataTo(param1:§0&§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param1))
         {
            this.§"!F§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§4]§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param2)
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
      
      public function get §?+§() : Number
      {
         return this.§=!0§;
      }
      
      public function get §>!3§() : Number
      {
         return this.§?2§;
      }
   }
}
