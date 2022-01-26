package §_-vB§
{
   import §_-Bt§.§_-Bu§;
   import §_-Ls§.DisplayObject;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-7p§
   {
      
      public static const §_-XC§:int = 1;
      
      private static var §_-G-§:Array;
      
      private static var §_-YM§:Program3D;
       
      
      private var §_-pZ§:Matrix3D;
      
      private var §_-rn§:Matrix3D;
      
      public function §_-7p§()
      {
         super();
         this.§_-pZ§ = new Matrix3D();
         this.§_-rn§ = new Matrix3D();
         if(§_-G-§ == null)
         {
            §_-G-§ = [];
         }
         this.§_-hh§();
         this.§_-dc§(400,300);
      }
      
      public static function §_-fy§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public function §_-dc§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         this.§_-pZ§.copyRawDataFrom(_loc5_);
      }
      
      public function §_-hh§() : void
      {
         this.§_-rn§.identity();
      }
      
      public function §_-7H§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-rn§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-wX§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-rn§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-Ra§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-rn§.prependScale(param1,param2,param3);
      }
      
      public function §_-Lz§(param1:DisplayObject) : void
      {
         §_-fy§(this.§_-rn§,param1);
      }
      
      public function §_-si§(param1:Matrix3D) : void
      {
         param1.copyFrom(this.§_-rn§);
      }
      
      public function §_-4m§(param1:Matrix3D) : void
      {
         this.§_-rn§.copyFrom(param1);
      }
      
      public function §_-w5§() : void
      {
         this.§_-hh§();
         this.§_-rn§.copyFrom(this.§_-pZ§);
      }
      
      public function get §_-0-9§() : Matrix3D
      {
         return this.§_-rn§;
      }
      
      public function §_-8V§(param1:Boolean) : void
      {
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc3_:String = !!param1 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         §_-Kk§.§_-r9§.setBlendFactors(_loc3_,_loc2_);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         §_-Kk§.§_-r9§.clear(§_-Bu§.§_-ld§(param1) / 255,§_-Bu§.§_-bt§(param1) / 255,§_-Bu§.§_-YS§(param1) / 255,param2);
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != §_-G-§[param1])
         {
            §_-G-§[param1] = param2;
            _loc3_ = §_-Kk§.§_-r9§;
            _loc3_.setTextureAt(param1,param2);
         }
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != §_-YM§)
         {
            §_-YM§ = param1;
            _loc2_ = §_-Kk§.§_-r9§;
            _loc2_.setProgram(param1);
         }
      }
   }
}
