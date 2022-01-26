package §_-se§
{
   import §_-B2§.§_-H4§;
   import §_-B2§.§_-Ke§;
   import §_-Dp§.§_-N-§;
   import §_-Zq§.§_-8O§;
   import §_-dQ§.§_-uz§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-3u§ extends DisplayObject
   {
      
      public static const §_-uX§:int = 10;
      
      public static const §_-N0§:int = 8 * 1024;
      
      public static const §_-14§:String = "quad";
      
      private static var §_-u3§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      private static var §_-g7§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-Lv§:IndexBuffer3D;
      
      private static var §_-kD§:int = -1;
      
      private static var §_-VZ§:Vector.<int>;
      
      private static var §_-ju§:Boolean;
       
      
      protected var §_-oi§:§_-8O§;
      
      private var §_-QK§:int = -1;
      
      protected var §_-in§:int = -1;
      
      protected var §_-DL§:Boolean = true;
      
      private var §_-WZ§:int = -1;
      
      protected var §_-bw§:VertexBuffer3D;
      
      protected var §_-Dk§:VertexBuffer3D;
      
      public function §_-3u§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         super();
         §_-eT§();
         this.§_-oi§ = new §_-8O§(4,true);
         this.§_-A8§(param1,param2);
         this.§_-oi§.setUniformColor(param3);
         if(§_-VZ§.length == 0)
         {
            throw new Error("Trying to create more than " + §_-N0§ + " Quads/Images at the same time");
         }
         this.§_-QK§ = §_-VZ§.pop();
         this.§_-in§ = this.§_-QK§ % §_-N0§;
         this.§_-Xu§();
      }
      
      public static function §_-Bb§() : void
      {
         var _loc1_:VertexBuffer3D = null;
         if(§_-Lv§)
         {
            §_-Lv§.dispose();
            §_-Lv§ = null;
         }
         if(§_-u3§)
         {
            for each(_loc1_ in §_-u3§)
            {
               _loc1_.dispose();
            }
            §_-u3§ = null;
         }
         if(§_-g7§)
         {
            for each(_loc1_ in §_-g7§)
            {
               _loc1_.dispose();
            }
            §_-g7§ = null;
         }
         §_-VZ§ = null;
         §_-ju§ = false;
      }
      
      private static function §_-eT§(param1:Boolean = true) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(§_-ju§ && param1)
         {
            return;
         }
         var _loc2_:int = §_-N0§;
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         if(param1)
         {
            §_-VZ§ = new Vector.<int>();
         }
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_ * §_-uX§)
            {
               §_-VZ§.push(_loc7_);
               _loc7_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
            _loc8_ = 0;
            while(_loc8_ < §_-8O§.§_-ht§ * 4)
            {
               _loc3_.push(0);
               _loc8_++;
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < §_-uX§)
         {
            §_-u3§[_loc6_] = §_-H4§.§_-Eu§.createVertexBuffer(_loc2_ * 4,§_-8O§.§_-ht§);
            §_-u3§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            §_-g7§[_loc6_] = §_-H4§.§_-Eu§.createVertexBuffer(_loc2_ * 4,§_-8O§.§_-uI§);
            §_-g7§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            _loc6_++;
         }
         §_-Lv§ = §_-H4§.§_-Eu§.createIndexBuffer(_loc2_ * 6);
         §_-Lv§.uploadFromVector(_loc4_,0,_loc2_ * 6);
         §_-ju§ = true;
      }
      
      public static function §_-Id§(param1:§_-H4§) : void
      {
         var _loc2_:§_-N-§ = new §_-N-§();
         _loc2_.§_-a3§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         var _loc3_:§_-N-§ = new §_-N-§();
         _loc3_.§_-a3§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
         param1.§_-6R§(§_-14§,_loc2_.§_-SY§,_loc3_.§_-SY§);
      }
      
      protected function §_-A8§(param1:Number, param2:Number) : void
      {
         this.§_-oi§.setPosition(0,0,0);
         this.§_-oi§.setPosition(1,param1,0);
         this.§_-oi§.setPosition(2,0,param2);
         this.§_-oi§.setPosition(3,param1,param2);
      }
      
      private function §_-Xu§() : void
      {
         this.§_-bw§ = §_-u3§[int(this.§_-QK§ / §_-N0§)];
         this.§_-Dk§ = §_-g7§[int(this.§_-QK§ / §_-N0§)];
      }
      
      override public function dispose() : void
      {
         if(this.§_-QK§ >= 0)
         {
            §_-VZ§.push(this.§_-QK§);
            this.§_-QK§ = -1;
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
               _loc6_ = this.§_-oi§.§_-oQ§(_loc7_);
               _loc2_ = Math.min(_loc2_,_loc6_.x);
               _loc3_ = Math.max(_loc3_,_loc6_.x);
               _loc4_ = Math.min(_loc4_,_loc6_.y);
               _loc5_ = Math.max(_loc5_,_loc6_.y);
               _loc7_++;
            }
         }
         else
         {
            _loc8_ = §_-h3§(param1);
            _loc9_ = new Point();
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-oi§.§_-oQ§(_loc7_);
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
      
      public function §_-vs§(param1:int) : uint
      {
         return this.§_-oi§.getColor(param1);
      }
      
      public function §_-0a§(param1:int, param2:uint) : void
      {
         this.§_-oi§.§_-Xo§(param1,param2);
         this.§_-DL§ = true;
      }
      
      public function §_-m7§(param1:int) : Number
      {
         return this.§_-oi§.§_-Bt§(param1);
      }
      
      public function §_-eZ§(param1:int, param2:Number) : void
      {
         this.§_-oi§.§_-gv§(param1,param2);
         this.§_-DL§ = true;
      }
      
      public function get color() : uint
      {
         return this.§_-oi§.getColor(0);
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-oi§.setUniformColor(param1);
         this.§_-DL§ = true;
      }
      
      public function get vertexData() : §_-8O§
      {
         return this.§_-oi§;
      }
      
      override public function render(param1:§_-Ke§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-H4§.§_-Eu§) == null)
         {
            throw new §_-uz§();
         }
         this.§_-9n§();
         param1.§_-Gg§(true);
         param1.setProgram(§_-H4§.§_-I9§.§_-4C§(§_-14§));
         param1.setTextureAt(§_-Ke§.§_-7u§,null);
         _loc4_.setVertexBufferAt(0,this.§_-Dk§,§_-8O§.§_-Fz§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-bw§,§_-8O§.§_-Md§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Lp§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
         _loc4_.drawTriangles(§_-Lv§,this.§_-in§ * 6,2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
      }
      
      protected function §_-9n§() : void
      {
         var _loc1_:int = §_-H4§.§_-qV§;
         if(§_-kD§ != _loc1_)
         {
            §_-kD§ = _loc1_;
            §_-eT§(false);
         }
         if(this.§_-WZ§ != _loc1_)
         {
            this.§_-Xu§();
            this.§_-WZ§ = _loc1_;
            this.§_-DL§ = true;
         }
         this.§_-4p§();
      }
      
      protected function §_-4p§() : void
      {
         if(!this.§_-DL§)
         {
            return;
         }
         this.§_-DL§ = false;
         this.§_-bw§.uploadFromVector(this.vertexData.data,this.§_-in§ * 4,4);
         this.§_-Dk§.uploadFromVector(this.vertexData.§_-6H§,this.§_-in§ * 4,4);
      }
   }
}
