package §_-fI§
{
   import §_-CG§.§_-66§;
   import §_-b5§.DisplayObject;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-6W§
   {
      
      public static const §_-HQ§:int = 1;
      
      private static var §_-Ko§:Array;
      
      private static var §each §:Program3D;
       
      
      private var §_-Pi§:Matrix3D;
      
      private var §_-Tf§:Matrix3D;
      
      public function §_-6W§()
      {
         super();
         this.§_-Pi§ = new Matrix3D();
         this.§_-Tf§ = new Matrix3D();
         if(§_-Ko§ == null)
         {
            §_-Ko§ = [];
         }
         this.§_-GB§();
         this.§_-Iy§(400,300);
      }
      
      public static function §_-0u§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public function §_-Iy§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         this.§_-Pi§.copyRawDataFrom(_loc5_);
      }
      
      public function §_-GB§() : void
      {
         this.§_-Tf§.identity();
      }
      
      public function §_-Bh§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-Tf§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-pn§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-Tf§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-AA§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-Tf§.prependScale(param1,param2,param3);
      }
      
      public function §_-UM§(param1:DisplayObject) : void
      {
         §_-0u§(this.§_-Tf§,param1);
      }
      
      public function §_-5y§(param1:Matrix3D) : void
      {
         param1.copyFrom(this.§_-Tf§);
      }
      
      public function §_-gE§(param1:Matrix3D) : void
      {
         this.§_-Tf§.copyFrom(param1);
      }
      
      public function §_-hJ§() : void
      {
         this.§_-GB§();
         this.§_-Tf§.copyFrom(this.§_-Pi§);
      }
      
      public function get §_-tN§() : Matrix3D
      {
         return this.§_-Tf§;
      }
      
      public function §_-oD§(param1:Boolean) : void
      {
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc3_:String = !!param1 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         §_-BI§.§_-Pw§.setBlendFactors(_loc3_,_loc2_);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         §_-BI§.§_-Pw§.clear(§_-66§.§_-Bg§(param1) / 255,§_-66§.§_-zD§(param1) / 255,§_-66§.§_-hS§(param1) / 255,param2);
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != §_-Ko§[param1])
         {
            §_-Ko§[param1] = param2;
            _loc3_ = §_-BI§.§_-Pw§;
            _loc3_.setTextureAt(param1,param2);
         }
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != §each §)
         {
            §each § = param1;
            _loc2_ = §_-BI§.§_-Pw§;
            _loc2_.setProgram(param1);
         }
      }
   }
}
