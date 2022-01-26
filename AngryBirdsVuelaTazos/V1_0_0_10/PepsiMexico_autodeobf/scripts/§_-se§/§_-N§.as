package §_-se§
{
   import §_-B2§.§_-H4§;
   import §_-B2§.§_-Ke§;
   import §_-Dp§.§_-N-§;
   import §_-Zq§.§_-8O§;
   import §_-dQ§.§_-uz§;
   import §_-jY§.Texture;
   import §_-jY§.§_-h5§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-N§ extends §_-3u§
   {
       
      
      private var §_-OI§:Texture;
      
      private var §_-Xm§:String;
      
      private var §_-Xl§:Boolean;
      
      private var §_-Op§:Boolean;
      
      private var §_-Nu§:§_-8O§;
      
      private var §_-x3§:String;
      
      public function §_-N§(param1:Texture, param2:Boolean = false)
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
            §_-oi§.premultipliedAlpha = param1.premultipliedAlpha;
            §_-oi§.setTexCoords(0,0,0);
            §_-oi§.setTexCoords(1,1,0);
            §_-oi§.setTexCoords(2,0,1);
            §_-oi§.setTexCoords(3,1,1);
            this.§_-OI§ = param1;
            this.§_-Xm§ = !!§_-H4§.§_-OR§ ? §_-h5§.§_-0q§ : §_-h5§.§_-40§;
            this.§_-Xl§ = param2;
            this.§_-Op§ = this.§_-Xl§;
            this.§_-x3§ = §_-dl§(this.§_-OI§.mipMapping,this.§_-OI§.repeat,this.§_-Xm§,this.§_-Xl§);
            return;
         }
         throw new ArgumentError("Texture cannot be null");
      }
      
      public static function §_-ob§(param1:Bitmap) : §_-N§
      {
         return new §_-N§(Texture.§_-ob§(param1));
      }
      
      public static function §_-Id§(param1:§_-H4§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-N-§ = null;
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
         var _loc8_:§_-N-§ = new §_-N-§();
         var _loc9_:Array = [§_-h5§.NONE,§_-h5§.§_-0q§,§_-h5§.§_-40§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc10_)
            {
               _loc11_ = "1";
            }
            (_loc12_ = new §_-N-§()).§_-a3§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
            _loc13_ = _loc7_[_loc11_];
            for each(_loc14_ in [true,false])
            {
               for each(_loc15_ in [true,false])
               {
                  for each(_loc16_ in _loc9_)
                  {
                     _loc17_ = ["2d",!!_loc14_ ? "repeat" : "clamp"];
                     if(_loc16_ == §_-h5§.NONE)
                     {
                        _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else if(_loc16_ == §_-h5§.§_-0q§)
                     {
                        _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else
                     {
                        _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                     }
                     _loc8_.§_-a3§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                     param1.§_-6R§(§_-dl§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-SY§,_loc8_.§_-SY§);
                  }
               }
            }
         }
      }
      
      public static function §_-dl§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
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
         if(param3 != §_-h5§.§_-0q§)
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
         §_-oi§.setTexCoords(param1,param2.x,param2.y);
         §_-DL§ = true;
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-oi§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-8O§
      {
         if(!this.§_-Nu§)
         {
            this.§_-Nu§ = this.§_-OI§.adjustVertexData(§_-oi§);
         }
         return this.§_-Nu§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-OI§;
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
         if(param1 != this.§_-OI§)
         {
            this.§_-OI§ = param1;
            _loc2_ = param1.frame;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(param1.height);
            §_-A8§(_loc3_,_loc4_);
            §_-oi§.premultipliedAlpha = this.§_-OI§.premultipliedAlpha;
            §_-DL§ = true;
         }
         this.§_-Nu§ = null;
      }
      
      public function get smoothing() : String
      {
         return this.§_-Xm§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-h5§.§_-4L§(param1))
         {
            if(param1 == this.§_-Xm§)
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§_-Xm§ = param1;
            this.§_-x3§ = §_-dl§(this.§_-OI§.mipMapping,this.§_-OI§.repeat,this.§_-Xm§,this.§_-Xl§);
         }
      }
      
      public function §_-Xo§(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-Xl§ = this.§_-Op§;
         }
         else
         {
            this.§_-Xl§ = true;
         }
         this.§_-x3§ = §_-dl§(this.§_-OI§.mipMapping,this.§_-OI§.repeat,this.§_-Xm§,this.§_-Xl§);
         §_-oi§.setUniformColor(param1);
         this.§_-Nu§ = null;
         §_-DL§ = true;
      }
      
      public function get §_-VE§() : Boolean
      {
         return this.§_-Xl§;
      }
      
      override public function render(param1:§_-Ke§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Context3D = §_-H4§.§_-Eu§;
         if(_loc3_ == null)
         {
            throw new §_-uz§();
         }
         §_-9n§();
         var _loc4_:Boolean;
         var _loc5_:Vector.<Number> = !!(_loc4_ = this.§_-OI§.premultipliedAlpha) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-Gg§(_loc4_);
         param1.setProgram(§_-H4§.§_-I9§.§_-4C§(this.§_-x3§));
         param1.setTextureAt(§_-Ke§.§_-7u§,this.§_-OI§.base);
         _loc3_.setVertexBufferAt(0,§_-Dk§,§_-8O§.§_-Fz§,Context3DVertexBufferFormat.FLOAT_3);
         _loc3_.setVertexBufferAt(1,§_-bw§,§_-8O§.§_-px§,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§_-Xl§)
         {
            _loc3_.setVertexBufferAt(2,§_-bw§,§_-8O§.§_-Md§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Lp§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc3_.drawTriangles(§_-Lv§,§_-in§ * 6,2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-Xl§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
   }
}
