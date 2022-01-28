package §_-SE§
{
   import §_-Ku§.§_-Ha§;
   import §_-Ku§.§_-Nq§;
   import §_-OP§.§_-fW§;
   import §_-QR§.§_-Ft§;
   import §_-oa§.§_-9B§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.VertexBuffer3D;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.geom.Vector3D;
   
   public class §_-uX§ extends DisplayObject
   {
      
      public static const §_-lt§:int = 10;
      
      public static const §_-1q§:int = 8 * 1024;
      
      public static const §_-T8§:String = "quad";
      
      private static var §_-Z4§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      private static var §_-Ba§:Vector.<VertexBuffer3D> = new Vector.<VertexBuffer3D>();
      
      protected static var §_-X5§:IndexBuffer3D;
      
      private static var §_-i7§:int = -1;
      
      private static var §_-ob§:Vector.<int>;
      
      private static var §_-29§:Boolean;
       
      
      protected var §_-ny§:§_-fW§;
      
      private var §_-Yi§:int = -1;
      
      protected var §_-1n§:int = -1;
      
      protected var §_-rm§:Boolean = true;
      
      private var §_-mi§:int = -1;
      
      protected var §_-cr§:VertexBuffer3D;
      
      protected var §_-3u§:VertexBuffer3D;
      
      public function §_-uX§(param1:Number, param2:Number, param3:uint = 16777215)
      {
         super();
         §_-se§();
         this.§_-ny§ = new §_-fW§(4,true);
         this.§_-UN§(param1,param2);
         this.§_-ny§.setUniformColor(param3);
         if(§_-ob§.length == 0)
         {
            throw new Error("Trying to create more than " + §_-1q§ + " Quads/Images at the same time");
         }
         this.§_-Yi§ = §_-ob§.pop();
         this.§_-1n§ = this.§_-Yi§ % §_-1q§;
         this.§_-nR§();
      }
      
      public static function §_-i4§() : void
      {
         var _loc1_:VertexBuffer3D = null;
         if(§_-X5§)
         {
            §_-X5§.dispose();
            §_-X5§ = null;
         }
         if(§_-Z4§)
         {
            for each(_loc1_ in §_-Z4§)
            {
               _loc1_.dispose();
            }
            §_-Z4§ = null;
         }
         if(§_-Ba§)
         {
            for each(_loc1_ in §_-Ba§)
            {
               _loc1_.dispose();
            }
            §_-Ba§ = null;
         }
         §_-ob§ = null;
         §_-29§ = false;
      }
      
      private static function §_-se§(param1:Boolean = true) : void
      {
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(§_-29§ && param1)
         {
            return;
         }
         var _loc2_:int = §_-1q§;
         var _loc3_:Vector.<Number> = new Vector.<Number>();
         var _loc4_:Vector.<uint> = new Vector.<uint>();
         if(param1)
         {
            §_-ob§ = new Vector.<int>();
         }
         if(param1)
         {
            _loc7_ = 0;
            while(_loc7_ < _loc2_ * §_-lt§)
            {
               §_-ob§.push(_loc7_);
               _loc7_++;
            }
         }
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc4_.push(_loc5_ * 4,_loc5_ * 4 + 1,_loc5_ * 4 + 2,_loc5_ * 4 + 1,_loc5_ * 4 + 3,_loc5_ * 4 + 2);
            _loc8_ = 0;
            while(_loc8_ < §_-fW§.§_-qY§ * 4)
            {
               _loc3_.push(0);
               _loc8_++;
            }
            _loc5_++;
         }
         var _loc6_:int = 0;
         while(_loc6_ < §_-lt§)
         {
            §_-Z4§[_loc6_] = §_-Ha§.§_-8o§.createVertexBuffer(_loc2_ * 4,§_-fW§.§_-qY§);
            §_-Z4§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            §_-Ba§[_loc6_] = §_-Ha§.§_-8o§.createVertexBuffer(_loc2_ * 4,§_-fW§.§_-Cf§);
            §_-Ba§[_loc6_].uploadFromVector(_loc3_,0,_loc2_ * 4);
            _loc6_++;
         }
         §_-X5§ = §_-Ha§.§_-8o§.createIndexBuffer(_loc2_ * 6);
         §_-X5§.uploadFromVector(_loc4_,0,_loc2_ * 6);
         §_-29§ = true;
      }
      
      public static function §_-pO§(param1:§_-Ha§) : void
      {
         var _loc2_:§_-9B§ = new §_-9B§();
         _loc2_.§_-aM§(Context3DProgramType.VERTEX,"m44 op, va0, vc0  \n" + "mov v0, va1       \n");
         var _loc3_:§_-9B§ = new §_-9B§();
         _loc3_.§_-aM§(Context3DProgramType.FRAGMENT,"mul ft0, v0, fc0  \n" + "mov oc, ft0       \n");
         param1.§_-mX§(§_-T8§,_loc2_.§_-n8§,_loc3_.§_-n8§);
      }
      
      protected function §_-UN§(param1:Number, param2:Number) : void
      {
         this.§_-ny§.setPosition(0,0,0);
         this.§_-ny§.setPosition(1,param1,0);
         this.§_-ny§.setPosition(2,0,param2);
         this.§_-ny§.setPosition(3,param1,param2);
      }
      
      private function §_-nR§() : void
      {
         this.§_-cr§ = §_-Z4§[int(this.§_-Yi§ / §_-1q§)];
         this.§_-3u§ = §_-Ba§[int(this.§_-Yi§ / §_-1q§)];
      }
      
      override public function dispose() : void
      {
         if(this.§_-Yi§ >= 0)
         {
            §_-ob§.push(this.§_-Yi§);
            this.§_-Yi§ = -1;
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
               _loc6_ = this.§_-ny§.§_-q6§(_loc7_);
               _loc2_ = Math.min(_loc2_,_loc6_.x);
               _loc3_ = Math.max(_loc3_,_loc6_.x);
               _loc4_ = Math.min(_loc4_,_loc6_.y);
               _loc5_ = Math.max(_loc5_,_loc6_.y);
               _loc7_++;
            }
         }
         else
         {
            _loc8_ = §_-Bv§(param1);
            _loc9_ = new Point();
            _loc7_ = 0;
            while(_loc7_ < 4)
            {
               _loc6_ = this.§_-ny§.§_-q6§(_loc7_);
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
      
      public function §_-Ai§(param1:int) : uint
      {
         return this.§_-ny§.§_-qG§(param1);
      }
      
      public function §_-c§(param1:int, param2:uint) : void
      {
         this.§_-ny§.setColor(param1,param2);
         this.§_-rm§ = true;
      }
      
      public function §_-HX§(param1:int) : Number
      {
         return this.§_-ny§.§_-th§(param1);
      }
      
      public function §_-qz§(param1:int, param2:Number) : void
      {
         this.§_-ny§.§_-fr§(param1,param2);
         this.§_-rm§ = true;
      }
      
      public function get color() : uint
      {
         return this.§_-ny§.§_-qG§(0);
      }
      
      public function set color(param1:uint) : void
      {
         this.§_-ny§.setUniformColor(param1);
         this.§_-rm§ = true;
      }
      
      public function get vertexData() : §_-fW§
      {
         return this.§_-ny§;
      }
      
      override public function render(param1:§_-Nq§, param2:Number) : void
      {
         param2 *= this.alpha;
         var _loc3_:Vector.<Number> = new <Number>[param2,param2,param2,param2];
         var _loc4_:Context3D;
         if((_loc4_ = §_-Ha§.§_-8o§) == null)
         {
            throw new §_-Ft§();
         }
         this.§_-Zf§();
         param1.§_-Mc§(true);
         param1.setProgram(§_-Ha§.§_-Aq§.§_-w2§(§_-T8§));
         param1.setTextureAt(§_-Nq§.§_-C2§,null);
         _loc4_.setVertexBufferAt(0,this.§_-3u§,§_-fW§.§_-Jx§,Context3DVertexBufferFormat.FLOAT_3);
         _loc4_.setVertexBufferAt(1,this.§_-cr§,§_-fW§.§_-Ef§,Context3DVertexBufferFormat.FLOAT_4);
         _loc4_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,0,param1.§_-Tm§,true);
         _loc4_.setProgramConstantsFromVector(Context3DProgramType.FRAGMENT,0,_loc3_,1);
         _loc4_.drawTriangles(§_-X5§,this.§_-1n§ * 6,2);
         _loc4_.setVertexBufferAt(0,null);
         _loc4_.setVertexBufferAt(1,null);
      }
      
      protected function §_-Zf§() : void
      {
         var _loc1_:int = §_-Ha§.§_-Gg§;
         if(§_-i7§ != _loc1_)
         {
            §_-i7§ = _loc1_;
            §_-se§(false);
         }
         if(this.§_-mi§ != _loc1_)
         {
            this.§_-nR§();
            this.§_-mi§ = _loc1_;
            this.§_-rm§ = true;
         }
         this.§ if§();
      }
      
      protected function § if§() : void
      {
         if(!this.§_-rm§)
         {
            return;
         }
         this.§_-rm§ = false;
         this.§_-cr§.uploadFromVector(this.vertexData.data,this.§_-1n§ * 4,4);
         this.§_-3u§.uploadFromVector(this.vertexData.§_-7f§,this.§_-1n§ * 4,4);
      }
   }
}
