package §`M§
{
   import §1!A§.*;
   import §5L§.*;
   import §^n§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §[7§
   {
      
      private static var §?1§:Array;
      
      private static var § !X§:Program3D;
      
      private static var §;%§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §0!8§:Matrix3D;
      
      private var §->§:Matrix3D;
      
      private var §@8§:Matrix3D;
      
      private var §-R§:Vector.<Matrix3D>;
      
      private var §&!]§:int;
      
      private var §!!T§:Vector.<§=!"§>;
      
      private var §>!Q§:int;
      
      private var §0?§:Context3D;
      
      private var §1!E§:int = -1;
      
      public function §[7§()
      {
         super();
         this.§0!8§ = new Matrix3D();
         this.§->§ = new Matrix3D();
         this.§@8§ = new Matrix3D();
         this.§-R§ = new Vector.<Matrix3D>(0);
         this.§&!]§ = 0;
         this.§>!Q§ = 0;
         this.§!!T§ = new Vector.<§=!"§>();
         if(§?1§ == null)
         {
            §?1§ = [];
         }
         this.§3!§();
         this.§5§(400,300);
         §'C§.§3b§.addEventListener(Event.CONTEXT3D_CREATE,this.§%X§);
      }
      
      public static function §+=§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§#;§(param1);
      }
      
      public static function §#r§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§8!8§.§1!@§(param2) / 255,§8!8§.§;L§(param2) / 255,§8!8§.§`!D§(param2) / 255,param3);
      }
      
      protected function get §;!@§() : Matrix3D
      {
         return this.§->§;
      }
      
      protected function get §2§() : Matrix3D
      {
         return this.§0!8§;
      }
      
      public function §3O§(param1:Context3D, param2:int) : void
      {
         this.§0?§ = param1;
         this.§1!E§ = param2;
      }
      
      public function get §^!%§() : Context3D
      {
         return this.§0?§;
      }
      
      public function get §`7§() : int
      {
         return this.§1!E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§=!"§ = null;
         for each(_loc1_ in this.§!!T§)
         {
            _loc1_.dispose();
         }
         if(§'C§.§3b§)
         {
            §'C§.§3b§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%X§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§8!8§.§1!@§(param2) / 255,§8!8§.§;L§(param2) / 255,§8!8§.§`!D§(param2) / 255,param3);
      }
      
      private function §%X§(param1:Event) : void
      {
         this.§!!T§ = new <§=!"§>[new §=!"§()];
      }
      
      public function §5§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §;%§[0] = 2 / param1;
         §;%§[1] = §;%§[2] = §;%§[3] = §;%§[4] = 0;
         §;%§[5] = -2 / param2;
         §;%§[6] = §;%§[7] = §;%§[8] = §;%§[9] = 0;
         §;%§[10] = -2 / (param4 - param3);
         §;%§[11] = 0;
         §;%§[12] = -1;
         §;%§[13] = 1;
         §;%§[14] = -(param4 + param3) / (param4 - param3);
         §;%§[15] = 1;
         this.§0!8§.copyRawDataFrom(§;%§);
      }
      
      public function §3!§() : void
      {
         this.§->§.identity();
      }
      
      public function §?8§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§->§.prependTranslation(param1,param2,param3);
      }
      
      public function §"!%§(param1:Number, param2:Vector3D = null) : void
      {
         this.§->§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §[Z§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§->§.prependScale(param1,param2,param3);
      }
      
      public function §#;§(param1:DisplayObject) : void
      {
         param1.§#;§(this.§->§);
      }
      
      public function §?=§() : void
      {
         if(this.§-R§.length < this.§&!]§ + 1)
         {
            this.§-R§.push(new Matrix3D());
         }
         this.§-R§[this.§&!]§++].copyFrom(this.§->§);
      }
      
      public function §[!S§() : void
      {
         this.§->§.copyFrom(this.§-R§[--this.§&!]§]);
      }
      
      public function §[H§() : void
      {
         this.§&!]§ = 0;
         this.§3!§();
      }
      
      public function get §=9§() : Matrix3D
      {
         this.§@8§.identity();
         this.§@8§.append(this.§->§);
         this.§@8§.append(this.§0!8§);
         return this.§@8§;
      }
      
      public function batchQuad(param1:§@!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§+J§.§2%§(param1,param3,param4))
         {
            this.§+![§();
         }
         this.§+J§.§&G§(param1,param2,param3,param4,this.§->§);
      }
      
      public function §+![§() : void
      {
         if(this.§+J§.§%!Y§ > 0)
         {
            this.§+J§.render(this.§^!%§,this.§0!8§);
            this.§+J§.reset();
            ++this.§>!Q§;
            if(this.§!!T§.length <= this.§>!Q§)
            {
               this.§!!T§.push(new §=!"§());
            }
         }
      }
      
      public function §%!;§() : void
      {
         this.§[H§();
         this.§>!Q§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §+J§() : §=!"§
      {
         return this.§!!T§[this.§>!Q§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §?1§[param2])
         {
            §?1§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != § !X§)
         {
            § !X§ = param2;
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
