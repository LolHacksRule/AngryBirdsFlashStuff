package §5Z§
{
   import § N§.*;
   import §+§.*;
   import §8z§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §4]§
   {
      
      private static var §^G§:Array;
      
      private static var §6!J§:Program3D;
      
      private static var §^!2§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §!G§:Matrix3D;
      
      private var §+!0§:Matrix3D;
      
      private var §]h§:Matrix3D;
      
      private var §,i§:Vector.<Matrix3D>;
      
      private var §get §:int;
      
      private var §>+§:Vector.<§]5§>;
      
      private var §%!&§:int;
      
      private var §@e§:Context3D;
      
      private var §>k§:int = -1;
      
      public function §4]§()
      {
         super();
         this.§!G§ = new Matrix3D();
         this.§+!0§ = new Matrix3D();
         this.§]h§ = new Matrix3D();
         this.§,i§ = new Vector.<Matrix3D>(0);
         this.§get § = 0;
         this.§%!&§ = 0;
         this.§>+§ = new Vector.<§]5§>();
         if(§^G§ == null)
         {
            §^G§ = [];
         }
         this.§ !G§();
         this.§=j§(400,300);
         §[Z§.§%m§.addEventListener(Event.CONTEXT3D_CREATE,this.§]!$§);
      }
      
      public static function §8d§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§>m§(param1);
      }
      
      public static function §<Y§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?g§.§"!2§(param2) / 255,§?g§.§2t§(param2) / 255,§?g§.§7p§(param2) / 255,param3);
      }
      
      protected function get §4p§() : Matrix3D
      {
         return this.§+!0§;
      }
      
      protected function get §-@§() : Matrix3D
      {
         return this.§!G§;
      }
      
      public function §+j§(param1:Context3D, param2:int) : void
      {
         this.§@e§ = param1;
         this.§>k§ = param2;
      }
      
      public function get §,!D§() : Context3D
      {
         return this.§@e§;
      }
      
      public function get §!!E§() : int
      {
         return this.§>k§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]5§ = null;
         for each(_loc1_ in this.§>+§)
         {
            _loc1_.dispose();
         }
         if(§[Z§.§%m§)
         {
            §[Z§.§%m§.removeEventListener(Event.CONTEXT3D_CREATE,this.§]!$§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?g§.§"!2§(param2) / 255,§?g§.§2t§(param2) / 255,§?g§.§7p§(param2) / 255,param3);
      }
      
      private function §]!$§(param1:Event) : void
      {
         this.§>+§ = new <§]5§>[new §]5§()];
      }
      
      public function §=j§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §^!2§[0] = 2 / param1;
         §^!2§[1] = §^!2§[2] = §^!2§[3] = §^!2§[4] = 0;
         §^!2§[5] = -2 / param2;
         §^!2§[6] = §^!2§[7] = §^!2§[8] = §^!2§[9] = 0;
         §^!2§[10] = -2 / (param4 - param3);
         §^!2§[11] = 0;
         §^!2§[12] = -1;
         §^!2§[13] = 1;
         §^!2§[14] = -(param4 + param3) / (param4 - param3);
         §^!2§[15] = 1;
         this.§!G§.copyRawDataFrom(§^!2§);
      }
      
      public function § !G§() : void
      {
         this.§+!0§.identity();
      }
      
      public function §[I§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§+!0§.prependTranslation(param1,param2,param3);
      }
      
      public function §@;§(param1:Number, param2:Vector3D = null) : void
      {
         this.§+!0§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §;>§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§+!0§.prependScale(param1,param2,param3);
      }
      
      public function §>m§(param1:DisplayObject) : void
      {
         param1.§>m§(this.§+!0§);
      }
      
      public function §1H§() : void
      {
         if(this.§,i§.length < this.§get § + 1)
         {
            this.§,i§.push(new Matrix3D());
         }
         this.§,i§[this.§get §++].copyFrom(this.§+!0§);
      }
      
      public function §%!>§() : void
      {
         this.§+!0§.copyFrom(this.§,i§[--this.§get §]);
      }
      
      public function §!8§() : void
      {
         this.§get § = 0;
         this.§ !G§();
      }
      
      public function get §^Z§() : Matrix3D
      {
         this.§]h§.identity();
         this.§]h§.append(this.§+!0§);
         this.§]h§.append(this.§!G§);
         return this.§]h§;
      }
      
      public function batchQuad(param1:§6!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§!!O§.§"!P§(param1,param3,param4))
         {
            this.§2!0§();
         }
         this.§!!O§.§8^§(param1,param2,param3,param4,this.§+!0§);
      }
      
      public function §2!0§() : void
      {
         if(this.§!!O§.§ !9§ > 0)
         {
            this.§!!O§.render(this.§,!D§,this.§!G§);
            this.§!!O§.reset();
            ++this.§%!&§;
            if(this.§>+§.length <= this.§%!&§)
            {
               this.§>+§.push(new §]5§());
            }
         }
      }
      
      public function §16§() : void
      {
         this.§!8§();
         this.§%!&§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §!!O§() : §]5§
      {
         return this.§>+§[this.§%!&§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §^G§[param2])
         {
            §^G§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §6!J§)
         {
            §6!J§ = param2;
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
