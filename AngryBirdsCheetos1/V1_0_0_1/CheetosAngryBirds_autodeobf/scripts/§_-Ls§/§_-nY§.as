package §_-Ls§
{
   import §_-Bt§.§_-Ty§;
   import §_-uz§.§_-J4§;
   import §_-vB§.§_-7p§;
   import §_-vB§.§_-Kk§;
   import §_-yu§.§_-dU§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-nY§ extends DisplayObject
   {
      
      public static const §_-a5§:int = 10;
      
      public static const §_-LU§:int = 8 * 1024;
      
      public static const §_-OM§:String = "quad";
      
      private static var §_-YN§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      private static var §_-PE§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-H3§:IndexBuffer3D;
      
      private static var §_-fv§:int = -1;
      
      private static var §_-002§:Vector.<int>;
      
      private static var §_-EJ§:Boolean;
       
      
      protected var §_-ye§:§_-Ty§;
      
      private var §_-di§:int = -1;
      
      protected var §_-Fw§:int = -1;
      
      protected var §_-O1§:Boolean = true;
      
      private var §_-O9§:int = -1;
      
      protected var §_-ao§:VertexBuffer3D;
      
      protected var §_-3k§:VertexBuffer3D;
      
      public function §_-nY§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         super();
         §_-jb§();
         this.§_-ye§ = new §_-Ty§(4,true);
         this.§_-JL§(param1,param2);
         this.§_-ye§.setUniformColor(param3);
         if(§_-002§.length == 0)
         {
            throw new Error("Trying to create more than " + §_-LU§ + " Quads/Images at the same time");
         }
         this.§_-di§ = §_-002§.pop();
         this.§_-Fw§ = this.§_-di§ % §_-LU§;
         this.§_-K0§();
      }
      
      public static function §_-lB§() : void
      {
         var _loc1_:VertexBuffer3D = null;
         if(§_-H3§)
         {
            §_-H3§.dispose();
            §_-H3§ = null;
         }
         if(§_-YN§)
         {
            for each(_loc1_ in §_-YN§)
            {
               _loc1_.dispose();
            }
            §_-YN§ = null;
         }
         if(§_-PE§)
         {
            for each(_loc1_ in §_-PE§)
            {
               _loc1_.dispose();
            }
            §_-PE§ = null;
         }
         §_-002§ = null;
         §_-EJ§ = false;
      }
      
      private static function §_-jb§(param1:Boolean = true) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(§_-EJ§ && param1)
         {
            return;
         }
         var _loc2_:int = §_-LU§;
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         if(param1)
         {
            §_-002§ = new Vector.<int>();
         }
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_ * §_-a5§)
            {
               §_-002§.push(_loc7_);
               _loc7_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
            _loc8_ = 0;
            while(_loc8_ < §_-Ty§.§_-1G§ * 4)
            {
               _loc3_.push(0);
               _loc8_++;
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < §_-a5§)
         {
            §_-YN§[_loc6_] = §_-Kk§.§_-r9§.createVertexBuffer(_loc2_ * 4,§_-Ty§.§_-1G§);
            §_-YN§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            §_-PE§[_loc6_] = §_-Kk§.§_-r9§.createVertexBuffer(_loc2_ * 4,§_-Ty§.§_-oB§);
            §_-PE§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            _loc6_++;
         }
         §_-H3§ = §_-Kk§.§_-r9§.createIndexBuffer(_loc2_ * 6);
         §_-H3§.uploadFromVector(_loc4_,0,_loc2_ * 6);
         §_-EJ§ = true;
      }
      
      public static function §_-RL§(param1:§_-Kk§) : void
      {
         var _loc2_:§_-dU§ = new §_-dU§();
         _loc2_.§_-qY§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         var _loc3_:§_-dU§ = new §_-dU§();
         _loc3_.§_-qY§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
         param1.§_-dk§(§_-OM§,_loc2_.§_-vy§,_loc3_.§_-vy§);
      }
      
      protected function §_-JL§(param1:Number, param2:Number) : void
      {
         this.§_-ye§.setPosition(0,0,0);
         this.§_-ye§.setPosition(1,param1,0);
         this.§_-ye§.setPosition(2,0,param2);
         this.§_-ye§.setPosition(3,param1,param2);
      }
      
      private function §_-K0§() : void
      {
         this.§_-ao§ = §_-YN§[int(this.§_-di§ / §_-LU§)];
         this.§_-3k§ = §_-PE§[int(this.§_-di§ / §_-LU§)];
      }
      
      override public function dispose() : void
      {
         if(this.§_-di§ >= 0)
         {
            §_-002§.push(this.§_-di§);
            this.§_-di§ = -1;
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
               _loc6_ = this.§_-ye§.§_-r-§(_loc7_);
               _loc2_ = Math.min(_loc2_,_loc6_.x);
               _loc3_ = Math.max(_loc3_,_loc6_.x);
               _loc4_ = Math.min(_loc4_,_loc6_.y);
               _loc5_ = Math.max(_loc5_,_loc6_.y);
               _loc7_++;
            }
         }
         else
         {
            _loc8_ = §_-R0§(param1);
            _loc9_ = new Point();
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-ye§.§_-r-§(_loc7_);
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
      
      public function §_-Hl§(param1:int) : uint
      {
         return this.§_-ye§.§_-wq§(param1);
      }
      
      public function §_-wv§(param1:int, param2:uint) : void
      {
         this.§_-ye§.§_-iC§(param1,param2);
         this.§_-O1§ = true;
      }
      
      public function §_-zO§(param1:int) : Number
      {
         return this.§_-ye§.§_-6F§(param1);
      }
      
      public function dynamic(param1:int, param2:Number) : void
      {
         this.§_-ye§.§_-vP§(param1,param2);
         this.§_-O1§ = true;
      }
      
      public function get color() : uint
      {
         return this.§_-ye§.§_-wq§(0);
      }
      
      override public function set color(param1:uint) : void
      {
         this.§_-ye§.setUniformColor(param1);
         this.§_-O1§ = true;
      }
      
      public function get vertexData() : §_-Ty§
      {
         return this.§_-ye§;
      }
      
      override public function render(param1:§_-7p§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-Kk§.§_-r9§) == null)
         {
            throw new §_-J4§();
         }
         this.§_-b§();
         param1.§_-8V§(true);
         param1.setProgram(§_-Kk§.§_-NR§.§_-DI§(§_-OM§));
         param1.setTextureAt(§_-7p§.§_-XC§,null);
         _loc4_.setVertexBufferAt(0,this.§_-3k§,§_-Ty§.§_-iD§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-ao§,§_-Ty§.§_-eN§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-0-9§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
         _loc4_.drawTriangles(§_-H3§,this.§_-Fw§ * 6,2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
      }
      
      protected function §_-b§() : void
      {
         var _loc1_:int = §_-Kk§.§_-gK§;
         if(§_-fv§ != _loc1_)
         {
            §_-fv§ = _loc1_;
            §_-jb§(false);
         }
         if(this.§_-O9§ != _loc1_)
         {
            this.§_-K0§();
            this.§_-O9§ = _loc1_;
            this.§_-O1§ = true;
         }
         this.§_-j§();
      }
      
      protected function §_-j§() : void
      {
         if(!this.§_-O1§)
         {
            return;
         }
         this.§_-O1§ = false;
         this.§_-ao§.uploadFromVector(this.vertexData.data,this.§_-Fw§ * 4,4);
         this.§_-3k§.uploadFromVector(this.vertexData.§_-n6§,this.§_-Fw§ * 4,4);
      }
   }
}
