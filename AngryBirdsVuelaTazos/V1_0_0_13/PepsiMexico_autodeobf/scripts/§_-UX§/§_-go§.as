package §_-UX§
{
   import §_-JR§.§_-t2§;
   import §_-JR§.§_-yh§;
   import §_-OE§.§_-tC§;
   import §_-kX§.§_-hW§;
   import §_-ls§.§_-YQ§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-go§ extends DisplayObject
   {
      
      public static const §_-9t§:int = 10;
      
      public static const §_-Ek§:int = 8 * 1024;
      
      public static const §_-iZ§:String = "quad";
      
      private static var §_-ku§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      private static var §_-5P§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-YY§:IndexBuffer3D;
      
      private static var §_-aB§:int = -1;
      
      private static var §_-oc§:Vector.<int>;
      
      private static var §_-nB§:Boolean;
       
      
      protected var §_-fM§:§_-hW§;
      
      private var §_-Z4§:int = -1;
      
      protected var §_-gU§:int = -1;
      
      protected var §_-sF§:Boolean = true;
      
      private var §_-iv§:int = -1;
      
      protected var §_-q6§:VertexBuffer3D;
      
      protected var §_-jf§:VertexBuffer3D;
      
      public function §_-go§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         super();
         §_-MQ§();
         this.§_-fM§ = new §_-hW§(4,true);
         this.§_-1B§(param1,param2);
         this.§_-fM§.setUniformColor(param3);
         if(§_-oc§.length == 0)
         {
            throw new Error("Trying to create more than " + §_-Ek§ + " Quads/Images at the same time");
         }
         this.§_-Z4§ = §_-oc§.pop();
         this.§_-gU§ = this.§_-Z4§ % §_-Ek§;
         this.§_-EC§();
      }
      
      public static function §_-ZT§() : void
      {
         var _loc1_:VertexBuffer3D = null;
         if(§_-YY§)
         {
            §_-YY§.dispose();
            §_-YY§ = null;
         }
         if(§_-ku§)
         {
            for each(_loc1_ in §_-ku§)
            {
               _loc1_.dispose();
            }
            §_-ku§ = null;
         }
         if(§_-5P§)
         {
            for each(_loc1_ in §_-5P§)
            {
               _loc1_.dispose();
            }
            §_-5P§ = null;
         }
         §_-oc§ = null;
         §_-nB§ = false;
      }
      
      private static function §_-MQ§(param1:Boolean = true) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(§_-nB§ && param1)
         {
            return;
         }
         var _loc2_:int = §_-Ek§;
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         if(param1)
         {
            §_-oc§ = new Vector.<int>();
         }
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_ * §_-9t§)
            {
               §_-oc§.push(_loc7_);
               _loc7_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
            _loc8_ = 0;
            while(_loc8_ < §_-hW§.§_-QY§ * 4)
            {
               _loc3_.push(0);
               _loc8_++;
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < §_-9t§)
         {
            §_-ku§[_loc6_] = §_-yh§.§_-gS§.createVertexBuffer(_loc2_ * 4,§_-hW§.§_-QY§);
            §_-ku§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            §_-5P§[_loc6_] = §_-yh§.§_-gS§.createVertexBuffer(_loc2_ * 4,§_-hW§.§_-1y§);
            §_-5P§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            _loc6_++;
         }
         §_-YY§ = §_-yh§.§_-gS§.createIndexBuffer(_loc2_ * 6);
         §_-YY§.uploadFromVector(_loc4_,0,_loc2_ * 6);
         §_-nB§ = true;
      }
      
      public static function §_-P5§(param1:§_-yh§) : void
      {
         var _loc2_:§_-tC§ = new §_-tC§();
         _loc2_.§_-S2§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         var _loc3_:§_-tC§ = new §_-tC§();
         _loc3_.§_-S2§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
         param1.§_-ce§(§_-iZ§,_loc2_.§_-8F§,_loc3_.§_-8F§);
      }
      
      protected function §_-1B§(param1:Number, param2:Number) : void
      {
         this.§_-fM§.setPosition(0,0,0);
         this.§_-fM§.setPosition(1,param1,0);
         this.§_-fM§.setPosition(2,0,param2);
         this.§_-fM§.setPosition(3,param1,param2);
      }
      
      private function §_-EC§() : void
      {
         this.§_-q6§ = §_-ku§[int(this.§_-Z4§ / §_-Ek§)];
         this.§_-jf§ = §_-5P§[int(this.§_-Z4§ / §_-Ek§)];
      }
      
      override public function dispose() : void
      {
         if(this.§_-Z4§ >= 0)
         {
            §_-oc§.push(this.§_-Z4§);
            this.§_-Z4§ = -1;
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
               _loc6_ = this.§_-fM§.§_-lP§(_loc7_);
               _loc2_ = Math.min(_loc2_,_loc6_.x);
               _loc3_ = Math.max(_loc3_,_loc6_.x);
               _loc4_ = Math.min(_loc4_,_loc6_.y);
               _loc5_ = Math.max(_loc5_,_loc6_.y);
               _loc7_++;
            }
         }
         else
         {
            _loc8_ = §_-Iy§(param1);
            _loc9_ = new Point();
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-fM§.§_-lP§(_loc7_);
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
      
      public function §_-mb§(param1:int) : uint
      {
         return this.§_-fM§.getColor(param1);
      }
      
      public function §_-63§(param1:int, param2:uint) : void
      {
         this.§_-fM§.§_-1G§(param1,param2);
         this.§_-sF§ = true;
      }
      
      public function §_-9c§(param1:int) : Number
      {
         return this.§_-fM§.§_-1u§(param1);
      }
      
      public function §_-kD§(param1:int, param2:Number) : void
      {
         this.§_-fM§.§_-Om§(param1,param2);
         this.§_-sF§ = true;
      }
      
      public function get color() : uint
      {
         return this.§_-fM§.getColor(0);
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-fM§.setUniformColor(param1);
         this.§_-sF§ = true;
      }
      
      public function get vertexData() : §_-hW§
      {
         return this.§_-fM§;
      }
      
      override public function render(param1:§_-t2§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-yh§.§_-gS§) == null)
         {
            throw new §_-YQ§();
         }
         this.§_-fO§();
         param1.§_-E7§(true);
         param1.setProgram(§_-yh§.§_-1o§.§_-F8§(§_-iZ§));
         param1.setTextureAt(§_-t2§.§_-1§,null);
         _loc4_.setVertexBufferAt(0,this.§_-jf§,§_-hW§.§_-e5§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-q6§,§_-hW§.§_-1n§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-EN§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
         _loc4_.drawTriangles(§_-YY§,this.§_-gU§ * 6,2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
      }
      
      protected function §_-fO§() : void
      {
         var _loc1_:int = §_-yh§.§_-9E§;
         if(§_-aB§ != _loc1_)
         {
            §_-aB§ = _loc1_;
            §_-MQ§(false);
         }
         if(this.§_-iv§ != _loc1_)
         {
            this.§_-EC§();
            this.§_-iv§ = _loc1_;
            this.§_-sF§ = true;
         }
         this.§_-c8§();
      }
      
      protected function §_-c8§() : void
      {
         if(!this.§_-sF§)
         {
            return;
         }
         this.§_-sF§ = false;
         this.§_-q6§.uploadFromVector(this.vertexData.data,this.§_-gU§ * 4,4);
         this.§_-jf§.uploadFromVector(this.vertexData.§_-IU§,this.§_-gU§ * 4,4);
      }
   }
}
