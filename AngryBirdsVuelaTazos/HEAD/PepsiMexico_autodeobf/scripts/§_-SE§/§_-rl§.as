package §_-SE§
{
   import §_-Ku§.§_-Ha§;
   import §_-Ku§.§_-Nq§;
   import §_-OP§.§_-fW§;
   import §_-Q0§.Texture;
   import §_-Q0§.§_-qr§;
   import §_-QR§.§_-Ft§;
   import §_-oa§.§_-9B§;
   import flash.display.Bitmap;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §_-rl§ extends §_-uX§
   {
       
      
      private var §_-C6§:Texture;
      
      private var §_-41§:String;
      
      private var §_-HJ§:Boolean;
      
      private var §_-aH§:Boolean;
      
      private var §_-1R§:§_-fW§;
      
      private var §_-JO§:String;
      
      public function §_-rl§(param1:Texture, param2:Boolean = false, param3:Boolean = true)
      {
         var _loc4_:Rectangle;
         var _loc5_:Number = !!(_loc4_ = param1.§_-kg§) ? Number(_loc4_.width) : Number(param1.width);
         var _loc6_:Number = !!_loc4_ ? Number(_loc4_.height) : Number(param1.height);
         super(_loc5_,_loc6_);
         §_-ny§.premultipliedAlpha = param1.premultipliedAlpha;
         §_-ny§.setTexCoords(0,0,0);
         §_-ny§.setTexCoords(1,1,0);
         §_-ny§.setTexCoords(2,0,1);
         §_-ny§.setTexCoords(3,1,1);
         this.§_-C6§ = param1;
         if(!param3)
         {
            this.§_-41§ = !!§_-Ha§.§_-0E§ ? §_-qr§.NONE : §_-qr§.§_-y3§;
         }
         else
         {
            this.§_-41§ = !!§_-Ha§.§_-0E§ ? §_-qr§.§_-y3§ : §_-qr§.§_-67§;
         }
         this.§_-HJ§ = param2;
         this.§_-aH§ = this.§_-HJ§;
         this.§_-JO§ = §_-in§(this.§_-C6§.mipMapping,this.§_-C6§.repeat,this.§_-41§,this.§_-HJ§);
      }
      
      public static function §_-mr§(param1:Bitmap) : §_-rl§
      {
         return new §_-rl§(Texture.§_-mr§(param1));
      }
      
      public static function §_-pO§(param1:§_-Ha§) : void
      {
         var _loc10_:Boolean = false;
         var _loc11_:String = null;
         var _loc12_:§_-9B§ = null;
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
         var _loc8_:§_-9B§ = new §_-9B§();
         var _loc9_:Array = [§_-qr§.NONE,§_-qr§.§_-y3§,§_-qr§.§_-67§];
         for each(_loc10_ in [false,true])
         {
            _loc11_ = "0";
            if(_loc10_)
            {
               _loc11_ = "1";
            }
            (_loc12_ = new §_-9B§()).§_-aM§(Context3DProgramType.VERTEX,_loc6_[_loc11_]);
            _loc13_ = _loc7_[_loc11_];
            for each(_loc14_ in [true,false])
            {
               for each(_loc15_ in [true,false])
               {
                  for each(_loc16_ in _loc9_)
                  {
                     _loc17_ = ["2d",!!_loc14_ ? "repeat" : "clamp"];
                     if(_loc16_ == §_-qr§.NONE)
                     {
                        _loc17_.push("nearest",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else if(_loc16_ == §_-qr§.§_-y3§)
                     {
                        _loc17_.push("linear",!!_loc15_ ? "mipnearest" : "mipnone");
                     }
                     else
                     {
                        _loc17_.push("linear",!!_loc15_ ? "miplinear" : "mipnone");
                     }
                     _loc8_.§_-aM§(Context3DProgramType.FRAGMENT,_loc13_.replace("???",_loc17_.join()));
                     param1.§_-mX§(§_-in§(_loc15_,_loc14_,_loc16_,_loc10_),_loc12_.§_-n8§,_loc8_.§_-n8§);
                  }
               }
            }
         }
      }
      
      public static function §_-in§(param1:Boolean = true, param2:Boolean = false, param3:String = "bilinear", param4:Boolean = false) : String
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
         if(param3 != §_-qr§.§_-y3§)
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
         §_-ny§.setTexCoords(param1,param2.x,param2.y);
         §_-rm§ = true;
      }
      
      public function getTexCoords(param1:int) : Point
      {
         return §_-ny§.getTexCoords(param1);
      }
      
      override public function get vertexData() : §_-fW§
      {
         if(!this.§_-1R§)
         {
            this.§_-1R§ = this.§_-C6§.adjustVertexData(§_-ny§);
         }
         return this.§_-1R§;
      }
      
      public function get texture() : Texture
      {
         return this.§_-C6§;
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
         if(param1 != this.§_-C6§)
         {
            this.§_-C6§ = param1;
            _loc2_ = param1.§_-kg§;
            _loc3_ = !!_loc2_ ? Number(_loc2_.width) : Number(param1.width);
            _loc4_ = !!_loc2_ ? Number(_loc2_.height) : Number(param1.height);
            §_-UN§(_loc3_,_loc4_);
            §_-ny§.premultipliedAlpha = this.§_-C6§.premultipliedAlpha;
            §_-rm§ = true;
         }
         this.§_-1R§ = null;
      }
      
      public function get smoothing() : String
      {
         return this.§_-41§;
      }
      
      public function set smoothing(param1:String) : void
      {
         if(§_-qr§.§_-jI§(param1))
         {
            if(param1 == this.§_-41§)
            {
               throw new ArgumentError("Invalid smoothing mode: " + this.smoothing);
            }
            this.§_-41§ = param1;
            this.§_-JO§ = §_-in§(this.§_-C6§.mipMapping,this.§_-C6§.repeat,this.§_-41§,this.§_-HJ§);
         }
      }
      
      override public function setColor(param1:uint) : void
      {
         if((param1 & 16777215) == 16777215)
         {
            this.§_-HJ§ = this.§_-aH§;
         }
         else
         {
            this.§_-HJ§ = true;
         }
         this.§_-JO§ = §_-in§(this.§_-C6§.mipMapping,this.§_-C6§.repeat,this.§_-41§,this.§_-HJ§);
         §_-ny§.setUniformColor(param1);
         this.§_-1R§ = null;
         §_-rm§ = true;
      }
      
      public function get §_-Rf§() : Boolean
      {
         return this.§_-HJ§;
      }
      
      override public function render(param1:§_-Nq§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Context3D = §_-Ha§.§_-8o§;
         if(_loc3_ == null)
         {
            throw new §_-Ft§();
         }
         §_-Zf§();
         var _loc4_:Boolean;
         var _loc5_:Vector.<Number> = !!(_loc4_ = this.§_-C6§.premultipliedAlpha) ? new <Number>[param2,param2,param2,param2] : new <Number>[1,1,1,param2];
         param1.§_-Mc§(_loc4_);
         param1.setProgram(§_-Ha§.§_-Aq§.§_-w2§(this.§_-JO§));
         param1.setTextureAt(§_-Nq§.§_-C2§,this.§_-C6§.base);
         _loc3_.setVertexBufferAt(0,§_-3u§,§_-fW§.§_-Jx§,Context3DVertexBufferFormat.FLOAT_3);
         _loc3_.setVertexBufferAt(1,§_-cr§,§_-fW§.§_-JR§,Context3DVertexBufferFormat.FLOAT_2);
         if(this.§_-HJ§)
         {
            _loc3_.setVertexBufferAt(2,§_-cr§,§_-fW§.§_-Ef§,Context3DVertexBufferFormat.FLOAT_4);
         }
         _loc3_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Tm§,true);
         _loc3_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc5_,1);
         _loc3_.drawTriangles(§_-X5§,§_-1n§ * 6,2);
         _loc3_.setVertexBufferAt(0,null);
         _loc3_.setVertexBufferAt(1,null);
         if(this.§_-HJ§)
         {
            _loc3_.setVertexBufferAt(2,null);
         }
      }
   }
}
