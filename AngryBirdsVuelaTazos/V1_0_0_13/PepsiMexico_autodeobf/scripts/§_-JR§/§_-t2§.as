package §_-JR§
{
   import §_-UX§.DisplayObject;
   import §_-kX§.§_-sy§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-t2§
   {
      
      public static const §_-1§:int = 1;
      
      private static var §_-NH§:Array;
      
      private static var §_-8e§:Program3D;
       
      
      private var §_-dX§:Matrix3D;
      
      private var §_-Pj§:Matrix3D;
      
      public function §_-t2§()
      {
         super();
         this.§_-dX§ = new Matrix3D();
         this.§_-Pj§ = new Matrix3D();
         if(§_-NH§ == null)
         {
            §_-NH§ = [];
         }
         this.§_-C1§();
         this.§_-eu§(400,300);
      }
      
      public static function §_-nM§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public function §_-eu§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         this.§_-dX§.copyRawDataFrom(_loc5_);
      }
      
      public function §_-C1§() : void
      {
         this.§_-Pj§.identity();
      }
      
      public function §_-WU§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-Pj§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-xB§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-Pj§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-EG§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-Pj§.prependScale(param1,param2,param3);
      }
      
      public function §_-JG§(param1:DisplayObject) : void
      {
         §_-nM§(this.§_-Pj§,param1);
      }
      
      public function §_-H3§(param1:Matrix3D) : void
      {
         param1.copyFrom(this.§_-Pj§);
      }
      
      public function §_-sr§(param1:Matrix3D) : void
      {
         this.§_-Pj§.copyFrom(param1);
      }
      
      public function §_-tS§() : void
      {
         this.§_-C1§();
         this.§_-Pj§.copyFrom(this.§_-dX§);
      }
      
      public function get §_-EN§() : Matrix3D
      {
         return this.§_-Pj§;
      }
      
      public function §_-E7§(param1:Boolean) : void
      {
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc3_:String = !!param1 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         §_-yh§.§_-gS§.setBlendFactors(_loc3_,_loc2_);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         §_-yh§.§_-gS§.clear(§_-sy§.§_-ss§(param1) / 255,§_-sy§.§_-9B§(param1) / 255,§_-sy§.§_-8I§(param1) / 255,param2);
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != §_-NH§[param1])
         {
            §_-NH§[param1] = param2;
            _loc3_ = §_-yh§.§_-gS§;
            _loc3_.setTextureAt(param1,param2);
         }
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != §_-8e§)
         {
            §_-8e§ = param1;
            _loc2_ = §_-yh§.§_-gS§;
            _loc2_.setProgram(param1);
         }
      }
   }
}
