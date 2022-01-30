package §0!F§
{
   import §3!U§.Texture;
   import §9!a§.*;
   import §]!2§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §3`§
   {
      
      private static var §3!`§:Array;
      
      private static var §2!]§:Program3D;
      
      private static var §^N§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §5!u§:Matrix3D;
      
      private var §[g§:Matrix3D;
      
      private var §[!O§:Matrix3D;
      
      private var §=0§:Vector.<Matrix3D>;
      
      private var §@!"§:int;
      
      private var §4m§:Vector.<§0!J§>;
      
      private var § !^§:int;
      
      private var §93§:Context3D;
      
      private var §-Q§:int = -1;
      
      public function §3`§()
      {
         super();
         this.§5!u§ = new Matrix3D();
         this.§[g§ = new Matrix3D();
         this.§[!O§ = new Matrix3D();
         this.§=0§ = new Vector.<Matrix3D>(0);
         this.§@!"§ = 0;
         this.§ !^§ = 0;
         this.§4m§ = new Vector.<§0!J§>();
         if(§3!`§ == null)
         {
            §3!`§ = [];
         }
         this.§ !3§();
         this.§<]§(400,300);
         §^d§.§+!f§.addEventListener(Event.CONTEXT3D_CREATE,this.§6I§);
      }
      
      public static function §1!O§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§"!]§(param1);
      }
      
      public static function §@!y§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§]!C§.§8"§(param2) / 255,§]!C§.§+$§(param2) / 255,§]!C§.§2!v§(param2) / 255,param3);
      }
      
      protected function get §`"1§() : Matrix3D
      {
         return this.§[g§;
      }
      
      protected function get §;!h§() : Matrix3D
      {
         return this.§5!u§;
      }
      
      public function §<"0§(param1:Context3D, param2:int) : void
      {
         this.§93§ = param1;
         this.§-Q§ = param2;
      }
      
      public function get §#!u§() : Context3D
      {
         return this.§93§;
      }
      
      public function get §?"5§() : int
      {
         return this.§-Q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!J§ = null;
         for each(_loc1_ in this.§4m§)
         {
            _loc1_.dispose();
         }
         if(§^d§.§+!f§)
         {
            §^d§.§+!f§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6I§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§]!C§.§8"§(param2) / 255,§]!C§.§+$§(param2) / 255,§]!C§.§2!v§(param2) / 255,param3);
      }
      
      private function §6I§(param1:Event) : void
      {
         this.§4m§ = new <§0!J§>[new §0!J§()];
      }
      
      public function §<]§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §^N§[0] = 2 / param1;
         §^N§[1] = §^N§[2] = §^N§[3] = §^N§[4] = 0;
         §^N§[5] = -2 / param2;
         §^N§[6] = §^N§[7] = §^N§[8] = §^N§[9] = 0;
         §^N§[10] = -2 / (param4 - param3);
         §^N§[11] = 0;
         §^N§[12] = -1;
         §^N§[13] = 1;
         §^N§[14] = -(param4 + param3) / (param4 - param3);
         §^N§[15] = 1;
         this.§5!u§.copyRawDataFrom(§^N§);
      }
      
      public function § !3§() : void
      {
         this.§[g§.identity();
      }
      
      public function §%2§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§[g§.prependTranslation(param1,param2,param3);
      }
      
      public function §^b§(param1:Number, param2:Vector3D = null) : void
      {
         this.§[g§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §0f§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§[g§.prependScale(param1,param2,param3);
      }
      
      public function §"!]§(param1:DisplayObject) : void
      {
         param1.§"!]§(this.§[g§);
      }
      
      public function §?N§() : void
      {
         if(this.§=0§.length < this.§@!"§ + 1)
         {
            this.§=0§.push(new Matrix3D());
         }
         this.§=0§[this.§@!"§++].copyFrom(this.§[g§);
      }
      
      public function §-!a§() : void
      {
         this.§[g§.copyFrom(this.§=0§[--this.§@!"§]);
      }
      
      public function §&Z§() : void
      {
         this.§@!"§ = 0;
         this.§ !3§();
      }
      
      public function get §!!V§() : Matrix3D
      {
         this.§[!O§.identity();
         this.§[!O§.append(this.§[g§);
         this.§[!O§.append(this.§5!u§);
         return this.§[!O§;
      }
      
      public function batchQuad(param1:§?"2§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§!L§.§`N§(param1,param3,param4))
         {
            this.§#T§();
         }
         this.§!L§.§ !+§(param1,param2,param3,param4,this.§[g§);
      }
      
      public function §#T§() : void
      {
         if(this.§!L§.§6#§ > 0)
         {
            this.§!L§.render(this.§#!u§,this.§5!u§);
            this.§!L§.reset();
            ++this.§ !^§;
            if(this.§4m§.length <= this.§ !^§)
            {
               this.§4m§.push(new §0!J§());
            }
         }
      }
      
      public function §[!q§() : void
      {
         this.§&Z§();
         this.§ !^§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §!L§() : §0!J§
      {
         return this.§4m§[this.§ !^§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §3!`§[param2])
         {
            §3!`§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §2!]§)
         {
            §2!]§ = param2;
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
