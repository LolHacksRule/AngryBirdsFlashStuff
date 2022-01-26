package §_-d5§
{
   import §_-6A§.§_-Ta§;
   import §_-vO§.DisplayObject;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-F§
   {
      
      public static const §_-fQ§:int = 1;
      
      private static var §_-wq§:Array;
      
      private static var §_-PI§:Program3D;
       
      
      private var §_-ke§:Matrix3D;
      
      private var §_-bP§:Matrix3D;
      
      public function §_-F§()
      {
         super();
         this.§_-ke§ = new Matrix3D();
         this.§_-bP§ = new Matrix3D();
         if(§_-wq§ == null)
         {
            §_-wq§ = [];
         }
         this.§_-3§();
         this.§_-fj§(400,300);
      }
      
      public static function §_-tq§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public function §_-fj§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         this.§_-ke§.copyRawDataFrom(_loc5_);
      }
      
      public function §_-3§() : void
      {
         this.§_-bP§.identity();
      }
      
      public function §_-Xr§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-bP§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-x1§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-bP§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-qs§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-bP§.prependScale(param1,param2,param3);
      }
      
      public function §_-qK§(param1:DisplayObject) : void
      {
         §_-tq§(this.§_-bP§,param1);
      }
      
      public function §_-v3§(param1:Matrix3D) : void
      {
         param1.copyFrom(this.§_-bP§);
      }
      
      public function §_-r0§(param1:Matrix3D) : void
      {
         this.§_-bP§.copyFrom(param1);
      }
      
      public function §_-Gf§() : void
      {
         this.§_-3§();
         this.§_-bP§.copyFrom(this.§_-ke§);
      }
      
      public function get §_-5y§() : Matrix3D
      {
         return this.§_-bP§;
      }
      
      public function §_-mZ§(param1:Boolean) : void
      {
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc3_:String = !!param1 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         §_-6Y§.§_-0D§.setBlendFactors(_loc3_,_loc2_);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         §_-6Y§.§_-0D§.clear(§_-Ta§.§_-Vz§(param1) / 255,§_-Ta§.§_-A7§(param1) / 255,§_-Ta§.§_-4E§(param1) / 255,param2);
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != §_-wq§[param1])
         {
            §_-wq§[param1] = param2;
            _loc3_ = §_-6Y§.§_-0D§;
            _loc3_.setTextureAt(param1,param2);
         }
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != §_-PI§)
         {
            §_-PI§ = param1;
            _loc2_ = §_-6Y§.§_-0D§;
            _loc2_.setProgram(param1);
         }
      }
   }
}
