package §=!0§
{
   import §&o§.*;
   import §'j§.*;
   import §0! §.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §2N§
   {
      
      private static var §^0§:Array;
      
      private static var §7!0§:Program3D;
      
      private static var §=5§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §[!;§:Matrix3D;
      
      private var §=!K§:Matrix3D;
      
      private var §>n§:Matrix3D;
      
      private var § !-§:Vector.<Matrix3D>;
      
      private var §[&§:int;
      
      private var §;!>§:Vector.<§>4§>;
      
      private var §[M§:int;
      
      private var §%N§:Context3D;
      
      private var §^#§:int = -1;
      
      public function §2N§()
      {
         super();
         this.§[!;§ = new Matrix3D();
         this.§=!K§ = new Matrix3D();
         this.§>n§ = new Matrix3D();
         this.§ !-§ = new Vector.<Matrix3D>(0);
         this.§[&§ = 0;
         this.§[M§ = 0;
         this.§;!>§ = new Vector.<§>4§>();
         if(§^0§ == null)
         {
            §^0§ = [];
         }
         this.§5u§();
         this.§"! §(400,300);
         §>I§.§`S§.addEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
      }
      
      public static function §5!2§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§34§(param1);
      }
      
      public static function §5!,§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§]Z§.§3e§(param2) / 255,§]Z§.§7Z§(param2) / 255,§]Z§.§?P§(param2) / 255,param3);
      }
      
      protected function get §+k§() : Matrix3D
      {
         return this.§=!K§;
      }
      
      protected function get §7b§() : Matrix3D
      {
         return this.§[!;§;
      }
      
      public function §7t§(param1:Context3D, param2:int) : void
      {
         this.§%N§ = param1;
         this.§^#§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§%N§;
      }
      
      public function get §if§() : int
      {
         return this.§^#§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§>4§ = null;
         for each(_loc1_ in this.§;!>§)
         {
            _loc1_.dispose();
         }
         if(§>I§.§`S§)
         {
            §>I§.§`S§.removeEventListener(Event.CONTEXT3D_CREATE,this.§@!C§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§]Z§.§3e§(param2) / 255,§]Z§.§7Z§(param2) / 255,§]Z§.§?P§(param2) / 255,param3);
      }
      
      private function §@!C§(param1:Event) : void
      {
         this.§;!>§ = new <§>4§>[new §>4§()];
      }
      
      public function §"! §(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §=5§[0] = 2 / param1;
         §=5§[1] = §=5§[2] = §=5§[3] = §=5§[4] = 0;
         §=5§[5] = -2 / param2;
         §=5§[6] = §=5§[7] = §=5§[8] = §=5§[9] = 0;
         §=5§[10] = -2 / (param4 - param3);
         §=5§[11] = 0;
         §=5§[12] = -1;
         §=5§[13] = 1;
         §=5§[14] = -(param4 + param3) / (param4 - param3);
         §=5§[15] = 1;
         this.§[!;§.copyRawDataFrom(§=5§);
      }
      
      public function §5u§() : void
      {
         this.§=!K§.identity();
      }
      
      public function §@!E§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§=!K§.prependTranslation(param1,param2,param3);
      }
      
      public function §%y§(param1:Number, param2:Vector3D = null) : void
      {
         this.§=!K§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §,b§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§=!K§.prependScale(param1,param2,param3);
      }
      
      public function §34§(param1:DisplayObject) : void
      {
         param1.§34§(this.§=!K§);
      }
      
      public function §#[§() : void
      {
         if(this.§ !-§.length < this.§[&§ + 1)
         {
            this.§ !-§.push(new Matrix3D());
         }
         this.§ !-§[this.§[&§++].copyFrom(this.§=!K§);
      }
      
      public function include() : void
      {
         this.§=!K§.copyFrom(this.§ !-§[--this.§[&§]);
      }
      
      public function §'n§() : void
      {
         this.§[&§ = 0;
         this.§5u§();
      }
      
      public function get §false§() : Matrix3D
      {
         this.§>n§.identity();
         this.§>n§.append(this.§=!K§);
         this.§>n§.append(this.§[!;§);
         return this.§>n§;
      }
      
      public function batchQuad(param1:§<3§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§!M§.§"E§(param1,param3,param4,param2))
         {
            this.§6J§();
         }
         this.§!M§.§'o§(param1,param2,param3,param4,this.§=!K§);
      }
      
      public function §6J§() : void
      {
         if(this.§!M§.§7f§ > 0)
         {
            this.§!M§.render(this.context,this.§[!;§);
            this.§!M§.reset();
            ++this.§[M§;
            if(this.§;!>§.length <= this.§[M§)
            {
               this.§;!>§.push(new §>4§());
            }
         }
      }
      
      public function §7!§() : void
      {
         this.§'n§();
         this.§[M§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §!M§() : §>4§
      {
         return this.§;!>§[this.§[M§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §^0§[param2])
         {
            §^0§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §7!0§)
         {
            §7!0§ = param2;
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
