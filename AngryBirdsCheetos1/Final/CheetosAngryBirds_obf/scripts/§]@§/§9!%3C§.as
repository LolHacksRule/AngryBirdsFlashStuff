package §]@§
{
   import §;! §.§?!T§;
   import §;! §.transformCoords;
   import §`C§.§'!N§;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §9!<§ extends DisplayObject
   {
      
      private static var §4!Y§:Vector3D;
      
      private static var §4S§:Point;
      
      private static var §1![§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §4!Y§ = new Vector3D();
            while(true)
            {
               §4S§ = new Point();
               §§goto(addr68);
            }
         }
         addr68:
         while(true)
         {
            §1![§ = new Matrix();
            if(_loc1_)
            {
               if(_loc1_ || §9!<§)
               {
                  break;
               }
               continue loop0;
            }
         }
      }
      
      protected var §6!3§:§?!T§;
      
      private var §4!&§:Number = 0.0;
      
      private var §9u§:Number = 0.0;
      
      private var §^!W§:uint = 16777215;
      
      public function §9!<§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            super();
            while(true)
            {
               this.§6!3§ = new §?!T§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  §§goto(addr61);
               }
            }
         }
         addr61:
         while(true)
         {
            this.§^!W§ = param3;
            if(!_loc6_)
            {
               if(_loc5_)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr53:
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
            §§push(this.§6!3§);
            loop0:
            while(true)
            {
               §§pop().setPremultipliedAlpha(param4);
               loop1:
               while(true)
               {
                  §§push(this.§6!3§);
                  loop2:
                  while(true)
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
                                 §§push(this.§6!3§);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(1);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(param1);
                                       loop9:
                                       while(!_loc6_)
                                       {
                                          §§push(0);
                                          loop10:
                                          while(_loc5_)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(this.§6!3§);
                                                loop12:
                                                while(_loc5_)
                                                {
                                                   §§push(2);
                                                   loop13:
                                                   while(!_loc6_)
                                                   {
                                                      §§push(0);
                                                      while(_loc5_)
                                                      {
                                                         §§push(param2);
                                                         while(_loc5_)
                                                         {
                                                            §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                            while(_loc5_)
                                                            {
                                                               §§push(this.§6!3§);
                                                               while(_loc5_)
                                                               {
                                                                  §§push(this.§6!3§);
                                                                  continue loop13;
                                                                  §§push(3);
                                                                  if(!_loc5_)
                                                                  {
                                                                     continue loop13;
                                                                  }
                                                                  if(_loc6_ && this)
                                                                  {
                                                                     continue loop3;
                                                                  }
                                                                  §§goto(addr95);
                                                                  if(!_loc6_)
                                                                  {
                                                                     if(_loc6_ && param2)
                                                                     {
                                                                        continue loop12;
                                                                     }
                                                                     if(_loc6_)
                                                                     {
                                                                        continue loop2;
                                                                     }
                                                                     §§pop().§-G§(param3);
                                                                     while(true)
                                                                     {
                                                                        this.§4!&§ = param1;
                                                                        while(!_loc6_)
                                                                        {
                                                                           this.§9u§ = param2;
                                                                           if(!(_loc5_ || param2))
                                                                           {
                                                                              continue;
                                                                           }
                                                                           if(!_loc6_)
                                                                           {
                                                                              if(!_loc6_)
                                                                              {
                                                                                 continue loop11;
                                                                              }
                                                                              §§goto(addr130);
                                                                           }
                                                                           §§goto(addr112);
                                                                        }
                                                                     }
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               continue loop7;
                                                            }
                                                            §§push(param2);
                                                            continue loop6;
                                                            if(!(_loc6_ && param2))
                                                            {
                                                               §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                               while(!_loc6_)
                                                               {
                                                                  §§goto(addr114);
                                                               }
                                                               continue loop1;
                                                               addr112:
                                                            }
                                                         }
                                                         §§push(param1);
                                                         continue loop10;
                                                         if(!(_loc5_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         §§goto(addr103);
                                                      }
                                                      continue loop9;
                                                   }
                                                   continue loop8;
                                                }
                                                continue loop0;
                                             }
                                          }
                                          continue loop5;
                                       }
                                       continue loop4;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(_loc9_)
         {
            if(param2 == null)
            {
               addr24:
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
            if(_loc9_ || param2)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!_loc8_)
            {
               if(param1 == this)
               {
                  if(_loc9_)
                  {
                     addr673:
                     _loc7_ = 0;
                  }
                  loop0:
                  while(true)
                  {
                     §§push(_loc7_);
                     while(true)
                     {
                        §§push(4);
                        while(true)
                        {
                           if(§§pop() < §§pop())
                           {
                              §§push(this.§6!3§);
                              break;
                           }
                           loop3:
                           while(!(_loc8_ && this))
                           {
                              while(true)
                              {
                                 param2.x = _loc3_;
                                 loop5:
                                 while(true)
                                 {
                                    if(!_loc8_)
                                    {
                                       if(!(_loc8_ && this))
                                       {
                                          if(_loc9_ || param2)
                                          {
                                             if(_loc9_ || param2)
                                             {
                                                param2.y = _loc5_;
                                                while(true)
                                                {
                                                   if(!(_loc9_ || _loc3_))
                                                   {
                                                      continue loop5;
                                                   }
                                                   if(_loc8_ && _loc3_)
                                                   {
                                                      break;
                                                   }
                                                   if(!_loc9_)
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      param2.width = _loc4_ - _loc3_;
                                                      continue;
                                                   }
                                                   addr550:
                                                   if(_loc9_ || _loc3_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   addr647:
                                                   addr646:
                                                   addr640:
                                                   addr648:
                                                   addr642:
                                                   _loc3_ = Number(_loc3_);
                                                   §§push(_loc4_);
                                                   if(!(_loc8_ && this))
                                                   {
                                                      addr622:
                                                      if(§§pop() > §4!Y§.x)
                                                      {
                                                         if(!_loc8_)
                                                         {
                                                            addr632:
                                                            _loc4_ = Number(Number(_loc4_));
                                                            addr627:
                                                         }
                                                         addr591:
                                                         §§push(_loc5_ < §4!Y§.y);
                                                         if(!_loc8_)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               addr600:
                                                               §§push(Number(Number(_loc5_)));
                                                               if(!(_loc8_ && this))
                                                               {
                                                                  _loc5_ = §§pop();
                                                                  break loop3;
                                                               }
                                                               §§goto(addr627);
                                                            }
                                                            §§goto(addr600);
                                                            §§push(Number(§4!Y§.y));
                                                         }
                                                         §§goto(addr622);
                                                         addr633:
                                                      }
                                                      §§goto(addr627);
                                                      §§push(Number(§4!Y§.x));
                                                   }
                                                   addr641:
                                                   §§goto(addr641);
                                                }
                                                while(true)
                                                {
                                                   if(_loc9_ || this)
                                                   {
                                                      §§push(_loc4_);
                                                      if(_loc9_)
                                                      {
                                                         if(_loc9_ || _loc3_)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            if(_loc9_ || param2)
                                                            {
                                                               addr389:
                                                               if(!(_loc8_ && param2))
                                                               {
                                                                  if(_loc9_)
                                                                  {
                                                                     §§goto(addr420);
                                                                  }
                                                                  §§goto(addr642);
                                                               }
                                                               §§goto(addr600);
                                                            }
                                                            §§goto(addr402);
                                                         }
                                                         §§goto(addr591);
                                                      }
                                                      §§goto(addr389);
                                                   }
                                                   §§goto(addr469);
                                                }
                                             }
                                             else
                                             {
                                                while(true)
                                                {
                                                }
                                                addr547:
                                             }
                                             §§goto(addr521);
                                          }
                                          §§goto(addr486);
                                       }
                                       §§goto(addr349);
                                    }
                                    §§goto(addr194);
                                 }
                              }
                           }
                           §§goto(addr560);
                           §§push(_loc6_);
                        }
                        §§goto(addr655);
                     }
                  }
               }
               else
               {
                  §=!;§(param1,§1![§);
               }
               §§goto(addr547);
            }
            §§goto(addr673);
         }
         §§goto(addr24);
      }
      
      public function §4!!§(param1:int) : uint
      {
         return this.§6!3§.§+;§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§6!3§.§,m§(param1,param2);
         }
      }
      
      public function §[u§(param1:int) : Number
      {
         return this.§6!3§.§>W§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§6!3§.§6!Y§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§^!W§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(this.§^!W§ != param1)
            {
               loop0:
               while(true)
               {
                  this.§^!W§ = param1;
                  addr77:
                  while(true)
                  {
                     this.§6!3§.§-G§(param1,1);
                     if(!(_loc2_ && _loc2_))
                     {
                        if(_loc3_ || this)
                        {
                           break;
                        }
                        continue loop0;
                     }
                  }
                  §§goto(addr25);
               }
            }
            addr25:
            return;
         }
         §§goto(addr77);
      }
      
      public function copyVertexDataTo(param1:§?!T§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.§6!3§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§'!N§, param2:Number) : void
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
      
      public function get §7X§() : Number
      {
         return this.§4!&§;
      }
      
      public function get §]%§() : Number
      {
         return this.§9u§;
      }
   }
}
