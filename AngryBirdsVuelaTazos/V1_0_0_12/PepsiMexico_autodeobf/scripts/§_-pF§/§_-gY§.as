package §_-pF§
{
   import §_-0b§.§_-Bn§;
   import §_-6b§.§_-Bl§;
   import §_-S4§.Texture;
   import §_-S4§.§_-Gb§;
   import §_-nh§.§_-Hm§;
   import §_-v3§.§_-G3§;
   import §_-v3§.§_-L4§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-gY§ extends §_-b3§
   {
       
      
      private var §_-sb§:Texture;
      
      private var §_-tS§:String;
      
      private var §_-Oh§:Boolean;
      
      private var §_-f-§:Boolean;
      
      private var §_-ns§:§_-Bn§;
      
      private var §_-GY§:String;
      
      public function §_-gY§(param1:Texture, param2:Boolean = false)
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
            §_-iv§.premultipliedAlpha = param1.premultipliedAlpha;
            §_-iv§.setTexCoords(0,0,0);
            §_-iv§.setTexCoords(1,1,0);
            §_-iv§.setTexCoords(2,0,1);
            §_-iv§.setTexCoords(3,1,1);
            this.§_-sb§ = param1;
            this.§_-tS§ = !!§_-G3§.§_-ou§ ? §_-Gb§.§_-LT§ : §_-Gb§.§_-Ds§;
            this.§_-Oh§ = param2;
            this.§_-f-§ = this.§_-Oh§;
            this.§_-GY§ = §_-ZO§(this.§_-sb§.mipMapping,this.§_-sb§.repeat,this.§_-tS§,this.§_-Oh§);
            return;
         }
         throw new ArgumentError("Texture cannot be null");
      }
      
      public static function §_-DL§(param1:Bitmap) : §_-gY§
      {
         return new §_-gY§(Texture.§_-DL§(param1));
      }
      
      public static function §_-ML§(param1:§_-G3§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-Bl§ = null;
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
         var _loc8_:§_-Bl§ = new §_-Bl§();
         var _loc9_:Array = [§_-Gb§.NONE,§_-Gb§.§_-LT§,§_-Gb§.§_-Ds§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc10_)
            {
               _loc11_ = "1";
            }
            (_loc12_ = new §_-Bl§()).§_-C§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
            _loc13_ = _loc7_[_loc11_];
            for each(_loc14_ in [true,false])
            {
               for each(_loc15_ in [true,false])
               {
                  for each(_loc16_ in _loc9_)
                  {
                     _loc17_ = ["2d",!!_loc14_ ? "repeat" : "clamp"];
                     if(_loc16_ == §_-Gb§.NONE)
                     {
                        _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else if(_loc16_ == §_-Gb§.§_-LT§)
                     {
                        _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else
                     {
                        _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                     }
                     _loc8_.§_-C§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                     param1.§_-ar§(§_-ZO§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-AN§,_loc8_.§_-AN§);
                  }
               }
            }
         }
      }
      
      public static function §_-ZO§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
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
         if(param3 != §_-Gb§.§_-LT§)
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
         §_-iv§.setTexCoords(param1,param2.x,param2.y);
         §_-vt§ = true;
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-iv§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-Bn§
      {
         if(!this.§_-ns§)
         {
            this.§_-ns§ = this.§_-sb§.adjustVertexData(§_-iv§);
         }
         return this.§_-ns§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-sb§;
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
         if(param1 != this.§_-sb§)
         {
            this.§_-sb§ = param1;
            _loc2_ = param1.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(param1.height);
            §_-Dn§(_loc3_,_loc4_);
            §_-iv§.premultipliedAlpha = this.§_-sb§.premultipliedAlpha;
            §_-vt§ = true;
         }
         this.§_-ns§ = null;
      }
      
      public function get smoothing() : String
      {
         return this.§_-tS§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-Gb§.§_-hX§(param1))
         {
            if(param1 == this.§_-tS§)
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§_-tS§ = param1;
            this.§_-GY§ = §_-ZO§(this.§_-sb§.mipMapping,this.§_-sb§.repeat,this.§_-tS§,this.§_-Oh§);
         }
      }
      
      public function §_-oQ§(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-Oh§ = this.§_-f-§;
         }
         else
         {
            this.§_-Oh§ = true;
         }
         this.§_-GY§ = §_-ZO§(this.§_-sb§.mipMapping,this.§_-sb§.repeat,this.§_-tS§,this.§_-Oh§);
         §_-iv§.setUniformColor(param1);
         this.§_-ns§ = null;
         §_-vt§ = true;
      }
      
      public function get §_-DG§() : Boolean
      {
         return this.§_-Oh§;
      }
      
      override public function render(param1:§_-L4§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Context3D = §_-G3§.§_-FH§;
         if(_loc3_ == null)
         {
            throw new §_-Hm§();
         }
         §_-kr§();
         var _loc4_:Boolean;
         var _loc5_:Vector.<Number> = !!(_loc4_ = this.§_-sb§.premultipliedAlpha) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-Wz§(_loc4_);
         param1.setProgram(§_-G3§.§_-9S§.§_-nf§(this.§_-GY§));
         param1.setTextureAt(§_-L4§.§_-pV§,this.§_-sb§.base);
         _loc3_.setVertexBufferAt(0,§_-hO§,§_-Bn§.§_-u5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc3_.setVertexBufferAt(1,§_-Sf§,§_-Bn§.§_-25§,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§_-Oh§)
         {
            _loc3_.setVertexBufferAt(2,§_-Sf§,§_-Bn§.§_-3V§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Qz§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc3_.drawTriangles(§_-dD§,§_-HB§ * 6,2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-Oh§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
   }
}
