package §^V§
{
   import §-Z§.§ G§;
   import §3!$§.§+^§;
   import §3!$§.transformCoords;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §09§ extends DisplayObject
   {
      
      private static var §-!%§:Vector3D;
      
      private static var §?a§:Point;
      
      private static var §"R§:Matrix;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §-!%§ = new Vector3D();
            while(true)
            {
               §?a§ = new Point();
               loop1:
               while(_loc1_)
               {
                  while(true)
                  {
                     §"R§ = new Matrix();
                     if(!_loc2_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr48);
      }
      
      protected var §;#§:§+^§;
      
      private var §%T§:Number = 0.0;
      
      private var §^7§:Number = 0.0;
      
      private var §^!7§:uint = 16777215;
      
      public function §09§(param1:Number, param2:Number, param3:uint = 16777215, param4:Boolean = true)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            super();
            while(true)
            {
               this.§;#§ = new §+^§(4,param4);
               while(true)
               {
                  this.updateVertexData(param1,param2,param3,param4);
                  §§goto(addr67);
               }
            }
         }
         addr67:
         while(true)
         {
            this.§^!7§ = param3;
            if(_loc6_ || this)
            {
               if(_loc6_)
               {
                  if(_loc6_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      public function get highQuality() : Boolean
      {
         return false;
      }
      
      protected function updateVertexData(param1:Number, param2:Number, param3:uint, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         §§push(this.§;#§);
         loop0:
         while(true)
         {
            §§pop().setPremultipliedAlpha(param4);
            §§push(this.§;#§);
            addr155:
            while(true)
            {
               §§push(0);
               addr156:
               while(true)
               {
                  §§push(0);
                  addr157:
                  while(true)
                  {
                     §§push(0);
                     addr158:
                     while(true)
                     {
                        §§pop().setPosition(§§pop(),§§pop(),§§pop());
                        addr159:
                        while(true)
                        {
                           §§push(this.§;#§);
                           continue loop0;
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
         if(!(_loc8_ && this))
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
            var _loc5_:Number = Number.MAX_VALUE;
            §§push(-Number.MAX_VALUE);
            if(_loc9_)
            {
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            if(!(_loc8_ && _loc3_))
            {
               if(param1 == this)
               {
                  if(!_loc8_)
                  {
                     addr512:
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
                                 while(true)
                                 {
                                    while(true)
                                    {
                                       param2.x = _loc3_;
                                       loop6:
                                       while(!(_loc8_ && _loc3_))
                                       {
                                          param2.y = _loc5_;
                                          while(true)
                                          {
                                             if(!_loc8_)
                                             {
                                                if(_loc8_)
                                                {
                                                   break;
                                                }
                                                continue;
                                             }
                                             continue loop6;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr293);
                                          }
                                       }
                                       continue loop3;
                                    }
                                    return param2;
                                 }
                              }
                           }
                           else
                           {
                              §§push(this.§;#§);
                           }
                           §§goto(addr503);
                        }
                     }
                  }
               }
               else
               {
                  §8n§(param1,§"R§);
               }
               §§goto(addr413);
            }
            §§goto(addr512);
         }
         §§goto(addr29);
      }
      
      public function §0B§(param1:int) : uint
      {
         return this.§;#§.§2$§(param1);
      }
      
      public function setVertexColor(param1:int, param2:uint) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§;#§.§[!"§(param1,param2);
         }
      }
      
      public function §7!"§(param1:int) : Number
      {
         return this.§;#§.§+P§(param1);
      }
      
      public function setVertexAlpha(param1:int, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§;#§.§,`§(param1,param2);
         }
      }
      
      public function get color() : uint
      {
         return this.§^!7§;
      }
      
      override public function set color(param1:uint) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§^!7§ != param1)
            {
               if(!(_loc2_ && this))
               {
                  this.§^!7§ = param1;
               }
               do
               {
                  this.§;#§.§>,§(param1,1);
               }
               while(!_loc3_);
               
               addr42:
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function copyVertexDataTo(param1:§+^§, param2:int = 0, param3:Number = 1.0, param4:Matrix3D = null) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && this))
         {
            this.§;#§.copyTo(param1,param2,param3,true,param4);
         }
      }
      
      override public function render(param1:§ G§, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
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
      
      public function get §1!%§() : Number
      {
         return this.§%T§;
      }
      
      public function get §>L§() : Number
      {
         return this.§^7§;
      }
   }
}
