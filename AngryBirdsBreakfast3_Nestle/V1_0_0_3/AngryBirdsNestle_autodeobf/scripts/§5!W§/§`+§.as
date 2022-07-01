package §5!W§
{
   import §0!Y§.*;
   import §^z§.Texture;
   import §`!"§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §`+§
   {
      
      private static var §#!I§:Array;
      
      private static var §3!8§:Program3D;
      
      private static var §#X§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §@" §:Matrix3D;
      
      private var §5!Y§:Matrix3D;
      
      private var §@!o§:Matrix3D;
      
      private var §]Z§:Vector.<Matrix3D>;
      
      private var §18§:int;
      
      private var §#w§:Vector.<§&@§>;
      
      private var §4+§:int;
      
      private var §@!v§:Context3D;
      
      private var § do§:int = -1;
      
      public function §`+§()
      {
         super();
         this.§@" § = new Matrix3D();
         this.§5!Y§ = new Matrix3D();
         this.§@!o§ = new Matrix3D();
         this.§]Z§ = new Vector.<Matrix3D>(0);
         this.§18§ = 0;
         this.§4+§ = 0;
         this.§#w§ = new Vector.<§&@§>();
         if(§#!I§ == null)
         {
            §#!I§ = [];
         }
         this.§`""§();
         this.§-,§(400,300);
         §>P§.§;_§.addEventListener(Event.CONTEXT3D_CREATE,this.§ !<§);
      }
      
      public static function §'!s§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§`2§(param1);
      }
      
      public static function §+6§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§;!j§.§'!_§(param2) / 255,§;!j§.final(param2) / 255,§;!j§.§^!g§(param2) / 255,param3);
      }
      
      protected function get §'!Q§() : Matrix3D
      {
         return this.§5!Y§;
      }
      
      protected function get §#!D§() : Matrix3D
      {
         return this.§@" §;
      }
      
      public function § "5§(param1:Context3D, param2:int) : void
      {
         this.§@!v§ = param1;
         this.§ do§ = param2;
      }
      
      public function get §@!C§() : Context3D
      {
         return this.§@!v§;
      }
      
      public function get §%_§() : int
      {
         return this.§ do§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&@§ = null;
         for each(_loc1_ in this.§#w§)
         {
            _loc1_.dispose();
         }
         if(§>P§.§;_§)
         {
            §>P§.§;_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ !<§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§;!j§.§'!_§(param2) / 255,§;!j§.final(param2) / 255,§;!j§.§^!g§(param2) / 255,param3);
      }
      
      private function § !<§(param1:Event) : void
      {
         this.§#w§ = new <§&@§>[new §&@§()];
      }
      
      public function §-,§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §#X§[0] = 2 / param1;
         §#X§[1] = §#X§[2] = §#X§[3] = §#X§[4] = 0;
         §#X§[5] = -2 / param2;
         §#X§[6] = §#X§[7] = §#X§[8] = §#X§[9] = 0;
         §#X§[10] = -2 / (param4 - param3);
         §#X§[11] = 0;
         §#X§[12] = -1;
         §#X§[13] = 1;
         §#X§[14] = -(param4 + param3) / (param4 - param3);
         §#X§[15] = 1;
         this.§@" §.copyRawDataFrom(§#X§);
      }
      
      public function §`""§() : void
      {
         this.§5!Y§.identity();
      }
      
      public function §26§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§5!Y§.prependTranslation(param1,param2,param3);
      }
      
      public function §#1§(param1:Number, param2:Vector3D = null) : void
      {
         this.§5!Y§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §]X§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§5!Y§.prependScale(param1,param2,param3);
      }
      
      public function §`2§(param1:DisplayObject) : void
      {
         param1.§`2§(this.§5!Y§);
      }
      
      public function §%"'§() : void
      {
         if(this.§]Z§.length < this.§18§ + 1)
         {
            this.§]Z§.push(new Matrix3D());
         }
         this.§]Z§[this.§18§++].copyFrom(this.§5!Y§);
      }
      
      public function §+"!§() : void
      {
         this.§5!Y§.copyFrom(this.§]Z§[--this.§18§]);
      }
      
      public function §+O§() : void
      {
         this.§18§ = 0;
         this.§`""§();
      }
      
      public function get §#!@§() : Matrix3D
      {
         this.§@!o§.identity();
         this.§@!o§.append(this.§5!Y§);
         this.§@!o§.append(this.§@" §);
         return this.§@!o§;
      }
      
      public function batchQuad(param1:§-f§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§[!f§.§,"&§(param1,param3,param4,param2))
         {
            this.§9e§();
         }
         this.§[!f§.§[!X§(param1,param2,param3,param4,this.§5!Y§);
      }
      
      public function §9e§() : void
      {
         if(this.§[!f§.§?!V§ > 0)
         {
            this.§[!f§.render(this.§@!C§,this.§@" §);
            this.§[!f§.reset();
            ++this.§4+§;
            if(this.§#w§.length <= this.§4+§)
            {
               this.§#w§.push(new §&@§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§+O§();
         this.§4+§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §[!f§() : §&@§
      {
         return this.§#w§[this.§4+§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §#!I§[param2])
         {
            §#!I§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §3!8§)
         {
            §3!8§ = param2;
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
