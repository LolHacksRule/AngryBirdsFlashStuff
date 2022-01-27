package §^h§
{
   import §-!A§.*;
   import §<!N§.*;
   import §@M§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §?!D§
   {
      
      private static var §[;§:Array;
      
      private static var §5!I§:Program3D;
      
      private static var §&I§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §^V§:Matrix3D;
      
      private var dynamic:Matrix3D;
      
      private var §[-§:Matrix3D;
      
      private var §0c§:Vector.<Matrix3D>;
      
      private var §4Z§:int;
      
      private var §-6§:Vector.<§^M§>;
      
      private var §&!'§:int;
      
      private var §4!<§:Context3D;
      
      private var §=!0§:int = -1;
      
      public function §?!D§()
      {
         super();
         this.§^V§ = new Matrix3D();
         this.dynamic = new Matrix3D();
         this.§[-§ = new Matrix3D();
         this.§0c§ = new Vector.<Matrix3D>(0);
         this.§4Z§ = 0;
         this.§&!'§ = 0;
         this.§-6§ = new Vector.<§^M§>();
         if(§[;§ == null)
         {
            §[;§ = [];
         }
         this.§]$§();
         this.§^R§(400,300);
         §2l§.§7K§.addEventListener(Event.CONTEXT3D_CREATE,this.§-z§);
      }
      
      public static function §"b§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§>;§(param1);
      }
      
      public static function §21§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§6!<§.§4>§(param2) / 255,§6!<§.§[o§(param2) / 255,§6!<§.§'A§(param2) / 255,param3);
      }
      
      protected function get §&§() : Matrix3D
      {
         return this.dynamic;
      }
      
      protected function get §8!M§() : Matrix3D
      {
         return this.§^V§;
      }
      
      public function §'s§(param1:Context3D, param2:int) : void
      {
         this.§4!<§ = param1;
         this.§=!0§ = param2;
      }
      
      public function get §]7§() : Context3D
      {
         return this.§4!<§;
      }
      
      public function get §9!E§() : int
      {
         return this.§=!0§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^M§ = null;
         for each(_loc1_ in this.§-6§)
         {
            _loc1_.dispose();
         }
         if(§2l§.§7K§)
         {
            §2l§.§7K§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-z§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§6!<§.§4>§(param2) / 255,§6!<§.§[o§(param2) / 255,§6!<§.§'A§(param2) / 255,param3);
      }
      
      private function §-z§(param1:Event) : void
      {
         this.§-6§ = new <§^M§>[new §^M§()];
      }
      
      public function §^R§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §&I§[0] = 2 / param1;
         §&I§[1] = §&I§[2] = §&I§[3] = §&I§[4] = 0;
         §&I§[5] = -2 / param2;
         §&I§[6] = §&I§[7] = §&I§[8] = §&I§[9] = 0;
         §&I§[10] = -2 / (param4 - param3);
         §&I§[11] = 0;
         §&I§[12] = -1;
         §&I§[13] = 1;
         §&I§[14] = -(param4 + param3) / (param4 - param3);
         §&I§[15] = 1;
         this.§^V§.copyRawDataFrom(§&I§);
      }
      
      public function §]$§() : void
      {
         this.dynamic.identity();
      }
      
      public function §%N§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.dynamic.prependTranslation(param1,param2,param3);
      }
      
      public function §]S§(param1:Number, param2:Vector3D = null) : void
      {
         this.dynamic.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §9!=§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.dynamic.prependScale(param1,param2,param3);
      }
      
      public function §>;§(param1:DisplayObject) : void
      {
         param1.§>;§(this.dynamic);
      }
      
      public function §9!D§() : void
      {
         if(this.§0c§.length < this.§4Z§ + 1)
         {
            this.§0c§.push(new Matrix3D());
         }
         this.§0c§[this.§4Z§++].copyFrom(this.dynamic);
      }
      
      public function §7c§() : void
      {
         this.dynamic.copyFrom(this.§0c§[--this.§4Z§]);
      }
      
      public function § !D§() : void
      {
         this.§4Z§ = 0;
         this.§]$§();
      }
      
      public function get §?D§() : Matrix3D
      {
         this.§[-§.identity();
         this.§[-§.append(this.dynamic);
         this.§[-§.append(this.§^V§);
         return this.§[-§;
      }
      
      public function batchQuad(param1:§^3§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§+O§.§[0§(param1,param3,param4))
         {
            this.§3!P§();
         }
         this.§+O§.§`L§(param1,param2,param3,param4,this.dynamic);
      }
      
      public function §3!P§() : void
      {
         if(this.§+O§.§^j§ > 0)
         {
            this.§+O§.render(this.§]7§,this.§^V§);
            this.§+O§.reset();
            ++this.§&!'§;
            if(this.§-6§.length <= this.§&!'§)
            {
               this.§-6§.push(new §^M§());
            }
         }
      }
      
      public function §9F§() : void
      {
         this.§ !D§();
         this.§&!'§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §+O§() : §^M§
      {
         return this.§-6§[this.§&!'§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §[;§[param2])
         {
            §[;§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §5!I§)
         {
            §5!I§ = param2;
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
