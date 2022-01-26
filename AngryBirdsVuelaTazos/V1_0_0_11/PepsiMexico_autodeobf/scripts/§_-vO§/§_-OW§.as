package §_-vO§
{
   import §_-6A§.§_-po§;
   import §_-Q2§.Texture;
   import §_-Q2§.§_-ZO§;
   import §_-bI§.§_-48§;
   import §_-d5§.§_-6Y§;
   import §_-d5§.§_-F§;
   import §_-iJ§.§_-hs§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-OW§ extends §_-O9§
   {
       
      
      private var §_-QH§:Texture;
      
      private var §_-Yk§:String;
      
      private var §_-L§:Boolean;
      
      private var §_-6k§:Boolean;
      
      private var §_-fr§:§_-po§;
      
      private var §_-I§:String;
      
      public function §_-OW§(param1:Texture, param2:Boolean = false)
      {
         var _loc3_:Rectangle = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1)
         {
            _loc3_ = param1.frame;
            _loc4_ = !!_loc3_ ? Number(_loc3_.width) : Number(param1.width);
            _loc5_ = !!_loc3_ ? Number(_loc3_.height) : Number(param1.height);
            super(_loc4_,_loc5_);
            §_-k0§.premultipliedAlpha = param1.premultipliedAlpha;
            §_-k0§.setTexCoords(0,0,0);
            §_-k0§.setTexCoords(1,1,0);
            §_-k0§.setTexCoords(2,0,1);
            §_-k0§.setTexCoords(3,1,1);
            this.§_-QH§ = param1;
            this.§_-Yk§ = !!§_-6Y§.§_-rs§ ? §_-ZO§.§_-Su§ : §_-ZO§.§_-It§;
            this.§_-L§ = param2;
            this.§_-6k§ = this.§_-L§;
            this.§_-I§ = §_-U9§(this.§_-QH§.mipMapping,this.§_-QH§.repeat,this.§_-Yk§,this.§_-L§);
            return;
         }
         throw new ArgumentError("Texture cannot be null");
      }
      
      public static function §_-FU§(param1:Bitmap) : §_-OW§
      {
         return new §_-OW§(Texture.§_-FU§(param1));
      }
      
      public static function §_-Mr§(param1:§_-6Y§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-hs§ = null;
         var _loc13_:String = null;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc2_:* = "m44 op, va0, vc0  \n" + "mov v0, va1       \n";
         var _loc3_:* = "m44 op, va0, vc0  \n" + "mov v0, va1       \n" + "mov v1, va2       \n";
         var _loc4_:* = "tex ft1, v0, fs1 <???> \n" + "mov oc, ft1 \n";
         var _loc5_:* = "tex ft1, v0, fs1 <???> \n" + "mul ft2, ft1, v1       \n" + "mul oc, ft2, fc0       \n";
         var _loc6_:Object = {
            "0":_loc2_,
            "1":_loc3_
         };
         var _loc7_:Object = {
            "0":_loc4_,
            "1":_loc5_
         };
         var _loc8_:§_-hs§ = new §_-hs§();
         var _loc9_:Array = [§_-ZO§.NONE,§_-ZO§.§_-Su§,§_-ZO§.§_-It§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc10_)
            {
               _loc11_ = "1";
            }
            (_loc12_ = new §_-hs§()).§_-wS§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
            _loc13_ = _loc7_[_loc11_];
            for each(_loc14_ in [true,false])
            {
               for each(_loc15_ in [true,false])
               {
                  for each(_loc16_ in _loc9_)
                  {
                     _loc17_ = ["2d",!!_loc14_ ? "repeat" : "clamp"];
                     if(_loc16_ == §_-ZO§.NONE)
                     {
                        _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else if(_loc16_ == §_-ZO§.§_-Su§)
                     {
                        _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else
                     {
                        _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                     }
                     _loc8_.§_-wS§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                     param1.§_-TZ§(§_-U9§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-NX§,_loc8_.§_-NX§);
                  }
               }
            }
         }
      }
      
      public static function §_-U9§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
      {
         var _loc5_:* = "image|";
         if(!param1)
         {
            _loc5_ += "N";
         }
         if(param2)
         {
            _loc5_ += "R";
         }
         if(param3 != §_-ZO§.§_-Su§)
         {
            _loc5_ += param3.charAt(0);
         }
         if(param4)
         {
            _loc5_ += "C";
         }
         return _loc5_;
      }
      
      override public function dispose() : void
      {
         super.dispose();
      }
      
      public function setTexCoords(param1:int, param2:Point) : void
      {
         §_-k0§.setTexCoords(param1,param2.x,param2.y);
         §_-Bg§ = true;
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-k0§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-po§
      {
         if(!this.§_-fr§)
         {
            this.§_-fr§ = this.§_-QH§.adjustVertexData(§_-k0§);
         }
         return this.§_-fr§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-QH§;
      }
      
      public function set texture(param1:Texture) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(param1 == null)
         {
            throw new ArgumentError("Texture cannot be null");
         }
         if(param1 != this.§_-QH§)
         {
            this.§_-QH§ = param1;
            _loc2_ = param1.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(param1.height);
            §with§(_loc3_,_loc4_);
            §_-k0§.premultipliedAlpha = this.§_-QH§.premultipliedAlpha;
            §_-Bg§ = true;
         }
         this.§_-fr§ = null;
      }
      
      public function get smoothing() : String
      {
         return this.§_-Yk§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-ZO§.§_-oA§(param1))
         {
            if(param1 == this.§_-Yk§)
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§_-Yk§ = param1;
            this.§_-I§ = §_-U9§(this.§_-QH§.mipMapping,this.§_-QH§.repeat,this.§_-Yk§,this.§_-L§);
         }
      }
      
      public function §_-3U§(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-L§ = this.§_-6k§;
         }
         else
         {
            this.§_-L§ = true;
         }
         this.§_-I§ = §_-U9§(this.§_-QH§.mipMapping,this.§_-QH§.repeat,this.§_-Yk§,this.§_-L§);
         §_-k0§.setUniformColor(param1);
         this.§_-fr§ = null;
         §_-Bg§ = true;
      }
      
      public function get §_-Z1§() : Boolean
      {
         return this.§_-L§;
      }
      
      override public function render(param1:§_-F§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Context3D = §_-6Y§.§_-0D§;
         if(_loc3_ == null)
         {
            throw new §_-48§();
         }
         §_-DY§();
         var _loc4_:Boolean;
         var _loc5_:Vector.<Number> = !!(_loc4_ = this.§_-QH§.premultipliedAlpha) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-mZ§(_loc4_);
         param1.setProgram(§_-6Y§.§true§.§_-O2§(this.§_-I§));
         param1.setTextureAt(§_-F§.§_-fQ§,this.§_-QH§.base);
         _loc3_.setVertexBufferAt(0,§_-iF§,§_-po§.§_-hR§,Context3DVertexBufferFormat.FLOAT_3);
         _loc3_.setVertexBufferAt(1,§_-K7§,§_-po§.§_-L8§,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§_-L§)
         {
            _loc3_.setVertexBufferAt(2,§_-K7§,§_-po§.§_-XJ§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-5y§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc3_.drawTriangles(§_-ri§,§_-8v§ * 6,2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-L§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
   }
}
