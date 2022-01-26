package §_-B2§
{
   import §_-Zq§.§_-K0§;
   import §_-se§.DisplayObject;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DBlendFactor;
   import flash.display3D.Program3D;
   import flash.display3D.textures.TextureBase;
   import flash.geom.Matrix3D;
   import flash.geom.Vector3D;
   
   public class §_-Ke§
   {
      
      public static const §_-7u§:int = 1;
      
      private static var §_-r4§:Array;
      
      private static var §_-OO§:Program3D;
       
      
      private var §_-NU§:Matrix3D;
      
      private var §_-90§:Matrix3D;
      
      private var §_-Ws§:Boolean = false;
      
      public function §_-Ke§()
      {
         super();
         this.§_-NU§ = new Matrix3D();
         this.§_-90§ = new Matrix3D();
         if(§_-r4§ == null)
         {
            §_-r4§ = [];
         }
         this.§_-Km§();
         this.§_-I-§(400,300);
      }
      
      public static function §_-3W§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         var _loc5_:Number = param2.rotation;
         var _loc6_:Number = param2.scaleX;
         var _loc7_:Number = param2.scaleY;
         var _loc8_:Number = param2.pivotX;
         var _loc9_:Number = param2.pivotY;
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
      
      public function §_-I-§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         var _loc5_:Vector.<Number> = new <Number>[2 / param1,0,0,0,0,-2 / param2,0,0,0,0,-2 / (param4 - param3),0,-1,1,-(param4 + param3) / (param4 - param3),1];
         this.§_-NU§.copyRawDataFrom(_loc5_);
      }
      
      public function §_-Km§() : void
      {
         this.§_-90§.identity();
         this.§_-Ws§ = false;
      }
      
      public function §_-MW§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-90§.prependTranslation(param1,param2,param3);
         this.§_-Ws§ = false;
      }
      
      public function §_-Yd§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-90§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
         this.§_-Ws§ = false;
      }
      
      public function §_-9f§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-90§.prependScale(param1,param2,param3);
         this.§_-Ws§ = false;
      }
      
      public function §_-KI§(param1:DisplayObject) : void
      {
         §_-3W§(this.§_-90§,param1);
         this.§_-Ws§ = false;
      }
      
      public function §_-FU§(param1:Matrix3D) : void
      {
         param1.copyFrom(this.§_-90§);
      }
      
      public function §_-kN§(param1:Matrix3D) : void
      {
         this.§_-90§.copyFrom(param1);
         this.§_-Ws§ = false;
      }
      
      public function §_-JW§() : void
      {
         this.§_-Km§();
      }
      
      public function get §_-Lp§() : Matrix3D
      {
         if(!this.§_-Ws§)
         {
            this.§_-90§.append(this.§_-NU§);
            this.§_-Ws§ = true;
         }
         return this.§_-90§;
      }
      
      public function §_-Gg§(param1:Boolean) : void
      {
         var _loc2_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc3_:String = !!param1 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         §_-H4§.§_-Eu§.setBlendFactors(_loc3_,_loc2_);
      }
      
      public function clear(param1:uint = 0, param2:Number = 0.0) : void
      {
         §_-H4§.§_-Eu§.clear(§_-K0§.§_-T5§(param1) / 255,§_-K0§.§_-Rp§(param1) / 255,§_-K0§.§_-kl§(param1) / 255,param2);
      }
      
      public function setTextureAt(param1:int, param2:TextureBase) : void
      {
         var _loc3_:Context3D = null;
         if(param2 != §_-r4§[param1])
         {
            §_-r4§[param1] = param2;
            _loc3_ = §_-H4§.§_-Eu§;
            _loc3_.setTextureAt(param1,param2);
         }
      }
      
      public function setProgram(param1:Program3D) : void
      {
         var _loc2_:Context3D = null;
         if(param1 != §_-OO§)
         {
            §_-OO§ = param1;
            _loc2_ = §_-H4§.§_-Eu§;
            _loc2_.setProgram(param1);
         }
      }
   }
}
