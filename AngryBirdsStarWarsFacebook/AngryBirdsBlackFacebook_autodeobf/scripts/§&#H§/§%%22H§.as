package §&#H§
{
   import §!!U§.*;
   import §&v§.Texture;
   import §=]§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §%"H§
   {
      
      private static var §6#E§:Array;
      
      private static var §[!1§:Program3D;
      
      private static var §>!y§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §5#6§:Matrix3D;
      
      private var §7"#§:Matrix3D;
      
      private var §6r§:Matrix3D;
      
      private var §?!Z§:Vector.<Matrix3D>;
      
      private var §-"<§:int;
      
      private var §9!&§:Vector.<§%"Y§>;
      
      private var §<"D§:int;
      
      private var §!§:Context3D;
      
      private var §`!X§:int = -1;
      
      public function §%"H§()
      {
         super();
         this.§5#6§ = new Matrix3D();
         this.§7"#§ = new Matrix3D();
         this.§6r§ = new Matrix3D();
         this.§?!Z§ = new Vector.<Matrix3D>(0);
         this.§-"<§ = 0;
         this.§<"D§ = 0;
         this.§9!&§ = new Vector.<§%"Y§>();
         if(§6#E§ == null)
         {
            §6#E§ = [];
         }
         this.§;0§();
         this.§5#G§(400,300);
         §3#J§.§2!C§.addEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
      }
      
      public static function §;!?§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§!]§(param1);
      }
      
      public static function §`!_§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§4"I§.§7!0§(param2) / 255,§4"I§.§=#Z§(param2) / 255,§4"I§.§@H§(param2) / 255,param3);
      }
      
      protected function get §&e§() : Matrix3D
      {
         return this.§7"#§;
      }
      
      protected function get §9"y§() : Matrix3D
      {
         return this.§5#6§;
      }
      
      public function §>"0§(param1:Context3D, param2:int) : void
      {
         this.§!§ = param1;
         this.§`!X§ = param2;
      }
      
      public function get §<"t§() : Context3D
      {
         return this.§!§;
      }
      
      public function get §^#2§() : int
      {
         return this.§`!X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%"Y§ = null;
         for each(_loc1_ in this.§9!&§)
         {
            _loc1_.dispose();
         }
         if(§3#J§.§2!C§)
         {
            §3#J§.§2!C§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%!b§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§4"I§.§7!0§(param2) / 255,§4"I§.§=#Z§(param2) / 255,§4"I§.§@H§(param2) / 255,param3);
      }
      
      private function §%!b§(param1:Event) : void
      {
         this.§9!&§ = new <§%"Y§>[new §%"Y§()];
      }
      
      public function §5#G§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §>!y§[0] = 2 / param1;
         §>!y§[1] = §>!y§[2] = §>!y§[3] = §>!y§[4] = 0;
         §>!y§[5] = -2 / param2;
         §>!y§[6] = §>!y§[7] = §>!y§[8] = §>!y§[9] = 0;
         §>!y§[10] = -2 / (param4 - param3);
         §>!y§[11] = 0;
         §>!y§[12] = -1;
         §>!y§[13] = 1;
         §>!y§[14] = -(param4 + param3) / (param4 - param3);
         §>!y§[15] = 1;
         this.§5#6§.copyRawDataFrom(§>!y§);
      }
      
      public function §;0§() : void
      {
         this.§7"#§.identity();
      }
      
      public function §3"N§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§7"#§.prependTranslation(param1,param2,param3);
      }
      
      public function §;"^§(param1:Number, param2:Vector3D = null) : void
      {
         this.§7"#§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §""M§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§7"#§.prependScale(param1,param2,param3);
      }
      
      public function §!]§(param1:DisplayObject) : void
      {
         param1.§!]§(this.§7"#§);
      }
      
      public function §?#a§() : void
      {
         if(this.§?!Z§.length < this.§-"<§ + 1)
         {
            this.§?!Z§.push(new Matrix3D());
         }
         this.§?!Z§[this.§-"<§++].copyFrom(this.§7"#§);
      }
      
      public function §"!0§() : void
      {
         this.§7"#§.copyFrom(this.§?!Z§[--this.§-"<§]);
      }
      
      public function §6v§() : void
      {
         this.§-"<§ = 0;
         this.§;0§();
      }
      
      public function get §&h§() : Matrix3D
      {
         this.§6r§.identity();
         this.§6r§.append(this.§7"#§);
         this.§6r§.append(this.§5#6§);
         return this.§6r§;
      }
      
      public function batchQuad(param1:§2"D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§9!6§.§@c§(param1,param3,param4,param2))
         {
            this.§+#X§();
         }
         this.§9!6§.§54§(param1,param2,param3,param4,this.§7"#§);
      }
      
      public function §+#X§() : void
      {
         if(this.§9!6§.§%">§ > 0)
         {
            this.§9!6§.render(this.§<"t§,this.§5#6§);
            this.§9!6§.reset();
            ++this.§<"D§;
            if(this.§9!&§.length <= this.§<"D§)
            {
               this.§9!&§.push(new §%"Y§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§6v§();
         this.§<"D§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §9!6§() : §%"Y§
      {
         return this.§9!&§[this.§<"D§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §6#E§[param2])
         {
            §6#E§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §[!1§)
         {
            §[!1§ = param2;
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
