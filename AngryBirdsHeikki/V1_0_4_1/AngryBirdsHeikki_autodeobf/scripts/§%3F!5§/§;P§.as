package §?!5§
{
   import §"!<§.Texture;
   import §;!F§.*;
   import §<!-§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §;P§
   {
      
      private static var §&W§:Array;
      
      private static var §%h§:Program3D;
      
      private static var §,!I§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §>!1§:Matrix3D;
      
      private var §9!]§:Matrix3D;
      
      private var §51§:Matrix3D;
      
      private var §9!$§:Vector.<Matrix3D>;
      
      private var §"!1§:int;
      
      private var § !J§:Vector.<§&2§>;
      
      private var §&h§:int;
      
      private var §^!-§:Context3D;
      
      private var §#B§:int = -1;
      
      public function §;P§()
      {
         super();
         this.§>!1§ = new Matrix3D();
         this.§9!]§ = new Matrix3D();
         this.§51§ = new Matrix3D();
         this.§9!$§ = new Vector.<Matrix3D>(0);
         this.§"!1§ = 0;
         this.§&h§ = 0;
         this.§ !J§ = new Vector.<§&2§>();
         if(§&W§ == null)
         {
            §&W§ = [];
         }
         this.§4P§();
         this.§`!6§(400,300);
         §2d§.§0A§.addEventListener(Event.CONTEXT3D_CREATE,this.§#>§);
      }
      
      public static function §,3§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§=J§(param1);
      }
      
      public static function §=>§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?`§.§2&§(param2) / 255,§?`§.§^f§(param2) / 255,§?`§.§=!§(param2) / 255,param3);
      }
      
      protected function get §6!>§() : Matrix3D
      {
         return this.§9!]§;
      }
      
      protected function get §"F§() : Matrix3D
      {
         return this.§>!1§;
      }
      
      public function §`!0§(param1:Context3D, param2:int) : void
      {
         this.§^!-§ = param1;
         this.§#B§ = param2;
      }
      
      public function get § !5§() : Context3D
      {
         return this.§^!-§;
      }
      
      public function get §7!Q§() : int
      {
         return this.§#B§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&2§ = null;
         for each(_loc1_ in this.§ !J§)
         {
            _loc1_.dispose();
         }
         if(§2d§.§0A§)
         {
            §2d§.§0A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#>§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?`§.§2&§(param2) / 255,§?`§.§^f§(param2) / 255,§?`§.§=!§(param2) / 255,param3);
      }
      
      private function §#>§(param1:Event) : void
      {
         this.§ !J§ = new <§&2§>[new §&2§()];
      }
      
      public function §`!6§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §,!I§[0] = 2 / param1;
         §,!I§[1] = §,!I§[2] = §,!I§[3] = §,!I§[4] = 0;
         §,!I§[5] = -2 / param2;
         §,!I§[6] = §,!I§[7] = §,!I§[8] = §,!I§[9] = 0;
         §,!I§[10] = -2 / (param4 - param3);
         §,!I§[11] = 0;
         §,!I§[12] = -1;
         §,!I§[13] = 1;
         §,!I§[14] = -(param4 + param3) / (param4 - param3);
         §,!I§[15] = 1;
         this.§>!1§.copyRawDataFrom(§,!I§);
      }
      
      public function §4P§() : void
      {
         this.§9!]§.identity();
      }
      
      public function §?!,§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§9!]§.prependTranslation(param1,param2,param3);
      }
      
      public function §9!F§(param1:Number, param2:Vector3D = null) : void
      {
         this.§9!]§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §>D§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§9!]§.prependScale(param1,param2,param3);
      }
      
      public function §=J§(param1:DisplayObject) : void
      {
         param1.§=J§(this.§9!]§);
      }
      
      public function § !U§() : void
      {
         if(this.§9!$§.length < this.§"!1§ + 1)
         {
            this.§9!$§.push(new Matrix3D());
         }
         this.§9!$§[this.§"!1§++].copyFrom(this.§9!]§);
      }
      
      public function §"'§() : void
      {
         this.§9!]§.copyFrom(this.§9!$§[--this.§"!1§]);
      }
      
      public function §9b§() : void
      {
         this.§"!1§ = 0;
         this.§4P§();
      }
      
      public function get §8#§() : Matrix3D
      {
         this.§51§.identity();
         this.§51§.append(this.§9!]§);
         this.§51§.append(this.§>!1§);
         return this.§51§;
      }
      
      public function batchQuad(param1:§8J§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§ !N§.§6!M§(param1,param3,param4))
         {
            this.§-J§();
         }
         this.§ !N§.§?!1§(param1,param2,param3,param4,this.§9!]§);
      }
      
      public function §-J§() : void
      {
         if(this.§ !N§.§1]§ > 0)
         {
            this.§ !N§.render(this.§ !5§,this.§>!1§);
            this.§ !N§.reset();
            ++this.§&h§;
            if(this.§ !J§.length <= this.§&h§)
            {
               this.§ !J§.push(new §&2§());
            }
         }
      }
      
      public function §2!c§() : void
      {
         this.§9b§();
         this.§&h§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get § !N§() : §&2§
      {
         return this.§ !J§[this.§&h§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §&W§[param2])
         {
            §&W§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §%h§)
         {
            §%h§ = param2;
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
