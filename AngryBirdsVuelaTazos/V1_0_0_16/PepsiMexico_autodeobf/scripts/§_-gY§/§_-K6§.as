package §_-gY§
{
   import §_-LP§.DisplayObject;
   import §_-ia§.§_-xi§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-K6§
   {
      
      public static const §_-JS§:int = 1;
      
      private static var §_-vV§:Array;
      
      private static var §_-q2§:Program3D;
       
      
      private var §_-7B§:Matrix3D;
      
      private var §_-Qy§:Matrix3D;
      
      public function §_-K6§()
      {
         super();
         this.§_-7B§ = new Matrix3D();
         this.§_-Qy§ = new Matrix3D();
         if(§_-vV§ == null)
         {
            §_-vV§ = [];
         }
         this.§_-Dj§();
         this.§_-M1§(400,300);
      }
      
      public static function §_-vF§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public function §_-M1§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         this.§_-7B§.copyRawDataFrom(_loc5_);
      }
      
      public function §_-Dj§() : void
      {
         this.§_-Qy§.identity();
      }
      
      public function §_-l-§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-Qy§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-1R§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-Qy§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-LY§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-Qy§.prependScale(param1,param2,param3);
      }
      
      public function §_-FA§(param1:DisplayObject) : void
      {
         §_-vF§(this.§_-Qy§,param1);
      }
      
      public function §_-TX§(param1:Matrix3D) : void
      {
         param1.copyFrom(this.§_-Qy§);
      }
      
      public function §_-2v§(param1:Matrix3D) : void
      {
         this.§_-Qy§.copyFrom(param1);
      }
      
      public function §_-ar§() : void
      {
         this.§_-Dj§();
         this.§_-Qy§.copyFrom(this.§_-7B§);
      }
      
      public function get §_-wW§() : Matrix3D
      {
         return this.§_-Qy§;
      }
      
      public function §_-Nw§(param1:Boolean) : void
      {
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc3_:String = !!param1 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         §_-Vu§.§_-ez§.setBlendFactors(_loc3_,_loc2_);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         §_-Vu§.§_-ez§.clear(§_-xi§.§_-UI§(param1) / 255,§_-xi§.§_-KU§(param1) / 255,§_-xi§.§_-gf§(param1) / 255,param2);
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != §_-vV§[param1])
         {
            §_-vV§[param1] = param2;
            _loc3_ = §_-Vu§.§_-ez§;
            _loc3_.setTextureAt(param1,param2);
         }
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != §_-q2§)
         {
            §_-q2§ = param1;
            _loc2_ = §_-Vu§.§_-ez§;
            _loc2_.setProgram(param1);
         }
      }
   }
}
