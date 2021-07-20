package §_-4g§
{
   import §_-ia§.§_-dF§;
   import flash.display.BitmapData;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-la§ extends Texture
   {
       
      
      private var §_-iw§:Texture;
      
      private var §_-2s§:Rectangle;
      
      private var §_-3A§:Rectangle;
      
      private var §_-lN§:Boolean;
      
      public function §_-la§(param1:Texture, param2:Rectangle, param3:Boolean)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            super();
         }
         §§push(0);
         if(!(_loc6_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         if(!(_loc6_ && this))
         {
            this.§_-iw§ = param1;
            if(!_loc6_)
            {
               §§goto(addr39);
            }
            §§goto(addr56);
         }
         addr39:
         this.§_-lN§ = param3;
         if(!(_loc6_ && param1))
         {
            this.§_-pT§ = new Rectangle((param2.x + _loc4_) / param1.width,(param2.y + _loc4_) / param1.height,(param2.width - _loc4_ * 2) / param1.width,(param2.height - _loc4_ * 2) / param1.height);
            addr56:
         }
      }
      
      override public function dispose() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            if(this.§_-lN§)
            {
               if(_loc2_)
               {
                  this.§_-iw§.dispose();
                  if(_loc2_)
                  {
                     this.§_-iw§ = null;
                     if(!(_loc1_ && _loc2_))
                     {
                        addr50:
                        this.§_-lN§ = false;
                     }
                  }
               }
            }
            return;
         }
         §§goto(addr50);
      }
      
      override public function adjustVertexData(param1:§_-dF§) : §_-dF§
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         var _loc9_:Point = null;
         var _loc2_:§_-dF§ = super.adjustVertexData(param1);
         §§push(param1.§_-4f§);
         if(!_loc11_)
         {
            §§push(int(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:Number = this.§_-3A§.x;
         var _loc5_:Number = this.§_-3A§.y;
         var _loc6_:Number = this.§_-3A§.width;
         var _loc7_:Number = this.§_-3A§.height;
         var _loc8_:int = 0;
         while(_loc8_ < _loc3_)
         {
            _loc9_ = param1.getTexCoords(_loc8_);
            if(_loc11_)
            {
               continue;
            }
            §§push(_loc2_);
            §§push(_loc8_);
            §§push(_loc4_);
            if(_loc10_ || this)
            {
               §§push(_loc9_.x * _loc6_);
               if(_loc10_)
               {
                  addr82:
                  §§push(§§pop() + §§pop());
                  §§push(_loc5_);
                  if(_loc10_)
                  {
                     §§push(§§pop() + _loc9_.y * _loc7_);
                  }
               }
               §§pop().setTexCoords(§§pop(),§§pop(),§§pop());
               if(!_loc11_)
               {
                  _loc8_++;
               }
               continue;
            }
            §§goto(addr82);
         }
         return _loc2_;
      }
      
      override public function updateBaseTexture(param1:BitmapData, param2:Boolean = true, param3:Boolean = false) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         if(!(_loc4_ && param2))
         {
            this.§_-iw§.updateBaseTexture(param1,param2,param3);
         }
      }
      
      public function get parent() : Texture
      {
         return this.§_-iw§;
      }
      
      public function get §_-pT§() : Rectangle
      {
         return this.§_-2s§.clone();
      }
      
      public function set §_-pT§(param1:Rectangle) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:Rectangle = null;
         if(!_loc5_)
         {
            this.§_-2s§ = param1.clone();
            if(!(_loc5_ && _loc2_))
            {
               this.§_-3A§ = param1.clone();
            }
         }
         var _loc2_:§_-la§ = this.§_-iw§ as §_-la§;
         for(; _loc2_; _loc2_ = _loc2_.§_-iw§ as §_-la§)
         {
            _loc3_ = _loc2_.§_-2s§;
            if(_loc4_)
            {
               this.§_-3A§.x = _loc3_.x + this.§_-3A§.x * _loc3_.width;
               if(!(_loc5_ && _loc3_))
               {
                  this.§_-3A§.y = _loc3_.y + this.§_-3A§.y * _loc3_.height;
                  if(_loc5_ && _loc2_)
                  {
                     continue;
                  }
               }
               this.§_-3A§.width *= _loc3_.width;
               if(_loc4_)
               {
                  this.§_-3A§.height *= _loc3_.height;
               }
            }
         }
      }
      
      override public function get base() : TextureBase
      {
         return this.§_-iw§.base;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(this.§_-iw§.width);
         if(_loc1_)
         {
            §§push(§§pop() * this.§_-2s§.width);
         }
         return §§pop();
      }
      
      override public function get height() : Number
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(this.§_-iw§.height);
         if(!_loc1_)
         {
            §§push(§§pop() * this.§_-2s§.height);
         }
         return §§pop();
      }
      
      override public function get mipMapping() : Boolean
      {
         return this.§_-iw§.mipMapping;
      }
      
      override public function get premultipliedAlpha() : Boolean
      {
         return this.§_-iw§.premultipliedAlpha;
      }
   }
}
