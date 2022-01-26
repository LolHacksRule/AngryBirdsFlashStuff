package §_-GY§
{
   import §_-V9§.§_-oT§;
   import §_-Ye§.§_-CT§;
   import §_-Ye§.§_-cP§;
   import §_-gQ§.§_-KD§;
   import §_-mb§.§_-GZ§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-Bf§ extends DisplayObject
   {
      
      public static const §_-KR§:int = 10;
      
      public static const §_-6b§:int = 8 * 1024;
      
      public static const §_-qg§:String = "quad";
      
      private static var §_-al§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      private static var §_-Ke§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-RH§:IndexBuffer3D;
      
      private static var §_-wM§:int = -1;
      
      private static var §_-W6§:Vector.<int>;
      
      private static var §_-HS§:Boolean;
       
      
      protected var §_-MU§:§_-GZ§;
      
      private var §_-1a§:int = -1;
      
      protected var §_-sf§:int = -1;
      
      protected var §_-Dn§:Boolean = true;
      
      private var §_-Bt§:int = -1;
      
      protected var §_-sD§:VertexBuffer3D;
      
      protected var §_-lm§:VertexBuffer3D;
      
      public function §_-Bf§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         super();
         §_-uj§();
         this.§_-MU§ = new §_-GZ§(4,true);
         this.§_-ir§(param1,param2);
         this.§_-MU§.setUniformColor(param3);
         if(§_-W6§.length == 0)
         {
            throw new Error("Trying to create more than " + §_-6b§ + " Quads/Images at the same time");
         }
         this.§_-1a§ = §_-W6§.pop();
         this.§_-sf§ = this.§_-1a§ % §_-6b§;
         this.§_-ji§();
      }
      
      public static function §_-dz§() : void
      {
         var _loc1_:VertexBuffer3D = null;
         if(§_-RH§)
         {
            §_-RH§.dispose();
            §_-RH§ = null;
         }
         if(§_-al§)
         {
            for each(_loc1_ in §_-al§)
            {
               _loc1_.dispose();
            }
            §_-al§ = null;
         }
         if(§_-Ke§)
         {
            for each(_loc1_ in §_-Ke§)
            {
               _loc1_.dispose();
            }
            §_-Ke§ = null;
         }
         §_-W6§ = null;
         §_-HS§ = false;
      }
      
      private static function §_-uj§(param1:Boolean = true) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(§_-HS§ && param1)
         {
            return;
         }
         var _loc2_:int = §_-6b§;
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         if(param1)
         {
            §_-W6§ = new Vector.<int>();
         }
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_ * §_-KR§)
            {
               §_-W6§.push(_loc7_);
               _loc7_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
            _loc8_ = 0;
            while(_loc8_ < §_-GZ§.§_-8e§ * 4)
            {
               _loc3_.push(0);
               _loc8_++;
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < §_-KR§)
         {
            §_-al§[_loc6_] = §_-cP§.§_-eZ§.createVertexBuffer(_loc2_ * 4,§_-GZ§.§_-8e§);
            §_-al§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            §_-Ke§[_loc6_] = §_-cP§.§_-eZ§.createVertexBuffer(_loc2_ * 4,§_-GZ§.§_-bJ§);
            §_-Ke§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            _loc6_++;
         }
         §_-RH§ = §_-cP§.§_-eZ§.createIndexBuffer(_loc2_ * 6);
         §_-RH§.uploadFromVector(_loc4_,0,_loc2_ * 6);
         §_-HS§ = true;
      }
      
      public static function each(param1:§_-cP§) : void
      {
         var _loc2_:§_-KD§ = new §_-KD§();
         _loc2_.§_-9Y§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         var _loc3_:§_-KD§ = new §_-KD§();
         _loc3_.§_-9Y§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
         param1.§_-JK§(§_-qg§,_loc2_.§_-qx§,_loc3_.§_-qx§);
      }
      
      protected function §_-ir§(param1:Number, param2:Number) : void
      {
         this.§_-MU§.setPosition(0,0,0);
         this.§_-MU§.setPosition(1,param1,0);
         this.§_-MU§.setPosition(2,0,param2);
         this.§_-MU§.setPosition(3,param1,param2);
      }
      
      private function §_-ji§() : void
      {
         this.§_-sD§ = §_-al§[int(this.§_-1a§ / §_-6b§)];
         this.§_-lm§ = §_-Ke§[int(this.§_-1a§ / §_-6b§)];
      }
      
      override public function dispose() : void
      {
         if(this.§_-1a§ >= 0)
         {
            §_-W6§.push(this.§_-1a§);
            this.§_-1a§ = -1;
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
               _loc6_ = this.§_-MU§.§_-QV§(_loc7_);
               _loc2_ = Math.min(_loc2_,_loc6_.x);
               _loc3_ = Math.max(_loc3_,_loc6_.x);
               _loc4_ = Math.min(_loc4_,_loc6_.y);
               _loc5_ = Math.max(_loc5_,_loc6_.y);
               _loc7_++;
            }
         }
         else
         {
            _loc8_ = §_-c2§(param1);
            _loc9_ = new Point();
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-MU§.§_-QV§(_loc7_);
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
      
      public function §_-c0§(param1:int) : uint
      {
         return this.§_-MU§.§_-Xh§(param1);
      }
      
      public function §_-6k§(param1:int, param2:uint) : void
      {
         this.§_-MU§.§_-Ao§(param1,param2);
         this.§_-Dn§ = true;
      }
      
      public function §_-mA§(param1:int) : Number
      {
         return this.§_-MU§.§_-1T§(param1);
      }
      
      public function §_-27§(param1:int, param2:Number) : void
      {
         this.§_-MU§.§_-lZ§(param1,param2);
         this.§_-Dn§ = true;
      }
      
      public function get color() : uint
      {
         return this.§_-MU§.§_-Xh§(0);
      }
      
      override public function set color(param1:uint) : void
      {
         this.§_-MU§.setUniformColor(param1);
         this.§_-Dn§ = true;
      }
      
      public function get vertexData() : §_-GZ§
      {
         return this.§_-MU§;
      }
      
      override public function render(param1:§_-CT§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-cP§.§_-eZ§) == null)
         {
            throw new §_-oT§();
         }
         this.§_-UL§();
         param1.§_-NO§(true);
         param1.setProgram(§_-cP§.§_-004§.§_-Bj§(§_-qg§));
         param1.setTextureAt(§_-CT§.§_-w4§,null);
         _loc4_.setVertexBufferAt(0,this.§_-lm§,§_-GZ§.§_-Wu§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-sD§,§_-GZ§.§_-hv§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-hA§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
         _loc4_.drawTriangles(§_-RH§,this.§_-sf§ * 6,2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
      }
      
      protected function §_-UL§() : void
      {
         var _loc1_:int = §_-cP§.§_-Fb§;
         if(§_-wM§ != _loc1_)
         {
            §_-wM§ = _loc1_;
            §_-uj§(false);
         }
         if(this.§_-Bt§ != _loc1_)
         {
            this.§_-ji§();
            this.§_-Bt§ = _loc1_;
            this.§_-Dn§ = true;
         }
         this.§_-Dg§();
      }
      
      protected function §_-Dg§() : void
      {
         if(!this.§_-Dn§)
         {
            return;
         }
         this.§_-Dn§ = false;
         this.§_-sD§.uploadFromVector(this.vertexData.data,this.§_-sf§ * 4,4);
         this.§_-lm§.uploadFromVector(this.vertexData.§_-jS§,this.§_-sf§ * 4,4);
      }
   }
}
