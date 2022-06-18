package §94§
{
   import §+![§.Texture;
   import §3§.*;
   import §9![§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §#!a§
   {
      
      private static var §89§:Array;
      
      private static var §1A§:Program3D;
      
      private static var §[C§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §9H§:Matrix3D;
      
      private var §4z§:Matrix3D;
      
      private var § 6§:Matrix3D;
      
      private var §3![§:Vector.<Matrix3D>;
      
      private var §`5§:int;
      
      private var §^!<§:Vector.<§6!N§>;
      
      private var §%!S§:int;
      
      private var §%f§:Context3D;
      
      private var §3!P§:int = -1;
      
      public function §#!a§()
      {
         super();
         this.§9H§ = new Matrix3D();
         this.§4z§ = new Matrix3D();
         this.§ 6§ = new Matrix3D();
         this.§3![§ = new Vector.<Matrix3D>(0);
         this.§`5§ = 0;
         this.§%!S§ = 0;
         this.§^!<§ = new Vector.<§6!N§>();
         if(§89§ == null)
         {
            §89§ = [];
         }
         this.§#!R§();
         this.§@V§(400,300);
         §&!7§.§>!M§.addEventListener(Event.CONTEXT3D_CREATE,this.§2![§);
      }
      
      public static function §0c§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§1k§(param1);
      }
      
      public static function §8!T§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§8i§.§]!]§(param2) / 255,§8i§.§6,§(param2) / 255,§8i§.§"!8§(param2) / 255,param3);
      }
      
      protected function get §?!E§() : Matrix3D
      {
         return this.§4z§;
      }
      
      protected function get § o§() : Matrix3D
      {
         return this.§9H§;
      }
      
      public function §&s§(param1:Context3D, param2:int) : void
      {
         this.§%f§ = param1;
         this.§3!P§ = param2;
      }
      
      public function get §&!T§() : Context3D
      {
         return this.§%f§;
      }
      
      public function get §>3§() : int
      {
         return this.§3!P§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!N§ = null;
         for each(_loc1_ in this.§^!<§)
         {
            _loc1_.dispose();
         }
         if(§&!7§.§>!M§)
         {
            §&!7§.§>!M§.removeEventListener(Event.CONTEXT3D_CREATE,this.§2![§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§8i§.§]!]§(param2) / 255,§8i§.§6,§(param2) / 255,§8i§.§"!8§(param2) / 255,param3);
      }
      
      private function §2![§(param1:Event) : void
      {
         this.§^!<§ = new <§6!N§>[new §6!N§()];
      }
      
      public function §@V§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §[C§[0] = 2 / param1;
         §[C§[1] = §[C§[2] = §[C§[3] = §[C§[4] = 0;
         §[C§[5] = -2 / param2;
         §[C§[6] = §[C§[7] = §[C§[8] = §[C§[9] = 0;
         §[C§[10] = -2 / (param4 - param3);
         §[C§[11] = 0;
         §[C§[12] = -1;
         §[C§[13] = 1;
         §[C§[14] = -(param4 + param3) / (param4 - param3);
         §[C§[15] = 1;
         this.§9H§.copyRawDataFrom(§[C§);
      }
      
      public function §#!R§() : void
      {
         this.§4z§.identity();
      }
      
      public function §`"§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§4z§.prependTranslation(param1,param2,param3);
      }
      
      public function §4@§(param1:Number, param2:Vector3D = null) : void
      {
         this.§4z§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §+n§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§4z§.prependScale(param1,param2,param3);
      }
      
      public function §1k§(param1:DisplayObject) : void
      {
         param1.§1k§(this.§4z§);
      }
      
      public function §3I§() : void
      {
         if(this.§3![§.length < this.§`5§ + 1)
         {
            this.§3![§.push(new Matrix3D());
         }
         this.§3![§[this.§`5§++].copyFrom(this.§4z§);
      }
      
      public function §@!2§() : void
      {
         this.§4z§.copyFrom(this.§3![§[--this.§`5§]);
      }
      
      public function §0I§() : void
      {
         this.§`5§ = 0;
         this.§#!R§();
      }
      
      public function get §>^§() : Matrix3D
      {
         this.§ 6§.identity();
         this.§ 6§.append(this.§4z§);
         this.§ 6§.append(this.§9H§);
         return this.§ 6§;
      }
      
      public function batchQuad(param1:§2?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§=n§.§+j§(param1,param3,param4))
         {
            this.§2!2§();
         }
         this.§=n§.§,3§(param1,param2,param3,param4,this.§4z§);
      }
      
      public function §2!2§() : void
      {
         if(this.§=n§.§5z§ > 0)
         {
            this.§=n§.render(this.§&!T§,this.§9H§);
            this.§=n§.reset();
            ++this.§%!S§;
            if(this.§^!<§.length <= this.§%!S§)
            {
               this.§^!<§.push(new §6!N§());
            }
         }
      }
      
      public function §]!a§() : void
      {
         this.§0I§();
         this.§%!S§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §=n§() : §6!N§
      {
         return this.§^!<§[this.§%!S§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §89§[param2])
         {
            §89§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §1A§)
         {
            §1A§ = param2;
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
