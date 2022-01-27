package §7!>§
{
   import §#!,§.*;
   import §'7§.*;
   import §6!J§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class RenderSupport
   {
      
      private static var §2^§:Array;
      
      private static var §<Q§:Program3D;
      
      private static var §'!0§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §5!T§:Matrix3D;
      
      private var §#G§:Matrix3D;
      
      private var §&§:Matrix3D;
      
      private var §4[§:Vector.<Matrix3D>;
      
      private var §@>§:int;
      
      private var §0I§:Vector.<QuadBatch>;
      
      private var §=q§:int;
      
      private var § ;§:Context3D;
      
      private var §6"§:int = -1;
      
      public function RenderSupport()
      {
         super();
         this.§5!T§ = new Matrix3D();
         this.§#G§ = new Matrix3D();
         this.§&§ = new Matrix3D();
         this.§4[§ = new Vector.<Matrix3D>(0);
         this.§@>§ = 0;
         this.§=q§ = 0;
         this.§0I§ = new Vector.<QuadBatch>();
         if(§2^§ == null)
         {
            §2^§ = [];
         }
         this.§@![§();
         this.native(400,300);
         Starling.§7!+§.addEventListener(Event.CONTEXT3D_CREATE,this.§8!<§);
      }
      
      public static function §throw§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§#!9§(param1);
      }
      
      public static function §1"§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§!,§.§0,§(param2) / 255,§!,§.§-[§(param2) / 255,§!,§.§4A§(param2) / 255,param3);
      }
      
      protected function get §@-§() : Matrix3D
      {
         return this.§#G§;
      }
      
      protected function get §0+§() : Matrix3D
      {
         return this.§5!T§;
      }
      
      public function §-!R§(param1:Context3D, param2:int) : void
      {
         this.§ ;§ = param1;
         this.§6"§ = param2;
      }
      
      public function get §0v§() : Context3D
      {
         return this.§ ;§;
      }
      
      public function get §=V§() : int
      {
         return this.§6"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:QuadBatch = null;
         for each(_loc1_ in this.§0I§)
         {
            _loc1_.dispose();
         }
         if(Starling.§7!+§)
         {
            Starling.§7!+§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8!<§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§!,§.§0,§(param2) / 255,§!,§.§-[§(param2) / 255,§!,§.§4A§(param2) / 255,param3);
      }
      
      private function §8!<§(param1:Event) : void
      {
         this.§0I§ = new <QuadBatch>[new QuadBatch()];
      }
      
      public function native(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §'!0§[0] = 2 / param1;
         §'!0§[1] = §'!0§[2] = §'!0§[3] = §'!0§[4] = 0;
         §'!0§[5] = -2 / param2;
         §'!0§[6] = §'!0§[7] = §'!0§[8] = §'!0§[9] = 0;
         §'!0§[10] = -2 / (param4 - param3);
         §'!0§[11] = 0;
         §'!0§[12] = -1;
         §'!0§[13] = 1;
         §'!0§[14] = -(param4 + param3) / (param4 - param3);
         §'!0§[15] = 1;
         this.§5!T§.copyRawDataFrom(§'!0§);
      }
      
      public function §@![§() : void
      {
         this.§#G§.identity();
      }
      
      public function §9L§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§#G§.prependTranslation(param1,param2,param3);
      }
      
      public function §,!V§(param1:Number, param2:Vector3D = null) : void
      {
         this.§#G§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §^M§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§#G§.prependScale(param1,param2,param3);
      }
      
      public function §#!9§(param1:DisplayObject) : void
      {
         param1.§#!9§(this.§#G§);
      }
      
      public function §5a§() : void
      {
         if(this.§4[§.length < this.§@>§ + 1)
         {
            this.§4[§.push(new Matrix3D());
         }
         this.§4[§[this.§@>§++].copyFrom(this.§#G§);
      }
      
      public function §26§() : void
      {
         this.§#G§.copyFrom(this.§4[§[--this.§@>§]);
      }
      
      public function §"j§() : void
      {
         this.§@>§ = 0;
         this.§@![§();
      }
      
      public function get §<!=§() : Matrix3D
      {
         this.§&§.identity();
         this.§&§.append(this.§#G§);
         this.§&§.append(this.§5!T§);
         return this.§&§;
      }
      
      public function batchQuad(param1:§6!Y§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§>r§.§>!>§(param1,param3,param4))
         {
            this.§"!§();
         }
         this.§>r§.§8Q§(param1,param2,param3,param4,this.§#G§);
      }
      
      public function §"!§() : void
      {
         if(this.§>r§.§'-§ > 0)
         {
            this.§>r§.render(this.§0v§,this.§5!T§);
            this.§>r§.reset();
            ++this.§=q§;
            if(this.§0I§.length <= this.§=q§)
            {
               this.§0I§.push(new QuadBatch());
            }
         }
      }
      
      public function §%G§() : void
      {
         this.§"j§();
         this.§=q§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §>r§() : QuadBatch
      {
         return this.§0I§[this.§=q§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §2^§[param2])
         {
            §2^§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §<Q§)
         {
            §<Q§ = param2;
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
