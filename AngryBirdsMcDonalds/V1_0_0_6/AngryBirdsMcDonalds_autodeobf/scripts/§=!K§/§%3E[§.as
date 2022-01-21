package §=!K§
{
   import § !^§.Texture;
   import §2![§.*;
   import §6!J§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §>[§
   {
      
      private static var §@g§:Array;
      
      private static var §5R§:Program3D;
      
      private static var §7b§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §9B§:Matrix3D;
      
      private var §-!+§:Matrix3D;
      
      private var §`1§:Matrix3D;
      
      private var §2!`§:Vector.<Matrix3D>;
      
      private var §,!h§:int;
      
      private var §22§:Vector.<§^^§>;
      
      private var §9!C§:int;
      
      private var §&`§:Context3D;
      
      private var §#H§:int = -1;
      
      public function §>[§()
      {
         super();
         this.§9B§ = new Matrix3D();
         this.§-!+§ = new Matrix3D();
         this.§`1§ = new Matrix3D();
         this.§2!`§ = new Vector.<Matrix3D>(0);
         this.§,!h§ = 0;
         this.§9!C§ = 0;
         this.§22§ = new Vector.<§^^§>();
         if(§@g§ == null)
         {
            §@g§ = [];
         }
         this.§7!Z§();
         this.§>!>§(400,300);
         §do§.§4!G§.addEventListener(Event.CONTEXT3D_CREATE,this.§<g§);
      }
      
      public static function §+!a§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§#!n§(param1);
      }
      
      public static function § for§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§7s§.§<!K§(param2) / 255,§7s§.§]!I§(param2) / 255,§7s§.§ B§(param2) / 255,param3);
      }
      
      protected function get §6P§() : Matrix3D
      {
         return this.§-!+§;
      }
      
      protected function get §1!M§() : Matrix3D
      {
         return this.§9B§;
      }
      
      public function §1g§(param1:Context3D, param2:int) : void
      {
         this.§&`§ = param1;
         this.§#H§ = param2;
      }
      
      public function get §15§() : Context3D
      {
         return this.§&`§;
      }
      
      public function get §^t§() : int
      {
         return this.§#H§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^^§ = null;
         for each(_loc1_ in this.§22§)
         {
            _loc1_.dispose();
         }
         if(§do§.§4!G§)
         {
            §do§.§4!G§.removeEventListener(Event.CONTEXT3D_CREATE,this.§<g§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§7s§.§<!K§(param2) / 255,§7s§.§]!I§(param2) / 255,§7s§.§ B§(param2) / 255,param3);
      }
      
      private function §<g§(param1:Event) : void
      {
         this.§22§ = new <§^^§>[new §^^§()];
      }
      
      public function §>!>§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §7b§[0] = 2 / param1;
         §7b§[1] = §7b§[2] = §7b§[3] = §7b§[4] = 0;
         §7b§[5] = -2 / param2;
         §7b§[6] = §7b§[7] = §7b§[8] = §7b§[9] = 0;
         §7b§[10] = -2 / (param4 - param3);
         §7b§[11] = 0;
         §7b§[12] = -1;
         §7b§[13] = 1;
         §7b§[14] = -(param4 + param3) / (param4 - param3);
         §7b§[15] = 1;
         this.§9B§.copyRawDataFrom(§7b§);
      }
      
      public function §7!Z§() : void
      {
         this.§-!+§.identity();
      }
      
      public function §@e§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§-!+§.prependTranslation(param1,param2,param3);
      }
      
      public function §%!!§(param1:Number, param2:Vector3D = null) : void
      {
         this.§-!+§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §4!>§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§-!+§.prependScale(param1,param2,param3);
      }
      
      public function §#!n§(param1:DisplayObject) : void
      {
         param1.§#!n§(this.§-!+§);
      }
      
      public function §<p§() : void
      {
         if(this.§2!`§.length < this.§,!h§ + 1)
         {
            this.§2!`§.push(new Matrix3D());
         }
         this.§2!`§[this.§,!h§++].copyFrom(this.§-!+§);
      }
      
      public function §8c§() : void
      {
         this.§-!+§.copyFrom(this.§2!`§[--this.§,!h§]);
      }
      
      public function §'N§() : void
      {
         this.§,!h§ = 0;
         this.§7!Z§();
      }
      
      public function get §'!§() : Matrix3D
      {
         this.§`1§.identity();
         this.§`1§.append(this.§-!+§);
         this.§`1§.append(this.§9B§);
         return this.§`1§;
      }
      
      public function batchQuad(param1:§7Q§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§"A§.§;!6§(param1,param3,param4))
         {
            this.§59§();
         }
         this.§"A§.§4!?§(param1,param2,param3,param4,this.§-!+§);
      }
      
      public function §59§() : void
      {
         if(this.§"A§.§`[§ > 0)
         {
            this.§"A§.render(this.§15§,this.§9B§);
            this.§"A§.reset();
            ++this.§9!C§;
            if(this.§22§.length <= this.§9!C§)
            {
               this.§22§.push(new §^^§());
            }
         }
      }
      
      public function §^o§() : void
      {
         this.§'N§();
         this.§9!C§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §"A§() : §^^§
      {
         return this.§22§[this.§9!C§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §@g§[param2])
         {
            §@g§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §5R§)
         {
            §5R§ = param2;
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
