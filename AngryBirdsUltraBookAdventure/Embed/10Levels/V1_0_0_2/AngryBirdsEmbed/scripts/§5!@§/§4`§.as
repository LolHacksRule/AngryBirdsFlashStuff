package §5!@§
{
   import §@e§.§;2§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §4`§ extends Texture
   {
      
      private static var §'l§:Point;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §'l§ = new Point();
         }
      }
      
      private var §[S§:Texture;
      
      private var §&Q§:Rectangle;
      
      private var §4R§:Rectangle;
      
      private var §3p§:Boolean;
      
      private var §-!<§:BitmapData;
      
      public function §4`§(param1:Texture, param2:Rectangle, param3:Boolean = false)
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         super();
         if(_loc5_ || param2)
         {
            this.§[S§ = param1;
            if(!(_loc4_ && param2))
            {
               this.§3p§ = param3;
               if(!_loc4_)
               {
                  if(param2 == null)
                  {
                     if(_loc5_ || param2)
                     {
                        this.§-?§(new Rectangle(0,0,1,1));
                        if(_loc5_ || param3)
                        {
                           addr86:
                        }
                     }
                     §§goto(addr86);
                  }
                  else
                  {
                     this.§-?§(new Rectangle(param2.x / param1.width,param2.y / param1.height,param2.width / param1.width,param2.height / param1.height));
                  }
               }
            }
            return;
         }
         §§goto(addr86);
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(this.§3p§)
         {
            if(!_loc2_)
            {
               this.§[S§.dispose();
               §§goto(addr34);
            }
            §§goto(addr37);
         }
         addr34:
         if(this.§-!<§)
         {
            addr37:
            this.§-!<§.dispose();
            this.§-!<§ = null;
         }
         super.dispose();
      }
      
      private function §-?§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(_loc4_ || param1)
         {
            this.§&Q§ = param1;
            if(_loc4_)
            {
               this.§4R§ = param1.clone();
            }
         }
         var _loc2_:§4`§ = this.§[S§ as §4`§;
         for(; _loc2_; _loc2_ = _loc2_.§[S§ as §4`§)
         {
            _loc3_ = _loc2_.§&Q§;
            if(_loc4_ || this)
            {
               this.§4R§.x = _loc3_.x + this.§4R§.x * _loc3_.width;
               if(!_loc5_)
               {
                  addr78:
                  this.§4R§.y = _loc3_.y + this.§4R§.y * _loc3_.height;
                  if(!(_loc4_ || _loc2_))
                  {
                     continue;
                  }
               }
               this.§4R§.width *= _loc3_.width;
               if(!_loc5_)
               {
                  this.§4R§.height *= _loc3_.height;
               }
               continue;
            }
            §§goto(addr78);
         }
      }
      
      override public function adjustVertexData(param1:§;2§, param2:int, param3:int) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         if(!_loc10_)
         {
            super.adjustVertexData(param1,param2,param3);
         }
         var _loc4_:Number = this.§4R§.x;
         var _loc5_:Number = this.§4R§.y;
         var _loc6_:Number = this.§4R§.width;
         var _loc7_:Number = this.§4R§.height;
         §§push(param2);
         if(_loc11_ || param2)
         {
            §§push(int(§§pop() + param3));
         }
         var _loc8_:* = §§pop();
         §§push(param2);
         if(!(_loc10_ && param2))
         {
            §§push(int(§§pop()));
         }
         var _loc9_:* = §§pop();
         while(_loc9_ < _loc8_)
         {
            param1.getTexCoords(_loc9_,§'l§);
            if(_loc10_)
            {
               continue;
            }
            §§push(param1);
            §§push(_loc9_);
            §§push(_loc4_);
            if(_loc11_)
            {
               §§push(§'l§.x * _loc6_);
               if(!(_loc10_ && this))
               {
                  addr111:
                  §§push(§§pop() + §§pop());
                  §§push(_loc5_);
                  if(_loc11_)
                  {
                     §§push(§§pop() + §'l§.y * _loc7_);
                  }
               }
               §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
               if(_loc10_ && this)
               {
                  break;
               }
               _loc9_++;
               if(_loc10_ && this)
               {
                  break;
               }
               continue;
            }
            §§goto(addr111);
         }
      }
      
      override public function get parent() : Texture
      {
         return this.§[S§;
      }
      
      override public function get bitmapData() : BitmapData
      {
         return this.§[S§.bitmapData;
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
            if(this.§-!<§)
            {
               if(!(_loc6_ && this))
               {
                  §§goto(addr40);
               }
            }
            var _loc1_:BitmapData = this.bitmapData;
            if(_loc5_)
            {
               if(_loc1_)
               {
                  addr51:
                  _loc2_ = this.clipping;
                  _loc2_.x *= this.bitmapData.width;
                  _loc2_.y *= this.bitmapData.height;
                  _loc2_.width *= this.bitmapData.width;
                  _loc2_.height *= this.bitmapData.height;
                  if(_loc5_ || _loc2_)
                  {
                     §§push(int(Math.max(2,_loc2_.width)));
                     if(_loc5_ || this)
                     {
                        _loc3_ = §§pop();
                        addr118:
                        §§push(int(Math.max(2,_loc2_.height)));
                     }
                     _loc4_ = §§pop();
                     if(!(_loc6_ && this))
                     {
                        this.§-!<§ = new BitmapData(_loc3_,_loc4_,true,0);
                        if(_loc5_)
                        {
                           this.§-!<§.copyPixels(_loc1_,_loc2_,new Point(0,0),null,null,true);
                        }
                     }
                     §§goto(addr164);
                  }
                  §§goto(addr118);
               }
               addr164:
               return this.§-!<§;
            }
            §§goto(addr51);
         }
         addr40:
         return this.§-!<§;
      }
      
      public function get §9q§() : Boolean
      {
         return this.§3p§;
      }
      
      override public function get clipping() : Rectangle
      {
         return this.§4R§.clone();
      }
      
      override public function getBase(param1:Context3D) : TextureBase
      {
         return this.§[S§.getBase(param1);
      }
      
      override public function get root() : Texture
      {
         return this.§[S§.root;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§[S§.width);
         if(!_loc2_)
         {
            §§push(§§pop() * this.§&Q§.width);
         }
         return §§pop();
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§[S§.height);
         if(!(_loc1_ && this))
         {
            §§push(§§pop() * this.§&Q§.height);
         }
         return §§pop();
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§[S§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§[S§.premultipliedAlpha;
      }
      
      override public function requestBaseTextureUpdate(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§[S§.requestBaseTextureUpdate(param1);
         }
      }
   }
}
