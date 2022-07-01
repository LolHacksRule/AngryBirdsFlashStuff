package §=!6§
{
   import §"!t§.*;
   import §&!;§.Texture;
   import §-![§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §]q§
   {
      
      private static var §]m§:Array;
      
      private static var §!B§:Program3D;
      
      private static var §@!q§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §"!^§:Matrix3D;
      
      private var §4g§:Matrix3D;
      
      private var §7B§:Matrix3D;
      
      private var §3U§:Vector.<Matrix3D>;
      
      private var §+!1§:int;
      
      private var §-h§:Vector.<§3E§>;
      
      private var §#!§:int;
      
      private var §1"1§:Context3D;
      
      private var §1"$§:int = -1;
      
      public function §]q§()
      {
         super();
         this.§"!^§ = new Matrix3D();
         this.§4g§ = new Matrix3D();
         this.§7B§ = new Matrix3D();
         this.§3U§ = new Vector.<Matrix3D>(0);
         this.§+!1§ = 0;
         this.§#!§ = 0;
         this.§-h§ = new Vector.<§3E§>();
         if(§]m§ == null)
         {
            §]m§ = [];
         }
         this.§,U§();
         this.§%t§(400,300);
         §+8§.§0j§.addEventListener(Event.CONTEXT3D_CREATE,this.§1"5§);
      }
      
      public static function §+_§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§ for§(param1);
      }
      
      public static function §[J§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§,!r§.§ !0§(param2) / 255,§,!r§.§2!O§(param2) / 255,§,!r§.§0"'§(param2) / 255,param3);
      }
      
      protected function get §#"5§() : Matrix3D
      {
         return this.§4g§;
      }
      
      protected function get §-7§() : Matrix3D
      {
         return this.§"!^§;
      }
      
      public function §'!=§(param1:Context3D, param2:int) : void
      {
         this.§1"1§ = param1;
         this.§1"$§ = param2;
      }
      
      public function get §2w§() : Context3D
      {
         return this.§1"1§;
      }
      
      public function get §@!E§() : int
      {
         return this.§1"$§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§3E§ = null;
         for each(_loc1_ in this.§-h§)
         {
            _loc1_.dispose();
         }
         if(§+8§.§0j§)
         {
            §+8§.§0j§.removeEventListener(Event.CONTEXT3D_CREATE,this.§1"5§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§,!r§.§ !0§(param2) / 255,§,!r§.§2!O§(param2) / 255,§,!r§.§0"'§(param2) / 255,param3);
      }
      
      private function §1"5§(param1:Event) : void
      {
         this.§-h§ = new <§3E§>[new §3E§()];
      }
      
      public function §%t§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §@!q§[0] = 2 / param1;
         §@!q§[1] = §@!q§[2] = §@!q§[3] = §@!q§[4] = 0;
         §@!q§[5] = -2 / param2;
         §@!q§[6] = §@!q§[7] = §@!q§[8] = §@!q§[9] = 0;
         §@!q§[10] = -2 / (param4 - param3);
         §@!q§[11] = 0;
         §@!q§[12] = -1;
         §@!q§[13] = 1;
         §@!q§[14] = -(param4 + param3) / (param4 - param3);
         §@!q§[15] = 1;
         this.§"!^§.copyRawDataFrom(§@!q§);
      }
      
      public function §,U§() : void
      {
         this.§4g§.identity();
      }
      
      public function §%n§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§4g§.prependTranslation(param1,param2,param3);
      }
      
      public function § !s§(param1:Number, param2:Vector3D = null) : void
      {
         this.§4g§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §;!a§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§4g§.prependScale(param1,param2,param3);
      }
      
      public function § for§(param1:DisplayObject) : void
      {
         param1.§ for§(this.§4g§);
      }
      
      public function §8!C§() : void
      {
         if(this.§3U§.length < this.§+!1§ + 1)
         {
            this.§3U§.push(new Matrix3D());
         }
         this.§3U§[this.§+!1§++].copyFrom(this.§4g§);
      }
      
      public function §2!;§() : void
      {
         this.§4g§.copyFrom(this.§3U§[--this.§+!1§]);
      }
      
      public function §71§() : void
      {
         this.§+!1§ = 0;
         this.§,U§();
      }
      
      public function get § !l§() : Matrix3D
      {
         this.§7B§.identity();
         this.§7B§.append(this.§4g§);
         this.§7B§.append(this.§"!^§);
         return this.§7B§;
      }
      
      public function batchQuad(param1:§5!<§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§`>§.§^!=§(param1,param3,param4,param2))
         {
            this.§`!p§();
         }
         this.§`>§.§'!C§(param1,param2,param3,param4,this.§4g§);
      }
      
      public function §`!p§() : void
      {
         if(this.§`>§.§+!"§ > 0)
         {
            this.§`>§.render(this.§2w§,this.§"!^§);
            this.§`>§.reset();
            ++this.§#!§;
            if(this.§-h§.length <= this.§#!§)
            {
               this.§-h§.push(new §3E§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§71§();
         this.§#!§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §`>§() : §3E§
      {
         return this.§-h§[this.§#!§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §]m§[param2])
         {
            §]m§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §!B§)
         {
            §!B§ = param2;
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
