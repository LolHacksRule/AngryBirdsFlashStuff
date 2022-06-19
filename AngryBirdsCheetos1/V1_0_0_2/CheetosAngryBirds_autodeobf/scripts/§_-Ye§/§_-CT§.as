package §_-Ye§
{
   import §_-GY§.DisplayObject;
   import §_-mb§.§_-RQ§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-CT§
   {
      
      public static const §_-w4§:int = 1;
      
      private static var §_-jg§:Array;
      
      private static var §_-86§:Program3D;
       
      
      private var §_-x8§:Matrix3D;
      
      private var §_-Z§:Matrix3D;
      
      public function §_-CT§()
      {
         super();
         this.§_-x8§ = new Matrix3D();
         this.§_-Z§ = new Matrix3D();
         if(§_-jg§ == null)
         {
            §_-jg§ = [];
         }
         this.§_-6M§();
         this.§ for§(400,300);
      }
      
      public static function §_-ky§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public function § for§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         this.§_-x8§.copyRawDataFrom(_loc5_);
      }
      
      public function §_-6M§() : void
      {
         this.§_-Z§.identity();
      }
      
      public function §_-NL§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-Z§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-Gf§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-Z§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-G-§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-Z§.prependScale(param1,param2,param3);
      }
      
      public function §_-xi§(param1:DisplayObject) : void
      {
         §_-ky§(this.§_-Z§,param1);
      }
      
      public function §_-E-§(param1:Matrix3D) : void
      {
         param1.copyFrom(this.§_-Z§);
      }
      
      public function §_-5x§(param1:Matrix3D) : void
      {
         this.§_-Z§.copyFrom(param1);
      }
      
      public function §_-M-§() : void
      {
         this.§_-6M§();
         this.§_-Z§.copyFrom(this.§_-x8§);
      }
      
      public function get §_-hA§() : Matrix3D
      {
         return this.§_-Z§;
      }
      
      public function §_-NO§(param1:Boolean) : void
      {
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc3_:String = !!param1 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         §_-cP§.§_-eZ§.setBlendFactors(_loc3_,_loc2_);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         §_-cP§.§_-eZ§.clear(§_-RQ§.§_-LH§(param1) / 255,§_-RQ§.§_-B-§(param1) / 255,§_-RQ§.§_-0a§(param1) / 255,param2);
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != §_-jg§[param1])
         {
            §_-jg§[param1] = param2;
            _loc3_ = §_-cP§.§_-eZ§;
            _loc3_.setTextureAt(param1,param2);
         }
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != §_-86§)
         {
            §_-86§ = param1;
            _loc2_ = §_-cP§.§_-eZ§;
            _loc2_.setProgram(param1);
         }
      }
   }
}
