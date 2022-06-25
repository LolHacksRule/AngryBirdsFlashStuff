package §6!J§
{
   import §'7§.VertexData;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §"!]§ extends Texture
   {
      
      private static var §3!;§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §3!;§ = new Point();
         }
      }
      
      private var §;4§:Texture;
      
      private var §<!j§:Rectangle;
      
      private var §8!e§:Rectangle;
      
      private var §?!T§:Boolean;
      
      private var §^!+§:BitmapData;
      
      public function §"!]§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_ || param3)
         {
            super();
            while(true)
            {
               this.§;4§ = param1;
               addr94:
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               addr101:
               this.§[!Q§(new Rectangle(0,0,1,1));
               addr24:
               return;
               addr110:
            }
         }
         loop1:
         while(true)
         {
            this.§?!T§ = param3;
            for(; param2 != null; if(!_loc4_)
            {
               break;
            },if(_loc4_)
            {
               continue loop1;
            })
            {
               this.§[!Q§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
               if(!_loc5_)
               {
                  continue;
               }
               §§goto(addr110);
            }
            §§goto(addr94);
            if(!(_loc4_ || param3))
            {
               continue;
            }
            §§goto(addr24);
         }
         §§goto(addr101);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            §§push(this.§?!T§);
            while(true)
            {
               if(§§pop())
               {
                  while(true)
                  {
                     this.§;4§.dispose();
                     addr103:
                     while(true)
                     {
                     }
                  }
                  addr99:
               }
               while(true)
               {
                  §§push(Boolean(this.§^!+§));
                  if(_loc1_)
                  {
                     break;
                  }
                  if(§§pop())
                  {
                     loop4:
                     while(true)
                     {
                        this.§^!+§.dispose();
                        loop5:
                        while(_loc2_ || _loc1_)
                        {
                           while(true)
                           {
                              this.§^!+§ = null;
                              loop7:
                              while(true)
                              {
                                 if(_loc1_ && _loc2_)
                                 {
                                    continue loop5;
                                 }
                                 if(_loc2_)
                                 {
                                    addr76:
                                    while(true)
                                    {
                                       super.dispose();
                                       if(_loc2_)
                                       {
                                          continue loop4;
                                       }
                                       continue loop7;
                                       §§goto(addr76);
                                    }
                                    return;
                                    addr52:
                                    addr29:
                                 }
                                 §§goto(addr99);
                              }
                           }
                        }
                        §§goto(addr103);
                     }
                  }
                  §§goto(addr29);
               }
            }
         }
         §§goto(addr95);
      }
      
      private function §[!Q§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(_loc4_ || _loc3_)
         {
            this.§<!j§ = param1;
            if(!(_loc5_ && this))
            {
               addr36:
               this.§8!e§ = param1.clone();
            }
            var _loc2_:§"!]§ = this.§;4§ as §"!]§;
            loop0:
            for(; _loc2_; _loc2_ = _loc2_.§;4§ as §"!]§)
            {
               _loc3_ = _loc2_.§<!j§;
               if(_loc4_ || param1)
               {
                  this.§8!e§.x = _loc3_.x + this.§8!e§.x * _loc3_.width;
                  while(true)
                  {
                     this.§8!e§.y = _loc3_.y + this.§8!e§.y * _loc3_.height;
                     while(!_loc5_)
                     {
                        while(true)
                        {
                           this.§8!e§.width *= _loc3_.width;
                           do
                           {
                              this.§8!e§.height *= _loc3_.height;
                           }
                           while(_loc5_);
                           
                           if(_loc5_)
                           {
                              break;
                           }
                           if(false)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
               }
               while(true)
               {
                  §§goto(addr87);
               }
            }
            return;
         }
         §§goto(addr36);
      }
      
      override public function adjustVertexData(param1:VertexData, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_ || param3)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§8!e§.x;
         var _loc5_:Number = this.§8!e§.y;
         var _loc6_:Number = this.§8!e§.width;
         var _loc7_:Number = this.§8!e§.height;
         §§push(param2);
         if(!(_loc10_ && param3))
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(true)
         {
            §§push(_loc9_);
            if(_loc11_ || param2)
            {
               if(_loc11_)
               {
                  if(§§pop() >= _loc8_)
                  {
                     if(!_loc10_)
                     {
                        break;
                     }
                     loop1:
                     while(true)
                     {
                        if(_loc11_ || param2)
                        {
                           if(_loc11_ || param3)
                           {
                              break;
                           }
                           addr177:
                           while(true)
                           {
                              §§push(param1);
                              §§push(_loc9_);
                              §§push(_loc4_);
                              if(!(_loc10_ && param3))
                              {
                                 §§push(§3!;§.x * _loc6_);
                                 if(!(_loc10_ && param1))
                                 {
                                    addr157:
                                    §§push(§§pop() + §§pop());
                                    §§push(_loc5_);
                                    if(!_loc10_)
                                    {
                                       addr160:
                                       §§push(§§pop() + §3!;§.y * _loc7_);
                                    }
                                    §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                                    while(true)
                                    {
                                       §§push(_loc9_);
                                       addr98:
                                       while(true)
                                       {
                                          §§push(§§pop() + 1);
                                          if(!(_loc10_ && param1))
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          continue loop1;
                                       }
                                    }
                                    addr168:
                                 }
                                 §§goto(addr160);
                              }
                              §§goto(addr157);
                           }
                        }
                        §§goto(addr168);
                     }
                     continue;
                  }
                  param1.getTexCoords(_loc9_,§3!;§);
                  §§goto(addr177);
               }
               §§goto(addr98);
            }
            §§goto(addr107);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§;4§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§;4§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc6_ && this))
         {
            if(this.§^!+§)
            {
               if(!(_loc6_ && _loc2_))
               {
                  §§goto(addr41);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(_loc5_)
            {
               if(_loc1_)
               {
                  addr53:
                  _loc2_ = this.clipping;
                  if(_loc5_ || _loc3_)
                  {
                     _loc2_.x *= this.bitmapData.width;
                  }
                  loop0:
                  while(true)
                  {
                     _loc2_.y *= this.bitmapData.height;
                     while(true)
                     {
                        _loc2_.width *= this.bitmapData.width;
                        loop2:
                        while(true)
                        {
                           _loc2_.height *= this.bitmapData.height;
                           addr176:
                           while(true)
                           {
                              §§push(int(Math.max(2,_loc2_.width)));
                              while(true)
                              {
                                 _loc3_ = §§pop();
                                 §§push(int(Math.max(2,_loc2_.height)));
                                 addr166:
                                 continue loop2;
                                 if(!(_loc6_ && this))
                                 {
                                    _loc4_ = §§pop();
                                    continue loop0;
                                 }
                              }
                           }
                        }
                        addr107:
                        if(_loc5_ || _loc3_)
                        {
                           if(false)
                           {
                              while(true)
                              {
                                 this.§^!+§ = new BitmapData(_loc3_,_loc4_,true,0);
                                 do
                                 {
                                    this.§^!+§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                                 }
                                 while(_loc6_);
                                 
                                 if(!(_loc6_ && _loc2_))
                                 {
                                    if(!(_loc6_ && _loc3_))
                                    {
                                       if(!_loc6_)
                                       {
                                          §§goto(addr107);
                                       }
                                       else
                                       {
                                          §§goto(addr176);
                                       }
                                    }
                                    break;
                                 }
                                 continue loop0;
                              }
                              §§goto(addr159);
                              addr116:
                           }
                           §§goto(addr216);
                        }
                     }
                  }
               }
               addr216:
               return this.§^!+§;
            }
            §§goto(addr53);
         }
         addr41:
         return this.§^!+§;
      }
      
      public function get §7j§() : Boolean
      {
         return this.§?!T§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§8!e§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§;4§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§;4§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§;4§.width);
         if(!(_loc1_ && _loc1_))
         {
            return §§pop() * this.§<!j§.width;
         }
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§;4§.height);
         if(!_loc2_)
         {
            return §§pop() * this.§<!j§.height;
         }
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§;4§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§;4§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§;4§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
