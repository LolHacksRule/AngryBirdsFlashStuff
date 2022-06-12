package §1!$§
{
   import §'6§.§'"3§;
   import §1V§.§1!-§;
   import §1V§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §!"?§ extends DisplayObject
   {
      
      private static var §<!#§:Vector3D;
      
      private static var §5n§:Point;
      
      private static var §@V§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §<!#§ = new Vector3D();
         }
         do
         {
            §5n§ = new Point();
            do
            {
               §@V§ = new Matrix();
            }
            while(_loc2_);
            
         }
         while(_loc2_ && _loc1_);
         
      }
      
      protected var §0E§:§1!-§;
      
      private var § !D§:Number = 0.0;
      
      private var §^"0§:Number = 0.0;
      
      private var §%!6§:uint = 16777215;
      
      public function §!"?§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            super();
            loop0:
            do
            {
               this.§0E§ = new §1!-§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  while(_loc6_ || param1)
                  {
                     this.§%!6§ = param3;
                     if(!(_loc5_ && param1))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc5_);
            
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
         if(_loc6_ || this)
         {
            §§push(this.§0E§);
            loop0:
            while(true)
            {
               §§pop().§"!W§(param4);
               loop1:
               while(true)
               {
                  §§push(this.§0E§);
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
                              while(!_loc5_)
                              {
                                 §§push(this.§0E§);
                                 loop7:
                                 for(; !_loc5_; if(_loc5_ && param1)
                                 {
                                    continue;
                                 },§§push(3),if(_loc6_ || param1)
                                 {
                                    §§goto(addr102);
                                 },§§goto(addr128))
                                 {
                                    if(_loc6_)
                                    {
                                       §§push(1);
                                       while(!(_loc5_ && param1))
                                       {
                                          §§push(param1);
                                          loop9:
                                          while(!(_loc5_ && param1))
                                          {
                                             §§push(0);
                                             loop10:
                                             for(; _loc6_ || param3; while(_loc6_ || param3)
                                             {
                                                §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                §§goto(addr140);
                                                §§push(param2);
                                                if(_loc5_ && this)
                                                {
                                                   continue;
                                                }
                                                §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                §§goto(addr121);
                                             })
                                             {
                                                §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(this.§0E§);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(2);
                                                      addr128:
                                                      while(true)
                                                      {
                                                         §§push(0);
                                                         addr129:
                                                         while(!_loc5_)
                                                         {
                                                            §§push(param2);
                                                            continue loop10;
                                                         }
                                                         continue loop9;
                                                      }
                                                      loop17:
                                                      while(true)
                                                      {
                                                         if(_loc6_ || param2)
                                                         {
                                                            continue loop7;
                                                         }
                                                         continue loop12;
                                                         addr123:
                                                         §§push(this.§0E§);
                                                         if(_loc6_)
                                                         {
                                                            §§pop().§+"0§(param3);
                                                            loop19:
                                                            while(!(_loc5_ && param3))
                                                            {
                                                               while(true)
                                                               {
                                                                  this.§ !D§ = param1;
                                                                  for(; _loc6_; this.§^"0§ = param2,if(!_loc5_)
                                                                  {
                                                                     return;
                                                                  })
                                                                  {
                                                                     addr42:
                                                                     if(_loc6_ || param2)
                                                                     {
                                                                        if(_loc6_)
                                                                        {
                                                                           continue;
                                                                        }
                                                                        continue loop11;
                                                                     }
                                                                     addr140:
                                                                     while(true)
                                                                     {
                                                                        continue loop17;
                                                                        §§goto(addr42);
                                                                     }
                                                                  }
                                                                  continue loop19;
                                                               }
                                                            }
                                                            while(_loc6_)
                                                            {
                                                               §§goto(addr123);
                                                               §§goto(addr59);
                                                            }
                                                            addr59:
                                                            continue loop6;
                                                            addr121:
                                                         }
                                                      }
                                                      continue loop7;
                                                   }
                                                }
                                             }
                                             continue loop5;
                                          }
                                          continue loop4;
                                          if(!(_loc6_ || param2))
                                          {
                                             continue;
                                          }
                                          §§push(param1);
                                          if(!_loc5_)
                                          {
                                             §§goto(addr112);
                                          }
                                          §§goto(addr129);
                                       }
                                       continue loop3;
                                    }
                                    continue loop0;
                                 }
                                 continue loop2;
                              }
                              continue loop1;
                           }
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr66);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc7_:int = 0;
         if(!(_loc9_ && param1))
         {
            if(param2 == null)
            {
               addr28:
               param2 = new Rectangle();
            }
            var _loc3_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(!(_loc9_ && this))
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(!_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(_loc8_)
            {
               if(param1 == this)
               {
                  if(!(_loc9_ && param2))
                  {
                     addr667:
                     _loc7_ = 0;
                  }
                  while(true)
                  {
                     §§push(_loc7_);
                     while(true)
                     {
                        §§push(4);
                        while(true)
                        {
                           if(§§pop() >= §§pop())
                           {
                              loop3:
                              while(true)
                              {
                                 loop4:
                                 while(true)
                                 {
                                    param2.x = _loc3_;
                                    loop5:
                                    while(_loc8_)
                                    {
                                       if(!(_loc8_ || this))
                                       {
                                          continue loop3;
                                       }
                                       param2.y = _loc5_;
                                       while(true)
                                       {
                                          if(!(_loc9_ && _loc3_))
                                          {
                                             if(!_loc8_)
                                             {
                                                break;
                                             }
                                             param2.width = _loc4_ - _loc3_;
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc9_ && param2))
                                          {
                                             if(_loc8_)
                                             {
                                                if(!(_loc9_ && param1))
                                                {
                                                   continue loop4;
                                                }
                                                §§goto(addr656);
                                             }
                                             else
                                             {
                                                §§goto(addr267);
                                             }
                                          }
                                          §§goto(addr170);
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr123);
                                    }
                                 }
                                 return param2;
                              }
                           }
                           else
                           {
                              §§push(this.§0E§);
                           }
                           §§goto(addr653);
                        }
                     }
                  }
               }
               else
               {
                  §&!e§(param1,§@V§);
               }
               §§goto(addr518);
            }
            §§goto(addr667);
         }
         §§goto(addr28);
      }
      
      public function §5w§(param1:int) : uint
      {
         return this.§0E§.§5"<§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && this))
         {
            this.§0E§.§3I§(param1,param2);
         }
      }
      
      public function §6!,§(param1:int) : Number
      {
         return this.§0E§.§ !n§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || this)
         {
            this.§0E§.§6!8§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§%!6§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            if(this.§%!6§ != param1)
            {
               if(!_loc3_)
               {
                  this.§%!6§ = param1;
               }
               do
               {
                  this.§0E§.§+"0§(param1,1);
               }
               while(!(_loc2_ || _loc2_));
               
               addr61:
            }
            return;
         }
         §§goto(addr61);
      }
      
      public function copyVertexDataTo(param1:§1!-§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_ || param1)
         {
            this.§0E§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§'"3§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
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
      
      public function get §catch§() : Number
      {
         return this.§ !D§;
      }
      
      public function get §@"&§() : Number
      {
         return this.§^"0§;
      }
   }
}
