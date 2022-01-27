package §9!!§
{
   import §1"s§.*;
   import §3"e§.*;
   import §<"L§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class § _§
   {
      
      private static var §5!Y§:Array;
      
      private static var §'`§:Program3D;
      
      private static var §%"v§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §3§:Matrix3D;
      
      private var §!!N§:Matrix3D;
      
      private var §#!K§:Matrix3D;
      
      private var §"4§:Vector.<Matrix3D>;
      
      private var §]"S§:int;
      
      private var §8!D§:Vector.<§@!§>;
      
      private var §4!v§:int;
      
      private var §>!D§:Context3D;
      
      private var §5";§:int = -1;
      
      public function § _§()
      {
         super();
         this.§3§ = new Matrix3D();
         this.§!!N§ = new Matrix3D();
         this.§#!K§ = new Matrix3D();
         this.§"4§ = new Vector.<Matrix3D>(0);
         this.§]"S§ = 0;
         this.§4!v§ = 0;
         this.§8!D§ = new Vector.<§@!§>();
         if(§5!Y§ == null)
         {
            §5!Y§ = [];
         }
         this.§6"7§();
         this.§@"g§(400,300);
         §=!S§.§8y§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!'§);
      }
      
      public static function §!,§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§]"W§(param1);
      }
      
      public static function § 5§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§!G§.§ !H§(param2) / 255,§!G§.§+!7§(param2) / 255,§!G§.§?V§(param2) / 255,param3);
      }
      
      protected function get §=!n§() : Matrix3D
      {
         return this.§!!N§;
      }
      
      protected function get §4"l§() : Matrix3D
      {
         return this.§3§;
      }
      
      public function §>8§(param1:Context3D, param2:int) : void
      {
         this.§>!D§ = param1;
         this.§5";§ = param2;
      }
      
      public function get §7!>§() : Context3D
      {
         return this.§>!D§;
      }
      
      public function get §7!Q§() : int
      {
         return this.§5";§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§@!§ = null;
         for each(_loc1_ in this.§8!D§)
         {
            _loc1_.dispose();
         }
         if(§=!S§.§8y§)
         {
            §=!S§.§8y§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!'§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§!G§.§ !H§(param2) / 255,§!G§.§+!7§(param2) / 255,§!G§.§?V§(param2) / 255,param3);
      }
      
      private function §#!'§(param1:Event) : void
      {
         this.§8!D§ = new <§@!§>[new §@!§()];
      }
      
      public function §@"g§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §%"v§[0] = 2 / param1;
         §%"v§[1] = §%"v§[2] = §%"v§[3] = §%"v§[4] = 0;
         §%"v§[5] = -2 / param2;
         §%"v§[6] = §%"v§[7] = §%"v§[8] = §%"v§[9] = 0;
         §%"v§[10] = -2 / (param4 - param3);
         §%"v§[11] = 0;
         §%"v§[12] = -1;
         §%"v§[13] = 1;
         §%"v§[14] = -(param4 + param3) / (param4 - param3);
         §%"v§[15] = 1;
         this.§3§.copyRawDataFrom(§%"v§);
      }
      
      public function §6"7§() : void
      {
         this.§!!N§.identity();
      }
      
      public function §5V§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§!!N§.prependTranslation(param1,param2,param3);
      }
      
      public function §=!_§(param1:Number, param2:Vector3D = null) : void
      {
         this.§!!N§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §8"j§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§!!N§.prependScale(param1,param2,param3);
      }
      
      public function §]"W§(param1:DisplayObject) : void
      {
         param1.§]"W§(this.§!!N§);
      }
      
      public function §=s§() : void
      {
         if(this.§"4§.length < this.§]"S§ + 1)
         {
            this.§"4§.push(new Matrix3D());
         }
         this.§"4§[this.§]"S§++].copyFrom(this.§!!N§);
      }
      
      public function §-z§() : void
      {
         this.§!!N§.copyFrom(this.§"4§[--this.§]"S§]);
      }
      
      public function §2"i§() : void
      {
         this.§]"S§ = 0;
         this.§6"7§();
      }
      
      public function get §2i§() : Matrix3D
      {
         this.§#!K§.identity();
         this.§#!K§.append(this.§!!N§);
         this.§#!K§.append(this.§3§);
         return this.§#!K§;
      }
      
      public function batchQuad(param1:§#"b§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§8"v§.§1m§(param1,param3,param4,param2))
         {
            this.§62§();
         }
         this.§8"v§.§7§(param1,param2,param3,param4,this.§!!N§);
      }
      
      public function §62§() : void
      {
         if(this.§8"v§.§case§ > 0)
         {
            this.§8"v§.render(this.§7!>§,this.§3§);
            this.§8"v§.reset();
            ++this.§4!v§;
            if(this.§8!D§.length <= this.§4!v§)
            {
               this.§8!D§.push(new §@!§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§2"i§();
         this.§4!v§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §8"v§() : §@!§
      {
         return this.§8!D§[this.§4!v§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §5!Y§[param2])
         {
            §5!Y§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §'`§)
         {
            §'`§ = param2;
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
