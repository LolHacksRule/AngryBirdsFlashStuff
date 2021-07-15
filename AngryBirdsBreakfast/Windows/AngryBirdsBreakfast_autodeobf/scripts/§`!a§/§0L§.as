package §`!a§
{
   import §%q§.Texture;
   import §+o§.*;
   import §6![§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §0L§
   {
      
      private static var §1u§:Array;
      
      private static var §=!Y§:Program3D;
      
      private static var §7!9§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §6-§:Matrix3D;
      
      private var §3!h§:Matrix3D;
      
      private var §@9§:Matrix3D;
      
      private var §3!§:Vector.<Matrix3D>;
      
      private var §4!;§:int;
      
      private var §;u§:Vector.<§4>§>;
      
      private var §`!R§:int;
      
      private var §&!a§:Context3D;
      
      private var §2!t§:int = -1;
      
      public function §0L§()
      {
         super();
         this.§6-§ = new Matrix3D();
         this.§3!h§ = new Matrix3D();
         this.§@9§ = new Matrix3D();
         this.§3!§ = new Vector.<Matrix3D>(0);
         this.§4!;§ = 0;
         this.§`!R§ = 0;
         this.§;u§ = new Vector.<§4>§>();
         if(§1u§ == null)
         {
            §1u§ = [];
         }
         this.§^U§();
         this.§0!n§(400,300);
         §1"&§.§1i§.addEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
      }
      
      public static function §?!"§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§9K§(param1);
      }
      
      public static function §@M§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§,!L§.§3!2§(param2) / 255,§,!L§.§3!B§(param2) / 255,§,!L§.§>]§(param2) / 255,param3);
      }
      
      protected function get § !K§() : Matrix3D
      {
         return this.§3!h§;
      }
      
      protected function get §`!A§() : Matrix3D
      {
         return this.§6-§;
      }
      
      public function § N§(param1:Context3D, param2:int) : void
      {
         this.§&!a§ = param1;
         this.§2!t§ = param2;
      }
      
      public function get §`r§() : Context3D
      {
         return this.§&!a§;
      }
      
      public function get §#A§() : int
      {
         return this.§2!t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4>§ = null;
         for each(_loc1_ in this.§;u§)
         {
            _loc1_.dispose();
         }
         if(§1"&§.§1i§)
         {
            §1"&§.§1i§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%;§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§,!L§.§3!2§(param2) / 255,§,!L§.§3!B§(param2) / 255,§,!L§.§>]§(param2) / 255,param3);
      }
      
      private function §%;§(param1:Event) : void
      {
         this.§;u§ = new <§4>§>[new §4>§()];
      }
      
      public function §0!n§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §7!9§[0] = 2 / param1;
         §7!9§[1] = §7!9§[2] = §7!9§[3] = §7!9§[4] = 0;
         §7!9§[5] = -2 / param2;
         §7!9§[6] = §7!9§[7] = §7!9§[8] = §7!9§[9] = 0;
         §7!9§[10] = -2 / (param4 - param3);
         §7!9§[11] = 0;
         §7!9§[12] = -1;
         §7!9§[13] = 1;
         §7!9§[14] = -(param4 + param3) / (param4 - param3);
         §7!9§[15] = 1;
         this.§6-§.copyRawDataFrom(§7!9§);
      }
      
      public function §^U§() : void
      {
         this.§3!h§.identity();
      }
      
      public function §<F§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§3!h§.prependTranslation(param1,param2,param3);
      }
      
      public function §@![§(param1:Number, param2:Vector3D = null) : void
      {
         this.§3!h§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §[I§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§3!h§.prependScale(param1,param2,param3);
      }
      
      public function §9K§(param1:DisplayObject) : void
      {
         param1.§9K§(this.§3!h§);
      }
      
      public function §5!_§() : void
      {
         if(this.§3!§.length < this.§4!;§ + 1)
         {
            this.§3!§.push(new Matrix3D());
         }
         this.§3!§[this.§4!;§++].copyFrom(this.§3!h§);
      }
      
      public function §,;§() : void
      {
         this.§3!h§.copyFrom(this.§3!§[--this.§4!;§]);
      }
      
      public function §9T§() : void
      {
         this.§4!;§ = 0;
         this.§^U§();
      }
      
      public function get §+!c§() : Matrix3D
      {
         this.§@9§.identity();
         this.§@9§.append(this.§3!h§);
         this.§@9§.append(this.§6-§);
         return this.§@9§;
      }
      
      public function batchQuad(param1:§ !f§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§]!L§.§%@§(param1,param3,param4,param2))
         {
            this.§6"$§();
         }
         this.§]!L§.§!Y§(param1,param2,param3,param4,this.§3!h§);
      }
      
      public function §6"$§() : void
      {
         if(this.§]!L§.§%2§ > 0)
         {
            this.§]!L§.render(this.§`r§,this.§6-§);
            this.§]!L§.reset();
            ++this.§`!R§;
            if(this.§;u§.length <= this.§`!R§)
            {
               this.§;u§.push(new §4>§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§9T§();
         this.§`!R§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §]!L§() : §4>§
      {
         return this.§;u§[this.§`!R§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §1u§[param2])
         {
            §1u§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §=!Y§)
         {
            §=!Y§ = param2;
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
