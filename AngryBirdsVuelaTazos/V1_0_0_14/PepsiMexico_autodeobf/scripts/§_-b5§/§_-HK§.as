package §_-b5§
{
   import §_-1y§.§_-Z6§;
   import §_-CG§.§_-gk§;
   import §_-Qj§.§_-vg§;
   import §_-fI§.§_-6W§;
   import §_-fI§.§_-BI§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-HK§ extends DisplayObject
   {
      
      public static const §_-UK§:int = 10;
      
      public static const §_-Mu§:int = 8 * 1024;
      
      public static const §_-Va§:String = "quad";
      
      private static var §_-V8§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      private static var §_-UP§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-Et§:IndexBuffer3D;
      
      private static var §_-hh§:int = -1;
      
      private static var §_-9k§:Vector.<int>;
      
      private static var §_-49§:Boolean;
       
      
      protected var §_-T6§:§_-gk§;
      
      private var §_-YS§:int = -1;
      
      protected var §_-nO§:int = -1;
      
      protected var §_-KF§:Boolean = true;
      
      private var §_-DO§:int = -1;
      
      protected var §_-Wd§:VertexBuffer3D;
      
      protected var §_-MM§:VertexBuffer3D;
      
      public function §_-HK§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         super();
         §_-7o§();
         this.§_-T6§ = new §_-gk§(4,true);
         this.§_-ra§(param1,param2);
         this.§_-T6§.setUniformColor(param3);
         if(§_-9k§.length == 0)
         {
            throw new Error("Trying to create more than " + §_-Mu§ + " Quads/Images at the same time");
         }
         this.§_-YS§ = §_-9k§.pop();
         this.§_-nO§ = this.§_-YS§ % §_-Mu§;
         this.§_-D0§();
      }
      
      public static function §_-Lb§() : void
      {
         var _loc1_:VertexBuffer3D = null;
         if(§_-Et§)
         {
            §_-Et§.dispose();
            §_-Et§ = null;
         }
         if(§_-V8§)
         {
            for each(_loc1_ in §_-V8§)
            {
               _loc1_.dispose();
            }
            §_-V8§ = null;
         }
         if(§_-UP§)
         {
            for each(_loc1_ in §_-UP§)
            {
               _loc1_.dispose();
            }
            §_-UP§ = null;
         }
         §_-9k§ = null;
         §_-49§ = false;
      }
      
      private static function §_-7o§(param1:Boolean = true) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(§_-49§ && param1)
         {
            return;
         }
         var _loc2_:int = §_-Mu§;
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         if(param1)
         {
            §_-9k§ = new Vector.<int>();
         }
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_ * §_-UK§)
            {
               §_-9k§.push(_loc7_);
               _loc7_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
            _loc8_ = 0;
            while(_loc8_ < §_-gk§.§_-aU§ * 4)
            {
               _loc3_.push(0);
               _loc8_++;
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < §_-UK§)
         {
            §_-V8§[_loc6_] = §_-BI§.§_-Pw§.createVertexBuffer(_loc2_ * 4,§_-gk§.§_-aU§);
            §_-V8§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            §_-UP§[_loc6_] = §_-BI§.§_-Pw§.createVertexBuffer(_loc2_ * 4,§_-gk§.§_-7-§);
            §_-UP§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            _loc6_++;
         }
         §_-Et§ = §_-BI§.§_-Pw§.createIndexBuffer(_loc2_ * 6);
         §_-Et§.uploadFromVector(_loc4_,0,_loc2_ * 6);
         §_-49§ = true;
      }
      
      public static function §_-pG§(param1:§_-BI§) : void
      {
         var _loc2_:§_-vg§ = new §_-vg§();
         _loc2_.§_-u7§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         var _loc3_:§_-vg§ = new §_-vg§();
         _loc3_.§_-u7§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
         param1.§_-e8§(§_-Va§,_loc2_.§_-JU§,_loc3_.§_-JU§);
      }
      
      protected function §_-ra§(param1:Number, param2:Number) : void
      {
         this.§_-T6§.setPosition(0,0,0);
         this.§_-T6§.setPosition(1,param1,0);
         this.§_-T6§.setPosition(2,0,param2);
         this.§_-T6§.setPosition(3,param1,param2);
      }
      
      private function §_-D0§() : void
      {
         this.§_-Wd§ = §_-V8§[int(this.§_-YS§ / §_-Mu§)];
         this.§_-MM§ = §_-UP§[int(this.§_-YS§ / §_-Mu§)];
      }
      
      override public function dispose() : void
      {
         if(this.§_-YS§ >= 0)
         {
            §_-9k§.push(this.§_-YS§);
            this.§_-YS§ = -1;
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
               _loc6_ = this.§_-T6§.§_-qv§(_loc7_);
               _loc2_ = Math.min(_loc2_,_loc6_.x);
               _loc3_ = Math.max(_loc3_,_loc6_.x);
               _loc4_ = Math.min(_loc4_,_loc6_.y);
               _loc5_ = Math.max(_loc5_,_loc6_.y);
               _loc7_++;
            }
         }
         else
         {
            _loc8_ = §_-C4§(param1);
            _loc9_ = new Point();
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-T6§.§_-qv§(_loc7_);
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
      
      public function §_-ZY§(param1:int) : uint
      {
         return this.§_-T6§.getColor(param1);
      }
      
      public function §false§(param1:int, param2:uint) : void
      {
         this.§_-T6§.§_-9c§(param1,param2);
         this.§_-KF§ = true;
      }
      
      public function §_-GD§(param1:int) : Number
      {
         return this.§_-T6§.§_-QO§(param1);
      }
      
      public function §_-95§(param1:int, param2:Number) : void
      {
         this.§_-T6§.§_-7P§(param1,param2);
         this.§_-KF§ = true;
      }
      
      public function get color() : uint
      {
         return this.§_-T6§.getColor(0);
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-T6§.setUniformColor(param1);
         this.§_-KF§ = true;
      }
      
      public function get vertexData() : §_-gk§
      {
         return this.§_-T6§;
      }
      
      override public function render(param1:§_-6W§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-BI§.§_-Pw§) == null)
         {
            throw new §_-Z6§();
         }
         this.§_-79§();
         param1.§_-oD§(true);
         param1.setProgram(§_-BI§.§_-44§.§_-Ew§(§_-Va§));
         param1.setTextureAt(§_-6W§.§_-HQ§,null);
         _loc4_.setVertexBufferAt(0,this.§_-MM§,§_-gk§.§_-bD§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-Wd§,§_-gk§.§_-JD§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-tN§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
         _loc4_.drawTriangles(§_-Et§,this.§_-nO§ * 6,2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
      }
      
      protected function §_-79§() : void
      {
         var _loc1_:int = §_-BI§.§_-3W§;
         if(§_-hh§ != _loc1_)
         {
            §_-hh§ = _loc1_;
            §_-7o§(false);
         }
         if(this.§_-DO§ != _loc1_)
         {
            this.§_-D0§();
            this.§_-DO§ = _loc1_;
            this.§_-KF§ = true;
         }
         this.§_-06§();
      }
      
      protected function §_-06§() : void
      {
         if(!this.§_-KF§)
         {
            return;
         }
         this.§_-KF§ = false;
         this.§_-Wd§.uploadFromVector(this.vertexData.data,this.§_-nO§ * 4,4);
         this.§_-MM§.uploadFromVector(this.vertexData.§_-lC§,this.§_-nO§ * 4,4);
      }
   }
}
