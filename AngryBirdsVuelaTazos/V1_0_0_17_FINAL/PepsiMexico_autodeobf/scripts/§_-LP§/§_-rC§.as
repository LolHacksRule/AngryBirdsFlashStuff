package §_-LP§
{
   import §_-Cm§.§_-T5§;
   import §_-HT§.§_-8c§;
   import §_-gY§.§_-K6§;
   import §_-gY§.§_-Vu§;
   import §_-ia§.§_-dF§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-rC§ extends DisplayObject
   {
      
      public static const §_-pD§:int = 10;
      
      public static const §_-Pp§:int = 8 * 1024;
      
      public static const §_-9W§:String = "quad";
      
      private static var §_-ri§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      private static var §_-lO§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-l8§:IndexBuffer3D;
      
      private static var §_-ii§:int = -1;
      
      private static var §_-oo§:Vector.<int>;
      
      private static var §_-XO§:Boolean;
       
      
      protected var §_-bk§:§_-dF§;
      
      private var §_-Wj§:int = -1;
      
      protected var §_-tv§:int = -1;
      
      protected var §_-ay§:Boolean = true;
      
      private var §_-1T§:int = -1;
      
      protected var §_-VU§:VertexBuffer3D;
      
      protected var §_-iD§:VertexBuffer3D;
      
      public function §_-rC§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         super();
         §_-LK§();
         this.§_-bk§ = new §_-dF§(4,true);
         this.§_-Dl§(param1,param2);
         this.§_-bk§.setUniformColor(param3);
         if(§_-oo§.length == 0)
         {
            throw new Error("Trying to create more than " + §_-Pp§ + " Quads/Images at the same time");
         }
         this.§_-Wj§ = §_-oo§.pop();
         this.§_-tv§ = this.§_-Wj§ % §_-Pp§;
         this.§_-C3§();
      }
      
      public static function §_-58§() : void
      {
         var _loc1_:VertexBuffer3D = null;
         if(§_-l8§)
         {
            §_-l8§.dispose();
            §_-l8§ = null;
         }
         if(§_-ri§)
         {
            for each(_loc1_ in §_-ri§)
            {
               _loc1_.dispose();
            }
            §_-ri§ = null;
         }
         if(§_-lO§)
         {
            for each(_loc1_ in §_-lO§)
            {
               _loc1_.dispose();
            }
            §_-lO§ = null;
         }
         §_-oo§ = null;
         §_-XO§ = false;
      }
      
      private static function §_-LK§(param1:Boolean = true) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(§_-XO§ && param1)
         {
            return;
         }
         var _loc2_:int = §_-Pp§;
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         if(param1)
         {
            §_-oo§ = new Vector.<int>();
         }
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_ * §_-pD§)
            {
               §_-oo§.push(_loc7_);
               _loc7_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
            _loc8_ = 0;
            while(_loc8_ < §_-dF§.§_-YF§ * 4)
            {
               _loc3_.push(0);
               _loc8_++;
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < §_-pD§)
         {
            §_-ri§[_loc6_] = §_-Vu§.§_-ez§.createVertexBuffer(_loc2_ * 4,§_-dF§.§_-YF§);
            §_-ri§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            §_-lO§[_loc6_] = §_-Vu§.§_-ez§.createVertexBuffer(_loc2_ * 4,§_-dF§.§_-T6§);
            §_-lO§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            _loc6_++;
         }
         §_-l8§ = §_-Vu§.§_-ez§.createIndexBuffer(_loc2_ * 6);
         §_-l8§.uploadFromVector(_loc4_,0,_loc2_ * 6);
         §_-XO§ = true;
      }
      
      public static function §_-Dk§(param1:§_-Vu§) : void
      {
         var _loc2_:§_-T5§ = new §_-T5§();
         _loc2_.§_-xm§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         var _loc3_:§_-T5§ = new §_-T5§();
         _loc3_.§_-xm§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
         param1.§_-fm§(§_-9W§,_loc2_.§_-Ob§,_loc3_.§_-Ob§);
      }
      
      protected function §_-Dl§(param1:Number, param2:Number) : void
      {
         this.§_-bk§.setPosition(0,0,0);
         this.§_-bk§.setPosition(1,param1,0);
         this.§_-bk§.setPosition(2,0,param2);
         this.§_-bk§.setPosition(3,param1,param2);
      }
      
      private function §_-C3§() : void
      {
         this.§_-VU§ = §_-ri§[int(this.§_-Wj§ / §_-Pp§)];
         this.§_-iD§ = §_-lO§[int(this.§_-Wj§ / §_-Pp§)];
      }
      
      override public function dispose() : void
      {
         if(this.§_-Wj§ >= 0)
         {
            §_-oo§.push(this.§_-Wj§);
            this.§_-Wj§ = -1;
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
               _loc6_ = this.§_-bk§.§_-rO§(_loc7_);
               _loc2_ = Math.min(_loc2_,_loc6_.x);
               _loc3_ = Math.max(_loc3_,_loc6_.x);
               _loc4_ = Math.min(_loc4_,_loc6_.y);
               _loc5_ = Math.max(_loc5_,_loc6_.y);
               _loc7_++;
            }
         }
         else
         {
            _loc8_ = §_-OX§(param1);
            _loc9_ = new Point();
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-bk§.§_-rO§(_loc7_);
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
      
      public function §_-1V§(param1:int) : uint
      {
         return this.§_-bk§.getColor(param1);
      }
      
      public function §_-eA§(param1:int, param2:uint) : void
      {
         this.§_-bk§.§_-dy§(param1,param2);
         this.§_-ay§ = true;
      }
      
      public function §_-Fo§(param1:int) : Number
      {
         return this.§_-bk§.§_-Hy§(param1);
      }
      
      public function §_-S8§(param1:int, param2:Number) : void
      {
         this.§_-bk§.§_-wk§(param1,param2);
         this.§_-ay§ = true;
      }
      
      public function get color() : uint
      {
         return this.§_-bk§.getColor(0);
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-bk§.setUniformColor(param1);
         this.§_-ay§ = true;
      }
      
      public function get vertexData() : §_-dF§
      {
         return this.§_-bk§;
      }
      
      override public function render(param1:§_-K6§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-Vu§.§_-ez§) == null)
         {
            throw new §_-8c§();
         }
         this.§_-RX§();
         param1.§_-Nw§(true);
         param1.setProgram(§_-Vu§.§_-dq§.§_-qm§(§_-9W§));
         param1.setTextureAt(§_-K6§.§_-JS§,null);
         _loc4_.setVertexBufferAt(0,this.§_-iD§,§_-dF§.§_-TJ§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-VU§,§_-dF§.§_-RM§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-wW§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
         _loc4_.drawTriangles(§_-l8§,this.§_-tv§ * 6,2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
      }
      
      protected function §_-RX§() : void
      {
         var _loc1_:int = §_-Vu§.§_-Wf§;
         if(§_-ii§ != _loc1_)
         {
            §_-ii§ = _loc1_;
            §_-LK§(false);
         }
         if(this.§_-1T§ != _loc1_)
         {
            this.§_-C3§();
            this.§_-1T§ = _loc1_;
            this.§_-ay§ = true;
         }
         this.§_-Aq§();
      }
      
      protected function §_-Aq§() : void
      {
         if(!this.§_-ay§)
         {
            return;
         }
         this.§_-ay§ = false;
         this.§_-VU§.uploadFromVector(this.vertexData.data,this.§_-tv§ * 4,4);
         this.§_-iD§.uploadFromVector(this.vertexData.§_-rc§,this.§_-tv§ * 4,4);
      }
   }
}
