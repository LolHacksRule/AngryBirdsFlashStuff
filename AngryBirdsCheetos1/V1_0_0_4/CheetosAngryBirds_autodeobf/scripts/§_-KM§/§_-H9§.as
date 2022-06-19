package §_-KM§
{
   import §_-i9§.Texture;
   import §_-kC§.*;
   import §case §.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §_-H9§
   {
      
      private static var §_-ws§:Array;
      
      private static var §_-Ry§:Program3D;
      
      private static var §_-QK§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §_-00v§:Matrix3D;
      
      private var §_-UO§:Matrix3D;
      
      private var §_-B§:Matrix3D;
      
      private var §_-rf§:Vector.<Matrix3D>;
      
      private var §_-vf§:int;
      
      private var §_-0-k§:Vector.<§_-g8§>;
      
      private var §_-AY§:int;
      
      private var §_-RJ§:Context3D;
      
      private var §_-54§:int = -1;
      
      public function §_-H9§()
      {
         super();
         this.§_-00v§ = new Matrix3D();
         this.§_-UO§ = new Matrix3D();
         this.§_-B§ = new Matrix3D();
         this.§_-rf§ = new Vector.<Matrix3D>(0);
         this.§_-vf§ = 0;
         this.§_-AY§ = 0;
         this.§_-0-k§ = new Vector.<§_-g8§>();
         if(§_-ws§ == null)
         {
            §_-ws§ = [];
         }
         this.§_-2d§();
         this.§_-1u§(400,300);
         §_-0A§.§_-bz§.addEventListener(Event.CONTEXT3D_CREATE,this.§_-DW§);
      }
      
      public static function §_-cm§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public static function §_-tz§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§_-T9§.§_-GF§(param2) / 255,§_-T9§.§_-4F§(param2) / 255,§_-T9§.§_-Xm§(param2) / 255,param3);
      }
      
      protected function get §_-yR§() : Matrix3D
      {
         return this.§_-UO§;
      }
      
      protected function get §_-aQ§() : Matrix3D
      {
         return this.§_-00v§;
      }
      
      public function §_-k8§(param1:Context3D, param2:int) : void
      {
         this.§_-RJ§ = param1;
         this.§_-54§ = param2;
      }
      
      public function get §_-6W§() : Context3D
      {
         return this.§_-RJ§;
      }
      
      public function get §_-JC§() : int
      {
         return this.§_-54§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§_-g8§ = null;
         for each(_loc1_ in this.§_-0-k§)
         {
            _loc1_.dispose();
         }
         §_-0A§.§_-bz§.removeEventListener(Event.CONTEXT3D_CREATE,this.§_-DW§);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§_-T9§.§_-GF§(param2) / 255,§_-T9§.§_-4F§(param2) / 255,§_-T9§.§_-Xm§(param2) / 255,param3);
      }
      
      private function §_-DW§(param1:Event) : void
      {
         this.§_-0-k§ = new <§_-g8§>[new §_-g8§()];
      }
      
      public function §_-1u§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §_-QK§[0] = 2 / param1;
         §_-QK§[1] = §_-QK§[2] = §_-QK§[3] = §_-QK§[4] = 0;
         §_-QK§[5] = -2 / param2;
         §_-QK§[6] = §_-QK§[7] = §_-QK§[8] = §_-QK§[9] = 0;
         §_-QK§[10] = -2 / (param4 - param3);
         §_-QK§[11] = 0;
         §_-QK§[12] = -1;
         §_-QK§[13] = 1;
         §_-QK§[14] = -(param4 + param3) / (param4 - param3);
         §_-QK§[15] = 1;
         this.§_-00v§.copyRawDataFrom(§_-QK§);
      }
      
      public function §_-2d§() : void
      {
         this.§_-UO§.identity();
      }
      
      public function §_-EF§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§_-UO§.prependTranslation(param1,param2,param3);
      }
      
      public function §_-GE§(param1:Number, param2:Vector3D = null) : void
      {
         this.§_-UO§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §_-zj§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§_-UO§.prependScale(param1,param2,param3);
      }
      
      public function §_-0-§(param1:DisplayObject) : void
      {
         §_-cm§(this.§_-UO§,param1);
      }
      
      public function §_-8k§() : void
      {
         if(this.§_-rf§.length < this.§_-vf§ + 1)
         {
            this.§_-rf§.push(new Matrix3D());
         }
         this.§_-rf§[this.§_-vf§++].copyFrom(this.§_-UO§);
      }
      
      public function §_-on§() : void
      {
         this.§_-UO§.copyFrom(this.§_-rf§[--this.§_-vf§]);
      }
      
      public function §_-gr§() : void
      {
         this.§_-vf§ = 0;
         this.§_-2d§();
      }
      
      public function get §_-Tj§() : Matrix3D
      {
         this.§_-B§.identity();
         this.§_-B§.append(this.§_-UO§);
         this.§_-B§.append(this.§_-00v§);
         return this.§_-B§;
      }
      
      public function batchQuad(param1:§_-Gm§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§_-fe§.§import§(param1,param3,param4))
         {
            this.§_-Pd§();
         }
         this.§_-fe§.§_-5e§(param1,param2,param3,param4,this.§_-UO§);
      }
      
      public function §_-Pd§() : void
      {
         if(this.§_-fe§.§_-GU§ > 0)
         {
            this.§_-fe§.render(this.§_-6W§,this.§_-00v§);
            this.§_-fe§.reset();
            ++this.§_-AY§;
            if(this.§_-0-k§.length <= this.§_-AY§)
            {
               this.§_-0-k§.push(new §_-g8§());
            }
         }
      }
      
      public function §_-ld§() : void
      {
         this.§_-gr§();
         this.§_-AY§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §_-fe§() : §_-g8§
      {
         return this.§_-0-k§[this.§_-AY§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §_-ws§[param2])
         {
            §_-ws§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §_-Ry§)
         {
            §_-Ry§ = param2;
            param1.setProgram(param2);
         }
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
   }
}
