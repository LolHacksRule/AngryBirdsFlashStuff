package §_-Ls§
{
   import §_-Bt§.§_-Ty§;
   import §_-Dk§.§ use§;
   import §_-Dk§.Texture;
   import §_-uz§.§_-J4§;
   import §_-vB§.§_-7p§;
   import §_-vB§.§_-Kk§;
   import §_-yu§.§_-dU§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-Nd§ extends §_-nY§
   {
       
      
      private var §_-AF§:Texture;
      
      private var §_-VQ§:String;
      
      private var §_-eA§:Boolean;
      
      private var §_-ii§:Boolean;
      
      private var §_-UI§:§_-Ty§;
      
      private var §_-so§:String;
      
      public function §_-Nd§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§_-Sg§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         super(_loc5_,_loc6_);
         §_-ye§.premultipliedAlpha = param1.premultipliedAlpha;
         §_-ye§.setTexCoords(0,0,0);
         §_-ye§.setTexCoords(1,1,0);
         §_-ye§.setTexCoords(2,0,1);
         §_-ye§.setTexCoords(3,1,1);
         this.§_-AF§ = param1;
         if(!param3)
         {
            this.§_-VQ§ = !!§_-Kk§.§_-GU§ ? § use§.NONE : § use§.§_-3m§;
         }
         else
         {
            this.§_-VQ§ = !!§_-Kk§.§_-GU§ ? § use§.§_-3m§ : § use§.§_-vM§;
         }
         this.§_-eA§ = param2;
         this.§_-ii§ = this.§_-eA§;
         this.§_-so§ = §_-9w§(this.§_-AF§.mipMapping,this.§_-AF§.repeat,this.§_-VQ§,this.§_-eA§);
      }
      
      public static function §_-p9§(param1:Bitmap) : §_-Nd§
      {
         return new §_-Nd§(Texture.§_-p9§(param1));
      }
      
      public static function §_-RL§(param1:§_-Kk§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-dU§ = null;
         var _loc13_:String = null;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc2_:* = "m44 op, va0, vc0  \n" + "mov v0, va1.xy       \n";
         var _loc3_:* = "m44 op, va0, vc0  \n" + "mov v0, va1.xy       \n" + "mov v1, va2       \n";
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
         var _loc8_:§_-dU§ = new §_-dU§();
         var _loc9_:Array = [§ use§.NONE,§ use§.§_-3m§,§ use§.§_-vM§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc10_)
            {
               _loc11_ = "1";
            }
            (_loc12_ = new §_-dU§()).§_-qY§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
            _loc13_ = _loc7_[_loc11_];
            for each(_loc14_ in [true,false])
            {
               for each(_loc15_ in [true,false])
               {
                  for each(_loc16_ in _loc9_)
                  {
                     _loc17_ = ["2d",!!_loc14_ ? "repeat" : "clamp"];
                     if(_loc16_ == § use§.NONE)
                     {
                        _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else if(_loc16_ == § use§.§_-3m§)
                     {
                        _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else
                     {
                        _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                     }
                     _loc8_.§_-qY§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                     param1.§_-dk§(§_-9w§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-vy§,_loc8_.§_-vy§);
                  }
               }
            }
         }
      }
      
      public static function §_-9w§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
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
         if(param3 != § use§.§_-3m§)
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
         §_-ye§.setTexCoords(param1,param2.x,param2.y);
         §_-O1§ = true;
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-ye§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-Ty§
      {
         if(!this.§_-UI§)
         {
            this.§_-UI§ = this.§_-AF§.adjustVertexData(§_-ye§);
         }
         return this.§_-UI§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-AF§;
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
         if(param1 != this.§_-AF§)
         {
            this.§_-AF§ = param1;
            _loc2_ = param1.§_-Sg§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(param1.height);
            §_-JL§(_loc3_,_loc4_);
            §_-ye§.premultipliedAlpha = this.§_-AF§.premultipliedAlpha;
            §_-O1§ = true;
         }
         this.§_-UI§ = null;
      }
      
      public function get smoothing() : String
      {
         return this.§_-VQ§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§ use§.§_-Lw§(param1))
         {
            if(param1 == this.§_-VQ§)
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§_-VQ§ = param1;
            this.§_-so§ = §_-9w§(this.§_-AF§.mipMapping,this.§_-AF§.repeat,this.§_-VQ§,this.§_-eA§);
         }
      }
      
      override public function set color(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-eA§ = this.§_-ii§;
         }
         else
         {
            this.§_-eA§ = true;
         }
         this.§_-so§ = §_-9w§(this.§_-AF§.mipMapping,this.§_-AF§.repeat,this.§_-VQ§,this.§_-eA§);
         §_-ye§.setUniformColor(param1);
         this.§_-UI§ = null;
         §_-O1§ = true;
      }
      
      public function get §_-zG§() : Boolean
      {
         return this.§_-eA§;
      }
      
      override public function render(param1:§_-7p§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Context3D = §_-Kk§.§_-r9§;
         if(_loc3_ == null)
         {
            throw new §_-J4§();
         }
         §_-b§();
         var _loc4_:Boolean;
         var _loc5_:Vector.<Number> = !!(_loc4_ = this.§_-AF§.premultipliedAlpha) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-8V§(_loc4_);
         param1.setProgram(§_-Kk§.§_-NR§.§_-DI§(this.§_-so§));
         param1.setTextureAt(§_-7p§.§_-XC§,this.§_-AF§.base);
         _loc3_.setVertexBufferAt(0,§_-3k§,§_-Ty§.§_-iD§,Context3DVertexBufferFormat.FLOAT_3);
         _loc3_.setVertexBufferAt(1,§_-ao§,§_-Ty§.§_-dL§,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§_-eA§)
         {
            _loc3_.setVertexBufferAt(2,§_-ao§,§_-Ty§.§_-eN§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-0-9§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc3_.drawTriangles(§_-H3§,§_-Fw§ * 6,2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-eA§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
   }
}
