package §0! §
{
   import §'j§.§3!!§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §63§ extends Texture
   {
      
      private static var §0_§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0_§ = new Point();
         }
      }
      
      private var §=+§:Texture;
      
      private var §?!M§:Rectangle;
      
      private var §-8§:Rectangle;
      
      private var § -§:Boolean;
      
      private var §&8§:BitmapData;
      
      public function §63§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         if(_loc5_)
         {
            this.§=+§ = param1;
            this.§ -§ = param3;
            if(!_loc4_)
            {
               if(param2 == null)
               {
                  this.§&!%§(new Rectangle(0,0,1,1));
               }
               else
               {
                  this.§&!%§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
               }
            }
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc1_))
         {
            if(this.§ -§)
            {
               if(!_loc2_)
               {
                  this.§=+§.dispose();
                  if(!_loc2_)
                  {
                     addr53:
                     if(this.§&8§)
                     {
                        §§goto(addr56);
                     }
                  }
                  §§goto(addr69);
               }
            }
            §§goto(addr53);
         }
         addr56:
         this.§&8§.dispose();
         if(!(_loc2_ && _loc2_))
         {
            this.§&8§ = null;
            addr69:
            super.dispose();
         }
      }
      
      private function §&!%§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!_loc5_)
         {
            this.§?!M§ = param1;
            if(!_loc5_)
            {
               addr26:
               this.§-8§ = param1.clone();
            }
            var _loc2_:§63§ = this.§=+§ as §63§;
            for(; _loc2_; _loc2_ = _loc2_.§=+§ as §63§)
            {
               _loc3_ = _loc2_.§?!M§;
               if(!_loc5_)
               {
                  this.§-8§.x = _loc3_.x + this.§-8§.x * _loc3_.width;
                  if(_loc4_)
                  {
                     this.§-8§.y = _loc3_.y + this.§-8§.y * _loc3_.height;
                     if(_loc5_ && _loc2_)
                     {
                        continue;
                     }
                     this.§-8§.width *= _loc3_.width;
                     if(_loc5_)
                     {
                        continue;
                     }
                  }
                  this.§-8§.height *= _loc3_.height;
               }
            }
            return;
         }
         §§goto(addr26);
      }
      
      override public function adjustVertexData(param1:§3!!§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(_loc11_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§-8§.x;
         var _loc5_:Number = this.§-8§.y;
         var _loc6_:Number = this.§-8§.width;
         var _loc7_:Number = this.§-8§.height;
         §§push(param2);
         if(_loc11_)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!(_loc10_ && param3))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         for(; _loc9_ < _loc8_; _loc9_++,if(_loc10_ && param1)
         {
            break;
         })
         {
            param1.getTexCoords(_loc9_,§0_§);
            if(_loc10_)
            {
               continue;
            }
            §§push(param1);
            §§push(_loc9_);
            §§push(_loc4_);
            if(_loc11_ || param1)
            {
               §§push(§0_§.x * _loc6_);
               if(_loc11_ || this)
               {
                  addr101:
                  §§push(§§pop() + §§pop());
                  §§push(_loc5_);
                  if(!(_loc10_ && param2))
                  {
                     addr119:
                     §§push(§§pop() + §0_§.y * _loc7_);
                  }
                  §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
                  if(!(_loc11_ || param3))
                  {
                     break;
                  }
                  continue;
               }
               §§goto(addr119);
            }
            §§goto(addr101);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§=+§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§=+§.bitmapData;
      }
      
      override public function get clippedBitmapData() : BitmapData
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:Rectangle = null;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         if(!(_loc6_ && _loc1_))
         {
            if(this.§&8§)
            {
               if(_loc5_ || _loc1_)
               {
                  return this.§&8§;
               }
            }
         }
         var _loc1_:BitmapData = this.bitmapData;
         if(!(_loc6_ && _loc2_))
         {
            if(_loc1_)
            {
               addr56:
               _loc2_ = this.clipping;
               if(!(_loc6_ && _loc2_))
               {
                  _loc2_.x *= this.bitmapData.width;
                  if(!(_loc6_ && _loc2_))
                  {
                     _loc2_.y *= this.bitmapData.height;
                     _loc2_.width *= this.bitmapData.width;
                  }
               }
               _loc2_.height *= this.bitmapData.height;
               §§push(int(Math.max(2,_loc2_.width)));
               if(_loc5_ || _loc1_)
               {
                  _loc3_ = §§pop();
                  §§push(int(Math.max(2,_loc2_.height)));
               }
               _loc4_ = §§pop();
               if(!_loc6_)
               {
                  this.§&8§ = new BitmapData(_loc3_,_loc4_,true,0);
               }
               this.§&8§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
            }
            return this.§&8§;
         }
         §§goto(addr56);
      }
      
      public function get §;!D§() : Boolean
      {
         return this.§ -§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§-8§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§=+§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§=+§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=+§.width);
         if(_loc1_ || this)
         {
            §§push(§§pop() * this.§?!M§.width);
         }
         return §§pop();
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§=+§.height);
         if(_loc1_)
         {
            §§push(§§pop() * this.§?!M§.height);
         }
         return §§pop();
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§=+§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§=+§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§=+§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
