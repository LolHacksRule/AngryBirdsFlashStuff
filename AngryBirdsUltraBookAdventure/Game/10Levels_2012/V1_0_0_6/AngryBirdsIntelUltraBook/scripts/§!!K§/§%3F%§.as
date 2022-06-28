package §!!K§
{
   import §4>§.Texture;
   import §7!B§.*;
   import §9!k§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §?%§
   {
      
      private static var §5!#§:Array;
      
      private static var §3!"§:Program3D;
      
      private static var §6!g§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §<!q§:Matrix3D;
      
      private var §7%§:Matrix3D;
      
      private var §?i§:Matrix3D;
      
      private var §7d§:Vector.<Matrix3D>;
      
      private var §&i§:int;
      
      private var §!!6§:Vector.<§`L§>;
      
      private var §'!M§:int;
      
      private var §?!y§:Context3D;
      
      private var §]&§:int = -1;
      
      public function §?%§()
      {
         super();
         this.§<!q§ = new Matrix3D();
         this.§7%§ = new Matrix3D();
         this.§?i§ = new Matrix3D();
         this.§7d§ = new Vector.<Matrix3D>(0);
         this.§&i§ = 0;
         this.§'!M§ = 0;
         this.§!!6§ = new Vector.<§`L§>();
         if(§5!#§ == null)
         {
            §5!#§ = [];
         }
         this.§6;§();
         this.§ !2§(400,300);
         §else§.§^!A§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!r§);
      }
      
      public static function §"!0§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§5U§(param1);
      }
      
      public static function §4!s§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§46§.§'!'§(param2) / 255,§46§.§1!U§(param2) / 255,§46§.§[]§(param2) / 255,param3);
      }
      
      protected function get §%u§() : Matrix3D
      {
         return this.§7%§;
      }
      
      protected function get §[!a§() : Matrix3D
      {
         return this.§<!q§;
      }
      
      public function §<6§(param1:Context3D, param2:int) : void
      {
         this.§?!y§ = param1;
         this.§]&§ = param2;
      }
      
      public function get §5Y§() : Context3D
      {
         return this.§?!y§;
      }
      
      public function get §;!p§() : int
      {
         return this.§]&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`L§ = null;
         for each(_loc1_ in this.§!!6§)
         {
            _loc1_.dispose();
         }
         if(§else§.§^!A§)
         {
            §else§.§^!A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!r§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§46§.§'!'§(param2) / 255,§46§.§1!U§(param2) / 255,§46§.§[]§(param2) / 255,param3);
      }
      
      private function §3!r§(param1:Event) : void
      {
         this.§!!6§ = new <§`L§>[new §`L§()];
      }
      
      public function § !2§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §6!g§[0] = 2 / param1;
         §6!g§[1] = §6!g§[2] = §6!g§[3] = §6!g§[4] = 0;
         §6!g§[5] = -2 / param2;
         §6!g§[6] = §6!g§[7] = §6!g§[8] = §6!g§[9] = 0;
         §6!g§[10] = -2 / (param4 - param3);
         §6!g§[11] = 0;
         §6!g§[12] = -1;
         §6!g§[13] = 1;
         §6!g§[14] = -(param4 + param3) / (param4 - param3);
         §6!g§[15] = 1;
         this.§<!q§.copyRawDataFrom(§6!g§);
      }
      
      public function §6;§() : void
      {
         this.§7%§.identity();
      }
      
      public function §@c§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§7%§.prependTranslation(param1,param2,param3);
      }
      
      public function § m§(param1:Number, param2:Vector3D = null) : void
      {
         this.§7%§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §3!Y§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§7%§.prependScale(param1,param2,param3);
      }
      
      public function §5U§(param1:DisplayObject) : void
      {
         param1.§5U§(this.§7%§);
      }
      
      public function §6m§() : void
      {
         if(this.§7d§.length < this.§&i§ + 1)
         {
            this.§7d§.push(new Matrix3D());
         }
         this.§7d§[this.§&i§++].copyFrom(this.§7%§);
      }
      
      public function §6U§() : void
      {
         this.§7%§.copyFrom(this.§7d§[--this.§&i§]);
      }
      
      public function §%!N§() : void
      {
         this.§&i§ = 0;
         this.§6;§();
      }
      
      public function get §7!n§() : Matrix3D
      {
         this.§?i§.identity();
         this.§?i§.append(this.§7%§);
         this.§?i§.append(this.§<!q§);
         return this.§?i§;
      }
      
      public function batchQuad(param1:§;R§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§^!e§.§;!Z§(param1,param3,param4))
         {
            this.§8l§();
         }
         this.§^!e§.§'!i§(param1,param2,param3,param4,this.§7%§);
      }
      
      public function §8l§() : void
      {
         if(this.§^!e§.§%,§ > 0)
         {
            this.§^!e§.render(this.§5Y§,this.§<!q§);
            this.§^!e§.reset();
            ++this.§'!M§;
            if(this.§!!6§.length <= this.§'!M§)
            {
               this.§!!6§.push(new §`L§());
            }
         }
      }
      
      public function §>G§() : void
      {
         this.§%!N§();
         this.§'!M§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §^!e§() : §`L§
      {
         return this.§!!6§[this.§'!M§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §5!#§[param2])
         {
            §5!#§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §3!"§)
         {
            §3!"§ = param2;
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
