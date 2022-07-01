package §-!Y§
{
   import §,!q§.*;
   import §-$§.*;
   import §?V§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §,!f§
   {
      
      private static var § 6§:Array;
      
      private static var §5$§:Program3D;
      
      private static var §,!E§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §,%§:Matrix3D;
      
      private var §42§:Matrix3D;
      
      private var §`2§:Matrix3D;
      
      private var §-!G§:Vector.<Matrix3D>;
      
      private var §`!s§:int;
      
      private var §!!r§:Vector.<§<"2§>;
      
      private var §#"$§:int;
      
      private var §[§:Context3D;
      
      private var §!"4§:int = -1;
      
      public function §,!f§()
      {
         super();
         this.§,%§ = new Matrix3D();
         this.§42§ = new Matrix3D();
         this.§`2§ = new Matrix3D();
         this.§-!G§ = new Vector.<Matrix3D>(0);
         this.§`!s§ = 0;
         this.§#"$§ = 0;
         this.§!!r§ = new Vector.<§<"2§>();
         if(§ 6§ == null)
         {
            § 6§ = [];
         }
         this.§;h§();
         this.§"!?§(400,300);
         §%!%§.§"T§.addEventListener(Event.CONTEXT3D_CREATE,this.§5!h§);
      }
      
      public static function §-c§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§2!Q§(param1);
      }
      
      public static function §&u§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§4!f§.§=!S§(param2) / 255,§4!f§.§if §(param2) / 255,§4!f§.§^j§(param2) / 255,param3);
      }
      
      protected function get §-7§() : Matrix3D
      {
         return this.§42§;
      }
      
      protected function get §-"6§() : Matrix3D
      {
         return this.§,%§;
      }
      
      public function §`j§(param1:Context3D, param2:int) : void
      {
         this.§[§ = param1;
         this.§!"4§ = param2;
      }
      
      public function get §'y§() : Context3D
      {
         return this.§[§;
      }
      
      public function get §#!<§() : int
      {
         return this.§!"4§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<"2§ = null;
         for each(_loc1_ in this.§!!r§)
         {
            _loc1_.dispose();
         }
         if(§%!%§.§"T§)
         {
            §%!%§.§"T§.removeEventListener(Event.CONTEXT3D_CREATE,this.§5!h§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§4!f§.§=!S§(param2) / 255,§4!f§.§if §(param2) / 255,§4!f§.§^j§(param2) / 255,param3);
      }
      
      private function §5!h§(param1:Event) : void
      {
         this.§!!r§ = new <§<"2§>[new §<"2§()];
      }
      
      public function §"!?§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §,!E§[0] = 2 / param1;
         §,!E§[1] = §,!E§[2] = §,!E§[3] = §,!E§[4] = 0;
         §,!E§[5] = -2 / param2;
         §,!E§[6] = §,!E§[7] = §,!E§[8] = §,!E§[9] = 0;
         §,!E§[10] = -2 / (param4 - param3);
         §,!E§[11] = 0;
         §,!E§[12] = -1;
         §,!E§[13] = 1;
         §,!E§[14] = -(param4 + param3) / (param4 - param3);
         §,!E§[15] = 1;
         this.§,%§.copyRawDataFrom(§,!E§);
      }
      
      public function §;h§() : void
      {
         this.§42§.identity();
      }
      
      public function §@" §(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§42§.prependTranslation(param1,param2,param3);
      }
      
      public function §=A§(param1:Number, param2:Vector3D = null) : void
      {
         this.§42§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §5"3§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§42§.prependScale(param1,param2,param3);
      }
      
      public function §2!Q§(param1:DisplayObject) : void
      {
         param1.§2!Q§(this.§42§);
      }
      
      public function §3!,§() : void
      {
         if(this.§-!G§.length < this.§`!s§ + 1)
         {
            this.§-!G§.push(new Matrix3D());
         }
         this.§-!G§[this.§`!s§++].copyFrom(this.§42§);
      }
      
      public function §!!d§() : void
      {
         this.§42§.copyFrom(this.§-!G§[--this.§`!s§]);
      }
      
      public function §<"0§() : void
      {
         this.§`!s§ = 0;
         this.§;h§();
      }
      
      public function get §<!p§() : Matrix3D
      {
         this.§`2§.identity();
         this.§`2§.append(this.§42§);
         this.§`2§.append(this.§,%§);
         return this.§`2§;
      }
      
      public function batchQuad(param1:§#!H§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§7>§.§@g§(param1,param3,param4,param2))
         {
            this.§89§();
         }
         this.§7>§.§+r§(param1,param2,param3,param4,this.§42§);
      }
      
      public function §89§() : void
      {
         if(this.§7>§.§7!8§ > 0)
         {
            this.§7>§.render(this.§'y§,this.§,%§);
            this.§7>§.reset();
            ++this.§#"$§;
            if(this.§!!r§.length <= this.§#"$§)
            {
               this.§!!r§.push(new §<"2§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§<"0§();
         this.§#"$§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §7>§() : §<"2§
      {
         return this.§!!r§[this.§#"$§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != § 6§[param2])
         {
            § 6§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §5$§)
         {
            §5$§ = param2;
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
