package §@g§
{
   import §7G§.*;
   import §86§.*;
   import §[!A§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'U§
   {
      
      private static var §+I§:Array;
      
      private static var §2U§:Program3D;
      
      private static var §,!F§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §<%§:Matrix3D;
      
      private var §"!N§:Matrix3D;
      
      private var §0!>§:Matrix3D;
      
      private var §]2§:Vector.<Matrix3D>;
      
      private var §7!!§:int;
      
      private var §8!M§:Vector.<§ O§>;
      
      private var §'!<§:int;
      
      private var §<y§:Context3D;
      
      private var §,!4§:int = -1;
      
      public function §'U§()
      {
         super();
         this.§<%§ = new Matrix3D();
         this.§"!N§ = new Matrix3D();
         this.§0!>§ = new Matrix3D();
         this.§]2§ = new Vector.<Matrix3D>(0);
         this.§7!!§ = 0;
         this.§'!<§ = 0;
         this.§8!M§ = new Vector.<§ O§>();
         if(§+I§ == null)
         {
            §+I§ = [];
         }
         this.§+H§();
         this.§%r§(400,300);
         §4!@§.§ C§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!?§);
      }
      
      public static function §74§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§%w§(param1);
      }
      
      public static function §3!#§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§[!0§.§-r§(param2) / 255,§[!0§.§;!=§(param2) / 255,§[!0§.§]&§(param2) / 255,param3);
      }
      
      protected function get §2w§() : Matrix3D
      {
         return this.§"!N§;
      }
      
      protected function get §<i§() : Matrix3D
      {
         return this.§<%§;
      }
      
      public function §8y§(param1:Context3D, param2:int) : void
      {
         this.§<y§ = param1;
         this.§,!4§ = param2;
      }
      
      public function get §2!0§() : Context3D
      {
         return this.§<y§;
      }
      
      public function get §3!@§() : int
      {
         return this.§,!4§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ O§ = null;
         for each(_loc1_ in this.§8!M§)
         {
            _loc1_.dispose();
         }
         if(§4!@§.§ C§)
         {
            §4!@§.§ C§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!?§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§[!0§.§-r§(param2) / 255,§[!0§.§;!=§(param2) / 255,§[!0§.§]&§(param2) / 255,param3);
      }
      
      private function §#!?§(param1:Event) : void
      {
         this.§8!M§ = new <§ O§>[new § O§()];
      }
      
      public function §%r§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §,!F§[0] = 2 / param1;
         §,!F§[1] = §,!F§[2] = §,!F§[3] = §,!F§[4] = 0;
         §,!F§[5] = -2 / param2;
         §,!F§[6] = §,!F§[7] = §,!F§[8] = §,!F§[9] = 0;
         §,!F§[10] = -2 / (param4 - param3);
         §,!F§[11] = 0;
         §,!F§[12] = -1;
         §,!F§[13] = 1;
         §,!F§[14] = -(param4 + param3) / (param4 - param3);
         §,!F§[15] = 1;
         this.§<%§.copyRawDataFrom(§,!F§);
      }
      
      public function §+H§() : void
      {
         this.§"!N§.identity();
      }
      
      public function §<h§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§"!N§.prependTranslation(param1,param2,param3);
      }
      
      public function § 8§(param1:Number, param2:Vector3D = null) : void
      {
         this.§"!N§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §8'§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§"!N§.prependScale(param1,param2,param3);
      }
      
      public function §%w§(param1:DisplayObject) : void
      {
         param1.§%w§(this.§"!N§);
      }
      
      public function §7!M§() : void
      {
         if(this.§]2§.length < this.§7!!§ + 1)
         {
            this.§]2§.push(new Matrix3D());
         }
         this.§]2§[this.§7!!§++].copyFrom(this.§"!N§);
      }
      
      public function dynamic() : void
      {
         this.§"!N§.copyFrom(this.§]2§[--this.§7!!§]);
      }
      
      public function §3A§() : void
      {
         this.§7!!§ = 0;
         this.§+H§();
      }
      
      public function get §<V§() : Matrix3D
      {
         this.§0!>§.identity();
         this.§0!>§.append(this.§"!N§);
         this.§0!>§.append(this.§<%§);
         return this.§0!>§;
      }
      
      public function batchQuad(param1:§=u§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§?A§.§[o§(param1,param3,param4))
         {
            this.§[!&§();
         }
         this.§?A§.§1z§(param1,param2,param3,param4,this.§"!N§);
      }
      
      public function §[!&§() : void
      {
         if(this.§?A§.§@u§ > 0)
         {
            this.§?A§.render(this.§2!0§,this.§<%§);
            this.§?A§.reset();
            ++this.§'!<§;
            if(this.§8!M§.length <= this.§'!<§)
            {
               this.§8!M§.push(new § O§());
            }
         }
      }
      
      public function §`!M§() : void
      {
         this.§3A§();
         this.§'!<§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §?A§() : § O§
      {
         return this.§8!M§[this.§'!<§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §+I§[param2])
         {
            §+I§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §2U§)
         {
            §2U§ = param2;
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
