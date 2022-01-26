package §_-v3§
{
   import §_-0b§.§_-xD§;
   import §_-pF§.DisplayObject;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-L4§
   {
      
      public static const §_-pV§:int = 1;
      
      private static var §_-JJ§:Array;
      
      private static var §_-9L§:Program3D;
       
      
      private var §_-CP§:Matrix3D;
      
      private var §_-Ic§:Matrix3D;
      
      public function §_-L4§()
      {
         super();
         this.§_-CP§ = new Matrix3D();
         this.§_-Ic§ = new Matrix3D();
         if(§_-JJ§ == null)
         {
            §_-JJ§ = [];
         }
         this.§_-Gy§();
         this.§_-iS§(400,300);
      }
      
      public static function §_-aM§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public function §_-iS§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         this.§_-CP§.copyRawDataFrom(_loc5_);
      }
      
      public function §_-Gy§() : void
      {
         this.§_-Ic§.identity();
      }
      
      public function §_-F0§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-Ic§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-CJ§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-Ic§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-QL§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-Ic§.prependScale(param1,param2,param3);
      }
      
      public function §_-f7§(param1:DisplayObject) : void
      {
         §_-aM§(this.§_-Ic§,param1);
      }
      
      public function §_-dI§(param1:Matrix3D) : void
      {
         param1.copyFrom(this.§_-Ic§);
      }
      
      public function §_-Wo§(param1:Matrix3D) : void
      {
         this.§_-Ic§.copyFrom(param1);
      }
      
      public function §_-st§() : void
      {
         this.§_-Gy§();
         this.§_-Ic§.copyFrom(this.§_-CP§);
      }
      
      public function get §_-Qz§() : Matrix3D
      {
         return this.§_-Ic§;
      }
      
      public function §_-Wz§(param1:Boolean) : void
      {
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc3_:String = !!param1 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         §_-G3§.§_-FH§.setBlendFactors(_loc3_,_loc2_);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         §_-G3§.§_-FH§.clear(§_-xD§.§_-oD§(param1) / 255,§_-xD§.§_-P1§(param1) / 255,§_-xD§.§_-e-§(param1) / 255,param2);
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != §_-JJ§[param1])
         {
            §_-JJ§[param1] = param2;
            _loc3_ = §_-G3§.§_-FH§;
            _loc3_.setTextureAt(param1,param2);
         }
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != §_-9L§)
         {
            §_-9L§ = param1;
            _loc2_ = §_-G3§.§_-FH§;
            _loc2_.setProgram(param1);
         }
      }
   }
}
