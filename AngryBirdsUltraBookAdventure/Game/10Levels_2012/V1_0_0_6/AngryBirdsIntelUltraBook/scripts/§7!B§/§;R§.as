package §7!B§
{
   import §!!K§.§?%§;
   import §9!k§.§=A§;
   import §9!k§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §;R§ extends DisplayObject
   {
      
      private static var §+!<§:Vector3D;
      
      private static var §3K§:Point;
      
      private static var §'V§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §+!<§ = new Vector3D();
            while(true)
            {
               §3K§ = new Point();
               while(_loc1_ || _loc1_)
               {
                  §'V§ = new Matrix();
                  if(_loc2_)
                  {
                     continue;
                  }
                  return;
                  addr40:
               }
            }
         }
         §§goto(addr40);
      }
      
      protected var § !3§:§=A§;
      
      private var §'!0§:Number = 0.0;
      
      private var §6c§:Number = 0.0;
      
      private var §>!§:uint = 16777215;
      
      public function §;R§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            super();
         }
         while(true)
         {
            this.§ !3§ = new §=A§(4,param4);
            while(!(_loc6_ && param2))
            {
               this.updateVertexData(param1,param2,param3,param4);
               do
               {
                  this.§>!§ = param3;
               }
               while(!(_loc5_ || param1));
               
               if(!(_loc6_ && param3))
               {
                  return;
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
         if(!_loc5_)
         {
            §§push(this.§ !3§);
            while(true)
            {
               §§pop().setPremultipliedAlpha(param4);
               while(true)
               {
                  §§push(this.§ !3§);
                  loop2:
                  while(true)
                  {
                     §§push(0);
                     addr175:
                     while(true)
                     {
                        §§push(0);
                        addr176:
                        while(true)
                        {
                           §§push(0);
                           addr177:
                           while(true)
                           {
                              §§pop().setPosition(§§pop(),§§pop(),§§pop());
                              addr178:
                              while(true)
                              {
                                 §§push(this.§ !3§);
                                 addr166:
                                 while(true)
                                 {
                                    §§push(1);
                                    addr167:
                                    while(true)
                                    {
                                       §§push(param1);
                                       addr168:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr169:
                                          while(true)
                                          {
                                             §§pop().setPosition(§§pop(),§§pop(),§§pop());
                                             addr170:
                                             while(true)
                                             {
                                                §§push(this.§ !3§);
                                                continue loop2;
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
            }
         }
         §§goto(addr49);
      }
      
      override public function getBounds(param1:DisplayObject, param2:Rectangle = null) : Rectangle
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc7_:int = 0;
         if(!(_loc8_ && this))
         {
            if(param2 == null)
            {
               addr29:
               param2 = new Rectangle();
            }
            var _loc3_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(_loc9_ || param2)
            {
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            var _loc5_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(_loc9_ || param1)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!(_loc8_ && this))
            {
               if(param1 == this)
               {
                  if(!(_loc8_ && param1))
                  {
                     addr668:
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
                                    while(_loc9_)
                                    {
                                       param2.y = _loc5_;
                                       while(true)
                                       {
                                          if(_loc9_ || param2)
                                          {
                                             if(_loc8_)
                                             {
                                                break;
                                             }
                                             if(_loc8_)
                                             {
                                                break loop4;
                                             }
                                             param2.width = _loc4_ - _loc3_;
                                             continue;
                                          }
                                          continue loop5;
                                       }
                                       while(true)
                                       {
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             if(_loc9_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc9_)
                                                {
                                                   if(!(_loc8_ && param2))
                                                   {
                                                      §§goto(addr342);
                                                      §§push(Number(§§pop()));
                                                   }
                                                   §§goto(addr647);
                                                }
                                                §§goto(addr362);
                                             }
                                             while(true)
                                             {
                                                if(_loc8_ && param1)
                                                {
                                                   continue loop3;
                                                }
                                                §§goto(addr489);
                                             }
                                             addr482:
                                          }
                                          §§goto(addr436);
                                       }
                                    }
                                    while(true)
                                    {
                                       transformCoords(§'V§,§+!<§.x,§+!<§.y,§3K§);
                                       §§goto(addr482);
                                    }
                                 }
                                 continue loop0;
                              }
                           }
                           else
                           {
                              §§push(this.§ !3§);
                           }
                           §§goto(addr654);
                        }
                     }
                  }
               }
               else
               {
                  §6!8§(param1,§'V§);
               }
               §§goto(addr536);
            }
            §§goto(addr668);
         }
         §§goto(addr29);
      }
      
      public function §?!2§(param1:int) : uint
      {
         return this.§ !3§.§?!c§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!(_loc4_ && _loc3_))
         {
            this.§ !3§.§!A§(param1,param2);
         }
      }
      
      public function §,o§(param1:int) : Number
      {
         return this.§ !3§.§^D§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§ !3§.§%$§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§>!§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || _loc2_)
         {
            if(this.§>!§ != param1)
            {
               do
               {
                  this.§>!§ = param1;
                  do
                  {
                     this.§ !3§.§'f§(param1,1);
                  }
                  while(!(_loc3_ || this));
                  
               }
               while(_loc2_ && _loc2_);
               
               addr74:
            }
            return;
         }
         §§goto(addr74);
      }
      
      public function copyVertexDataTo(param1:§=A§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_)
         {
            this.§ !3§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§?%§, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param1)
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
      
      public function get §9!m§() : Number
      {
         return this.§'!0§;
      }
      
      public function get §;+§() : Number
      {
         return this.§6c§;
      }
   }
}
