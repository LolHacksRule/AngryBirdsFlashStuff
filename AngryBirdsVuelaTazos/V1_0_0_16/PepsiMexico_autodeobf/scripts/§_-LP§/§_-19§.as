package §_-LP§
{
   import §_-4g§.Texture;
   import §_-4g§.§_-Jq§;
   import §_-Cm§.§_-T5§;
   import §_-HT§.§_-8c§;
   import §_-gY§.§_-K6§;
   import §_-gY§.§_-Vu§;
   import §_-ia§.§_-dF§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-19§ extends §_-rC§
   {
       
      
      private var §_-cX§:Texture;
      
      private var §do §:String;
      
      private var §_-gj§:Boolean;
      
      private var §_-JU§:Boolean;
      
      private var §_-hf§:§_-dF§;
      
      private var §_-mp§:String;
      
      public function §_-19§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(param1)
         {
            _loc5_ = !!(_loc4_ = param1.frame) ? Number(_loc4_.width) : Number(param1.width);
            _loc6_ = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
            super(_loc5_,_loc6_);
            §_-bk§.premultipliedAlpha = param1.premultipliedAlpha;
            §_-bk§.setTexCoords(0,0,0);
            §_-bk§.setTexCoords(1,1,0);
            §_-bk§.setTexCoords(2,0,1);
            §_-bk§.setTexCoords(3,1,1);
            this.§_-cX§ = param1;
            if(!param3)
            {
               this.§do § = !!§_-Vu§.§_-wB§ ? §_-Jq§.NONE : §_-Jq§.§_-mg§;
            }
            else
            {
               this.§do § = !!§_-Vu§.§_-wB§ ? §_-Jq§.§_-mg§ : §_-Jq§.§_-3q§;
            }
            this.§_-gj§ = param2;
            this.§_-JU§ = this.§_-gj§;
            this.§_-mp§ = §_-R4§(this.§_-cX§.mipMapping,this.§_-cX§.repeat,this.§do §,this.§_-gj§);
            return;
         }
         throw new ArgumentError("Texture cannot be null");
      }
      
      public static function §_-aY§(param1:Bitmap) : §_-19§
      {
         return new §_-19§(Texture.§_-aY§(param1));
      }
      
      public static function §_-Dk§(param1:§_-Vu§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-T5§ = null;
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
         var _loc8_:§_-T5§ = new §_-T5§();
         var _loc9_:Array = [§_-Jq§.NONE,§_-Jq§.§_-mg§,§_-Jq§.§_-3q§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc10_)
            {
               _loc11_ = "1";
            }
            (_loc12_ = new §_-T5§()).§_-xm§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
            _loc13_ = _loc7_[_loc11_];
            for each(_loc14_ in [true,false])
            {
               for each(_loc15_ in [true,false])
               {
                  for each(_loc16_ in _loc9_)
                  {
                     _loc17_ = ["2d",!!_loc14_ ? "repeat" : "clamp"];
                     if(_loc16_ == §_-Jq§.NONE)
                     {
                        _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else if(_loc16_ == §_-Jq§.§_-mg§)
                     {
                        _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else
                     {
                        _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                     }
                     _loc8_.§_-xm§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                     param1.§_-fm§(§_-R4§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-Ob§,_loc8_.§_-Ob§);
                  }
               }
            }
         }
      }
      
      public static function §_-R4§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
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
         if(param3 != §_-Jq§.§_-mg§)
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
         §_-bk§.setTexCoords(param1,param2.x,param2.y);
         §_-ay§ = true;
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-bk§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-dF§
      {
         if(!this.§_-hf§)
         {
            this.§_-hf§ = this.§_-cX§.adjustVertexData(§_-bk§);
         }
         return this.§_-hf§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-cX§;
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
         if(param1 != this.§_-cX§)
         {
            this.§_-cX§ = param1;
            _loc2_ = param1.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(param1.height);
            §_-Dl§(_loc3_,_loc4_);
            §_-bk§.premultipliedAlpha = this.§_-cX§.premultipliedAlpha;
            §_-ay§ = true;
         }
         this.§_-hf§ = null;
      }
      
      public function get smoothing() : String
      {
         return this.§do §;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-Jq§.§_-Bk§(param1))
         {
            if(param1 == this.§do §)
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§do § = param1;
            this.§_-mp§ = §_-R4§(this.§_-cX§.mipMapping,this.§_-cX§.repeat,this.§do §,this.§_-gj§);
         }
      }
      
      public function §_-dy§(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-gj§ = this.§_-JU§;
         }
         else
         {
            this.§_-gj§ = true;
         }
         this.§_-mp§ = §_-R4§(this.§_-cX§.mipMapping,this.§_-cX§.repeat,this.§do §,this.§_-gj§);
         §_-bk§.setUniformColor(param1);
         this.§_-hf§ = null;
         §_-ay§ = true;
      }
      
      public function get §_-Rg§() : Boolean
      {
         return this.§_-gj§;
      }
      
      override public function render(param1:§_-K6§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Context3D = §_-Vu§.§_-ez§;
         if(_loc3_ == null)
         {
            throw new §_-8c§();
         }
         §_-RX§();
         var _loc4_:Boolean;
         var _loc5_:Vector.<Number> = !!(_loc4_ = this.§_-cX§.premultipliedAlpha) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-Nw§(_loc4_);
         param1.setProgram(§_-Vu§.§_-dq§.§_-qm§(this.§_-mp§));
         param1.setTextureAt(§_-K6§.§_-JS§,this.§_-cX§.base);
         _loc3_.setVertexBufferAt(0,§_-iD§,§_-dF§.§_-TJ§,Context3DVertexBufferFormat.FLOAT_3);
         _loc3_.setVertexBufferAt(1,§_-VU§,§_-dF§.§_-j4§,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§_-gj§)
         {
            _loc3_.setVertexBufferAt(2,§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-wW§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc3_.drawTriangles(§_-l8§,§_-tv§ * 6,2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-gj§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
   }
}
