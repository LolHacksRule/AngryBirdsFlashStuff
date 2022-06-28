package §catch§
{
   import §,G§.*;
   import §,_§.*;
   import §7!=§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'d§
   {
      
      private static var §6q§:Array;
      
      private static var §@!&§:Program3D;
      
      private static var §@!H§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §[O§:Matrix3D;
      
      private var §'!@§:Matrix3D;
      
      private var §-!0§:Matrix3D;
      
      private var §@n§:Vector.<Matrix3D>;
      
      private var §-0§:int;
      
      private var §#!!§:Vector.<§2O§>;
      
      private var §3U§:int;
      
      private var §0T§:Context3D;
      
      private var §#]§:int = -1;
      
      public function §'d§()
      {
         super();
         this.§[O§ = new Matrix3D();
         this.§'!@§ = new Matrix3D();
         this.§-!0§ = new Matrix3D();
         this.§@n§ = new Vector.<Matrix3D>(0);
         this.§-0§ = 0;
         this.§3U§ = 0;
         this.§#!!§ = new Vector.<§2O§>();
         if(§6q§ == null)
         {
            §6q§ = [];
         }
         this.§"!1§();
         this.§`Z§(400,300);
         §4@§.§0W§.addEventListener(Event.CONTEXT3D_CREATE,this.§]B§);
      }
      
      public static function §4W§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§]@§(param1);
      }
      
      public static function §1f§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§"p§.§9V§(param2) / 255,§"p§.§5J§(param2) / 255,§"p§.§@R§(param2) / 255,param3);
      }
      
      protected function get §`I§() : Matrix3D
      {
         return this.§'!@§;
      }
      
      protected function get §8_§() : Matrix3D
      {
         return this.§[O§;
      }
      
      public function §?]§(param1:Context3D, param2:int) : void
      {
         this.§0T§ = param1;
         this.§#]§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§0T§;
      }
      
      public function get §!!C§() : int
      {
         return this.§#]§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2O§ = null;
         for each(_loc1_ in this.§#!!§)
         {
            _loc1_.dispose();
         }
         if(§4@§.§0W§)
         {
            §4@§.§0W§.removeEventListener(Event.CONTEXT3D_CREATE,this.§]B§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§"p§.§9V§(param2) / 255,§"p§.§5J§(param2) / 255,§"p§.§@R§(param2) / 255,param3);
      }
      
      private function §]B§(param1:Event) : void
      {
         this.§#!!§ = new <§2O§>[new §2O§()];
      }
      
      public function §`Z§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §@!H§[0] = 2 / param1;
         §@!H§[1] = §@!H§[2] = §@!H§[3] = §@!H§[4] = 0;
         §@!H§[5] = -2 / param2;
         §@!H§[6] = §@!H§[7] = §@!H§[8] = §@!H§[9] = 0;
         §@!H§[10] = -2 / (param4 - param3);
         §@!H§[11] = 0;
         §@!H§[12] = -1;
         §@!H§[13] = 1;
         §@!H§[14] = -(param4 + param3) / (param4 - param3);
         §@!H§[15] = 1;
         this.§[O§.copyRawDataFrom(§@!H§);
      }
      
      public function §"!1§() : void
      {
         this.§'!@§.identity();
      }
      
      public function §,h§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§'!@§.prependTranslation(param1,param2,param3);
      }
      
      public function §2!4§(param1:Number, param2:Vector3D = null) : void
      {
         this.§'!@§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §-C§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§'!@§.prependScale(param1,param2,param3);
      }
      
      public function §]@§(param1:DisplayObject) : void
      {
         param1.§]@§(this.§'!@§);
      }
      
      public function §=q§() : void
      {
         if(this.§@n§.length < this.§-0§ + 1)
         {
            this.§@n§.push(new Matrix3D());
         }
         this.§@n§[this.§-0§++].copyFrom(this.§'!@§);
      }
      
      public function §"S§() : void
      {
         this.§'!@§.copyFrom(this.§@n§[--this.§-0§]);
      }
      
      public function §4!4§() : void
      {
         this.§-0§ = 0;
         this.§"!1§();
      }
      
      public function get §get §() : Matrix3D
      {
         this.§-!0§.identity();
         this.§-!0§.append(this.§'!@§);
         this.§-!0§.append(this.§[O§);
         return this.§-!0§;
      }
      
      public function batchQuad(param1:§-!!§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§&U§.§'!B§(param1,param3,param4))
         {
            this.§--§();
         }
         this.§&U§.§9`§(param1,param2,param3,param4,this.§'!@§);
      }
      
      public function §--§() : void
      {
         if(this.§&U§.§]2§ > 0)
         {
            this.§&U§.render(this.context,this.§[O§);
            this.§&U§.reset();
            ++this.§3U§;
            if(this.§#!!§.length <= this.§3U§)
            {
               this.§#!!§.push(new §2O§());
            }
         }
      }
      
      public function §1!-§() : void
      {
         this.§4!4§();
         this.§3U§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §&U§() : §2O§
      {
         return this.§#!!§[this.§3U§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §6q§[param2])
         {
            §6q§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §@!&§)
         {
            §@!&§ = param2;
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
