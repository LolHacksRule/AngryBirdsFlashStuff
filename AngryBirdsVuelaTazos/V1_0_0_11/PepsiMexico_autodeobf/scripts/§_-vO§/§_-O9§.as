package §_-vO§
{
   import §_-6A§.§_-po§;
   import §_-bI§.§_-48§;
   import §_-d5§.§_-6Y§;
   import §_-d5§.§_-F§;
   import §_-iJ§.§_-hs§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-O9§ extends DisplayObject
   {
      
      public static const §_-aG§:int = 10;
      
      public static const §_-OJ§:int = 8 * 1024;
      
      public static const §_-AS§:String = "quad";
      
      private static var §_-aZ§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      private static var §_-eq§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-ri§:IndexBuffer3D;
      
      private static var §_-PG§:int = -1;
      
      private static var §_-k9§:Vector.<int>;
      
      private static var §_-nG§:Boolean;
       
      
      protected var §_-k0§:§_-po§;
      
      private var §_-F0§:int = -1;
      
      protected var §_-8v§:int = -1;
      
      protected var §_-Bg§:Boolean = true;
      
      private var §_-D9§:int = -1;
      
      protected var §_-K7§:VertexBuffer3D;
      
      protected var §_-iF§:VertexBuffer3D;
      
      public function §_-O9§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         super();
         §_-Mt§();
         this.§_-k0§ = new §_-po§(4,true);
         this.§with§(param1,param2);
         this.§_-k0§.setUniformColor(param3);
         if(§_-k9§.length == 0)
         {
            throw new Error("Trying to create more than " + §_-OJ§ + " Quads/Images at the same time");
         }
         this.§_-F0§ = §_-k9§.pop();
         this.§_-8v§ = this.§_-F0§ % §_-OJ§;
         this.§_-jT§();
      }
      
      public static function §_-XB§() : void
      {
         var _loc1_:VertexBuffer3D = null;
         if(§_-ri§)
         {
            §_-ri§.dispose();
            §_-ri§ = null;
         }
         if(§_-aZ§)
         {
            for each(_loc1_ in §_-aZ§)
            {
               _loc1_.dispose();
            }
            §_-aZ§ = null;
         }
         if(§_-eq§)
         {
            for each(_loc1_ in §_-eq§)
            {
               _loc1_.dispose();
            }
            §_-eq§ = null;
         }
         §_-k9§ = null;
         §_-nG§ = false;
      }
      
      private static function §_-Mt§(param1:Boolean = true) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(§_-nG§ && param1)
         {
            return;
         }
         var _loc2_:int = §_-OJ§;
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         if(param1)
         {
            §_-k9§ = new Vector.<int>();
         }
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_ * §_-aG§)
            {
               §_-k9§.push(_loc7_);
               _loc7_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
            _loc8_ = 0;
            while(_loc8_ < §_-po§.§_-9L§ * 4)
            {
               _loc3_.push(0);
               _loc8_++;
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < §_-aG§)
         {
            §_-aZ§[_loc6_] = §_-6Y§.§_-0D§.createVertexBuffer(_loc2_ * 4,§_-po§.§_-9L§);
            §_-aZ§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            §_-eq§[_loc6_] = §_-6Y§.§_-0D§.createVertexBuffer(_loc2_ * 4,§_-po§.§_-Gj§);
            §_-eq§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            _loc6_++;
         }
         §_-ri§ = §_-6Y§.§_-0D§.createIndexBuffer(_loc2_ * 6);
         §_-ri§.uploadFromVector(_loc4_,0,_loc2_ * 6);
         §_-nG§ = true;
      }
      
      public static function §_-Mr§(param1:§_-6Y§) : void
      {
         var _loc2_:§_-hs§ = new §_-hs§();
         _loc2_.§_-wS§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         var _loc3_:§_-hs§ = new §_-hs§();
         _loc3_.§_-wS§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
         param1.§_-TZ§(§_-AS§,_loc2_.§_-NX§,_loc3_.§_-NX§);
      }
      
      protected function §with§(param1:Number, param2:Number) : void
      {
         this.§_-k0§.setPosition(0,0,0);
         this.§_-k0§.setPosition(1,param1,0);
         this.§_-k0§.setPosition(2,0,param2);
         this.§_-k0§.setPosition(3,param1,param2);
      }
      
      private function §_-jT§() : void
      {
         this.§_-K7§ = §_-aZ§[int(this.§_-F0§ / §_-OJ§)];
         this.§_-iF§ = §_-eq§[int(this.§_-F0§ / §_-OJ§)];
      }
      
      override public function dispose() : void
      {
         if(this.§_-F0§ >= 0)
         {
            §_-k9§.push(this.§_-F0§);
            this.§_-F0§ = -1;
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
               _loc6_ = this.§_-k0§.§_-NN§(_loc7_);
               _loc2_ = Math.min(_loc2_,_loc6_.x);
               _loc3_ = Math.max(_loc3_,_loc6_.x);
               _loc4_ = Math.min(_loc4_,_loc6_.y);
               _loc5_ = Math.max(_loc5_,_loc6_.y);
               _loc7_++;
            }
         }
         else
         {
            _loc8_ = §_-R9§(param1);
            _loc9_ = new Point();
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-k0§.§_-NN§(_loc7_);
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
      
      public function §_-IG§(param1:int) : uint
      {
         return this.§_-k0§.getColor(param1);
      }
      
      public function §_-Yl§(param1:int, param2:uint) : void
      {
         this.§_-k0§.§_-3U§(param1,param2);
         this.§_-Bg§ = true;
      }
      
      public function §_-rT§(param1:int) : Number
      {
         return this.§_-k0§.§function§(param1);
      }
      
      public function §_-u3§(param1:int, param2:Number) : void
      {
         this.§_-k0§.§_-2G§(param1,param2);
         this.§_-Bg§ = true;
      }
      
      public function get color() : uint
      {
         return this.§_-k0§.getColor(0);
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-k0§.setUniformColor(param1);
         this.§_-Bg§ = true;
      }
      
      public function get vertexData() : §_-po§
      {
         return this.§_-k0§;
      }
      
      override public function render(param1:§_-F§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-6Y§.§_-0D§) == null)
         {
            throw new §_-48§();
         }
         this.§_-DY§();
         param1.§_-mZ§(true);
         param1.setProgram(§_-6Y§.§true§.§_-O2§(§_-AS§));
         param1.setTextureAt(§_-F§.§_-fQ§,null);
         _loc4_.setVertexBufferAt(0,this.§_-iF§,§_-po§.§_-hR§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-K7§,§_-po§.§_-XJ§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-5y§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
         _loc4_.drawTriangles(§_-ri§,this.§_-8v§ * 6,2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
      }
      
      protected function §_-DY§() : void
      {
         var _loc1_:int = §_-6Y§.§_-X7§;
         if(§_-PG§ != _loc1_)
         {
            §_-PG§ = _loc1_;
            §_-Mt§(false);
         }
         if(this.§_-D9§ != _loc1_)
         {
            this.§_-jT§();
            this.§_-D9§ = _loc1_;
            this.§_-Bg§ = true;
         }
         this.§_-ih§();
      }
      
      protected function §_-ih§() : void
      {
         if(!this.§_-Bg§)
         {
            return;
         }
         this.§_-Bg§ = false;
         this.§_-K7§.uploadFromVector(this.vertexData.data,this.§_-8v§ * 4,4);
         this.§_-iF§.uploadFromVector(this.vertexData.§_-Di§,this.§_-8v§ * 4,4);
      }
   }
}
