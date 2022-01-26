package §_-pF§
{
   import §_-0b§.§_-Bn§;
   import §_-6b§.§_-Bl§;
   import §_-nh§.§_-Hm§;
   import §_-v3§.§_-G3§;
   import §_-v3§.§_-L4§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-b3§ extends DisplayObject
   {
      
      public static const §_-Mx§:int = 10;
      
      public static const §_-Tg§:int = 8 * 1024;
      
      public static const §_-QQ§:String = "quad";
      
      private static var §_-Pc§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      private static var §_-Y7§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-dD§:IndexBuffer3D;
      
      private static var §_-aV§:int = -1;
      
      private static var §_-69§:Vector.<int>;
      
      private static var §_-lt§:Boolean;
       
      
      protected var §_-iv§:§_-Bn§;
      
      private var §_-jQ§:int = -1;
      
      protected var §_-HB§:int = -1;
      
      protected var §_-vt§:Boolean = true;
      
      private var §_-Tx§:int = -1;
      
      protected var §_-Sf§:VertexBuffer3D;
      
      protected var §_-hO§:VertexBuffer3D;
      
      public function §_-b3§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         super();
         §_-sv§();
         this.§_-iv§ = new §_-Bn§(4,true);
         this.§_-Dn§(param1,param2);
         this.§_-iv§.setUniformColor(param3);
         if(§_-69§.length == 0)
         {
            throw new Error("Trying to create more than " + §_-Tg§ + " Quads/Images at the same time");
         }
         this.§_-jQ§ = §_-69§.pop();
         this.§_-HB§ = this.§_-jQ§ % §_-Tg§;
         this.§do§();
      }
      
      public static function §_-SF§() : void
      {
         var _loc1_:VertexBuffer3D = null;
         if(§_-dD§)
         {
            §_-dD§.dispose();
            §_-dD§ = null;
         }
         if(§_-Pc§)
         {
            for each(_loc1_ in §_-Pc§)
            {
               _loc1_.dispose();
            }
            §_-Pc§ = null;
         }
         if(§_-Y7§)
         {
            for each(_loc1_ in §_-Y7§)
            {
               _loc1_.dispose();
            }
            §_-Y7§ = null;
         }
         §_-69§ = null;
         §_-lt§ = false;
      }
      
      private static function §_-sv§(param1:Boolean = true) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(§_-lt§ && param1)
         {
            return;
         }
         var _loc2_:int = §_-Tg§;
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         if(param1)
         {
            §_-69§ = new Vector.<int>();
         }
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_ * §_-Mx§)
            {
               §_-69§.push(_loc7_);
               _loc7_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
            _loc8_ = 0;
            while(_loc8_ < §_-Bn§.§_-FG§ * 4)
            {
               _loc3_.push(0);
               _loc8_++;
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < §_-Mx§)
         {
            §_-Pc§[_loc6_] = §_-G3§.§_-FH§.createVertexBuffer(_loc2_ * 4,§_-Bn§.§_-FG§);
            §_-Pc§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            §_-Y7§[_loc6_] = §_-G3§.§_-FH§.createVertexBuffer(_loc2_ * 4,§_-Bn§.§_-§);
            §_-Y7§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            _loc6_++;
         }
         §_-dD§ = §_-G3§.§_-FH§.createIndexBuffer(_loc2_ * 6);
         §_-dD§.uploadFromVector(_loc4_,0,_loc2_ * 6);
         §_-lt§ = true;
      }
      
      public static function §_-ML§(param1:§_-G3§) : void
      {
         var _loc2_:§_-Bl§ = new §_-Bl§();
         _loc2_.§_-C§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         var _loc3_:§_-Bl§ = new §_-Bl§();
         _loc3_.§_-C§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
         param1.§_-ar§(§_-QQ§,_loc2_.§_-AN§,_loc3_.§_-AN§);
      }
      
      protected function §_-Dn§(param1:Number, param2:Number) : void
      {
         this.§_-iv§.setPosition(0,0,0);
         this.§_-iv§.setPosition(1,param1,0);
         this.§_-iv§.setPosition(2,0,param2);
         this.§_-iv§.setPosition(3,param1,param2);
      }
      
      private function §do§() : void
      {
         this.§_-Sf§ = §_-Pc§[int(this.§_-jQ§ / §_-Tg§)];
         this.§_-hO§ = §_-Y7§[int(this.§_-jQ§ / §_-Tg§)];
      }
      
      override public function dispose() : void
      {
         if(this.§_-jQ§ >= 0)
         {
            §_-69§.push(this.§_-jQ§);
            this.§_-jQ§ = -1;
         }
         super.dispose();
      }
      
      override public function getBounds(param1:DisplayObject) : Rectangle
      {
         var _loc6_:Vector3D = null;
         var _loc7_:int = 0;
         var _loc8_:Matrix = null;
         var _loc9_:Point = null;
         var _loc10_:Point = null;
         var _loc2_:Number = Number.MAX_VALUE;
         var _loc3_:Number = -Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         if(param1 == this)
         {
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-iv§.§_-AI§(_loc7_);
               _loc2_ = Math.min(_loc2_,_loc6_.x);
               _loc3_ = Math.max(_loc3_,_loc6_.x);
               _loc4_ = Math.min(_loc4_,_loc6_.y);
               _loc5_ = Math.max(_loc5_,_loc6_.y);
               _loc7_++;
            }
         }
         else
         {
            _loc8_ = §_-4e§(param1);
            _loc9_ = new Point();
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-iv§.§_-AI§(_loc7_);
               _loc9_.x = _loc6_.x;
               _loc9_.y = _loc6_.y;
               _loc10_ = _loc8_.transformPoint(_loc9_);
               _loc2_ = Math.min(_loc2_,_loc10_.x);
               _loc3_ = Math.max(_loc3_,_loc10_.x);
               _loc4_ = Math.min(_loc4_,_loc10_.y);
               _loc5_ = Math.max(_loc5_,_loc10_.y);
               _loc7_++;
            }
         }
         return new Rectangle(_loc2_,_loc4_,_loc3_ - _loc2_,_loc5_ - _loc4_);
      }
      
      public function §_-7R§(param1:int) : uint
      {
         return this.§_-iv§.getColor(param1);
      }
      
      public function §_-wR§(param1:int, param2:uint) : void
      {
         this.§_-iv§.§_-oQ§(param1,param2);
         this.§_-vt§ = true;
      }
      
      public function §_-eJ§(param1:int) : Number
      {
         return this.§_-iv§.§_-7z§(param1);
      }
      
      public function §_-Wl§(param1:int, param2:Number) : void
      {
         this.§_-iv§.§_-Jw§(param1,param2);
         this.§_-vt§ = true;
      }
      
      public function get color() : uint
      {
         return this.§_-iv§.getColor(0);
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-iv§.setUniformColor(param1);
         this.§_-vt§ = true;
      }
      
      public function get vertexData() : §_-Bn§
      {
         return this.§_-iv§;
      }
      
      override public function render(param1:§_-L4§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-G3§.§_-FH§) == null)
         {
            throw new §_-Hm§();
         }
         this.§_-kr§();
         param1.§_-Wz§(true);
         param1.setProgram(§_-G3§.§_-9S§.§_-nf§(§_-QQ§));
         param1.setTextureAt(§_-L4§.§_-pV§,null);
         _loc4_.setVertexBufferAt(0,this.§_-hO§,§_-Bn§.§_-u5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-Sf§,§_-Bn§.§_-3V§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Qz§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
         _loc4_.drawTriangles(§_-dD§,this.§_-HB§ * 6,2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
      }
      
      protected function §_-kr§() : void
      {
         var _loc1_:int = §_-G3§.§_-LJ§;
         if(§_-aV§ != _loc1_)
         {
            §_-aV§ = _loc1_;
            §_-sv§(false);
         }
         if(this.§_-Tx§ != _loc1_)
         {
            this.§do§();
            this.§_-Tx§ = _loc1_;
            this.§_-vt§ = true;
         }
         this.§_-Vr§();
      }
      
      protected function §_-Vr§() : void
      {
         if(!this.§_-vt§)
         {
            return;
         }
         this.§_-vt§ = false;
         this.§_-Sf§.uploadFromVector(this.vertexData.data,this.§_-HB§ * 4,4);
         this.§_-hO§.uploadFromVector(this.vertexData.§_-dj§,this.§_-HB§ * 4,4);
      }
   }
}
