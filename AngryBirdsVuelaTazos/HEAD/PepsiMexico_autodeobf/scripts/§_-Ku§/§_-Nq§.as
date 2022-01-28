package §_-Ku§
{
   import §_-OP§.§_-ig§;
   import §_-SE§.DisplayObject;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-Nq§
   {
      
      public static const §_-C2§:int = 1;
      
      private static var §_-1b§:Array;
      
      private static var §_-H2§:Program3D;
       
      
      private var §_-Jp§:Matrix3D;
      
      private var §_-A0§:Matrix3D;
      
      public function §_-Nq§()
      {
         super();
         this.§_-Jp§ = new Matrix3D();
         this.§_-A0§ = new Matrix3D();
         if(§_-1b§ == null)
         {
            §_-1b§ = [];
         }
         this.§_-nN§();
         this.§_-dn§(400,300);
      }
      
      public static function §_-EJ§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         var _loc5_:Number = param2.rotation;
         var _loc6_:Number = param2.scaleX;
         var _loc7_:Number = param2.scaleY;
         var _loc8_:Number = param2.pivotX;
         var _loc9_:Number = param2.pivotY;
         if(_loc5_ == 0 && _loc6_ == 1 && _loc7_ == 1)
         {
            param1.prependTranslation(_loc3_ + _loc8_,_loc4_ + _loc9_,0);
         }
         else
         {
            if(_loc3_ != 0 || _loc4_ != 0)
            {
               param1.prependTranslation(_loc3_,_loc4_,0);
            }
            if(_loc5_ != 0)
            {
               param1.prependRotation(_loc5_ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(_loc6_ != 1 || _loc7_ != 1)
            {
               param1.prependScale(_loc6_,_loc7_,1);
            }
            if(_loc8_ != 0 || _loc9_ != 0)
            {
               param1.prependTranslation(_loc8_,_loc9_,0);
            }
         }
      }
      
      public function §_-dn§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         this.§_-Jp§.copyRawDataFrom(_loc5_);
      }
      
      public function §_-nN§() : void
      {
         this.§_-A0§.identity();
      }
      
      public function §_-it§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-A0§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-Hy§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-A0§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-re§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-A0§.prependScale(param1,param2,param3);
      }
      
      public function §_-9u§(param1:DisplayObject) : void
      {
         §_-EJ§(this.§_-A0§,param1);
      }
      
      public function §_-sf§(param1:Matrix3D) : void
      {
         param1.copyFrom(this.§_-A0§);
      }
      
      public function §_-VB§(param1:Matrix3D) : void
      {
         this.§_-A0§.copyFrom(param1);
      }
      
      public function §_-Nz§() : void
      {
         this.§_-nN§();
         this.§_-A0§.copyFrom(this.§_-Jp§);
      }
      
      public function get §_-Tm§() : Matrix3D
      {
         return this.§_-A0§;
      }
      
      public function §_-Mc§(param1:Boolean) : void
      {
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc3_:String = !!param1 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         §_-Ha§.§_-8o§.setBlendFactors(_loc3_,_loc2_);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         §_-Ha§.§_-8o§.clear(§_-ig§.§_-xW§(param1) / 255,§_-ig§.§_-D5§(param1) / 255,§_-ig§.§_-IB§(param1) / 255,param2);
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != §_-1b§[param1])
         {
            §_-1b§[param1] = param2;
            _loc3_ = §_-Ha§.§_-8o§;
            _loc3_.setTextureAt(param1,param2);
         }
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != §_-H2§)
         {
            §_-H2§ = param1;
            _loc2_ = §_-Ha§.§_-8o§;
            _loc2_.setProgram(param1);
         }
      }
   }
}
