package §'!3§
{
   import §,]§.Texture;
   import §-!'§.*;
   import §5D§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §@`§
   {
      
      private static var §#O§:Array;
      
      private static var §'!D§:Program3D;
      
      private static var §6p§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §?H§:Matrix3D;
      
      private var §;6§:Matrix3D;
      
      private var § @§:Matrix3D;
      
      private var §3!<§:Vector.<Matrix3D>;
      
      private var §%C§:int;
      
      private var §4I§:Vector.<§1!<§>;
      
      private var §+,§:int;
      
      private var §5=§:Context3D;
      
      private var §<!;§:int = -1;
      
      public function §@`§()
      {
         super();
         this.§?H§ = new Matrix3D();
         this.§;6§ = new Matrix3D();
         this.§ @§ = new Matrix3D();
         this.§3!<§ = new Vector.<Matrix3D>(0);
         this.§%C§ = 0;
         this.§+,§ = 0;
         this.§4I§ = new Vector.<§1!<§>();
         if(§#O§ == null)
         {
            §#O§ = [];
         }
         this.§#I§();
         this.§[%§(400,300);
         §&!H§.§+!H§.addEventListener(Event.CONTEXT3D_CREATE,this.§8k§);
      }
      
      public static function §%M§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§^H§(param1);
      }
      
      public static function §;N§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§%z§.§"!J§(param2) / 255,§%z§.§4w§(param2) / 255,§%z§.§ get§(param2) / 255,param3);
      }
      
      protected function get § !4§() : Matrix3D
      {
         return this.§;6§;
      }
      
      protected function get §3!L§() : Matrix3D
      {
         return this.§?H§;
      }
      
      public function §!O§(param1:Context3D, param2:int) : void
      {
         this.§5=§ = param1;
         this.§<!;§ = param2;
      }
      
      public function get §2G§() : Context3D
      {
         return this.§5=§;
      }
      
      public function get §&5§() : int
      {
         return this.§<!;§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1!<§ = null;
         for each(_loc1_ in this.§4I§)
         {
            _loc1_.dispose();
         }
         if(§&!H§.§+!H§)
         {
            §&!H§.§+!H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8k§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§%z§.§"!J§(param2) / 255,§%z§.§4w§(param2) / 255,§%z§.§ get§(param2) / 255,param3);
      }
      
      private function §8k§(param1:Event) : void
      {
         this.§4I§ = new <§1!<§>[new §1!<§()];
      }
      
      public function §[%§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §6p§[0] = 2 / param1;
         §6p§[1] = §6p§[2] = §6p§[3] = §6p§[4] = 0;
         §6p§[5] = -2 / param2;
         §6p§[6] = §6p§[7] = §6p§[8] = §6p§[9] = 0;
         §6p§[10] = -2 / (param4 - param3);
         §6p§[11] = 0;
         §6p§[12] = -1;
         §6p§[13] = 1;
         §6p§[14] = -(param4 + param3) / (param4 - param3);
         §6p§[15] = 1;
         this.§?H§.copyRawDataFrom(§6p§);
      }
      
      public function §#I§() : void
      {
         this.§;6§.identity();
      }
      
      public function §,!!§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§;6§.prependTranslation(param1,param2,param3);
      }
      
      public function §!J§(param1:Number, param2:Vector3D = null) : void
      {
         this.§;6§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §#j§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§;6§.prependScale(param1,param2,param3);
      }
      
      public function §^H§(param1:DisplayObject) : void
      {
         param1.§^H§(this.§;6§);
      }
      
      public function §`"§() : void
      {
         if(this.§3!<§.length < this.§%C§ + 1)
         {
            this.§3!<§.push(new Matrix3D());
         }
         this.§3!<§[this.§%C§++].copyFrom(this.§;6§);
      }
      
      public function §&+§() : void
      {
         this.§;6§.copyFrom(this.§3!<§[--this.§%C§]);
      }
      
      public function §2_§() : void
      {
         this.§%C§ = 0;
         this.§#I§();
      }
      
      public function get §6!P§() : Matrix3D
      {
         this.§ @§.identity();
         this.§ @§.append(this.§;6§);
         this.§ @§.append(this.§?H§);
         return this.§ @§;
      }
      
      public function batchQuad(param1:§ s§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§,!"§.§=!%§(param1,param3,param4))
         {
            this.§9!&§();
         }
         this.§,!"§.§"!?§(param1,param2,param3,param4,this.§;6§);
      }
      
      public function §9!&§() : void
      {
         if(this.§,!"§.§4!?§ > 0)
         {
            this.§,!"§.render(this.§2G§,this.§?H§);
            this.§,!"§.reset();
            ++this.§+,§;
            if(this.§4I§.length <= this.§+,§)
            {
               this.§4I§.push(new §1!<§());
            }
         }
      }
      
      public function §1&§() : void
      {
         this.§2_§();
         this.§+,§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §,!"§() : §1!<§
      {
         return this.§4I§[this.§+,§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §#O§[param2])
         {
            §#O§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §'!D§)
         {
            §'!D§ = param2;
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
