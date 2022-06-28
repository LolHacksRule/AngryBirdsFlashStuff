package §#!;§
{
   import §5!@§.Texture;
   import §9W§.*;
   import §@e§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §?h§
   {
      
      private static var §-$§:Array;
      
      private static var §#L§:Program3D;
      
      private static var §`d§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §>!C§:Matrix3D;
      
      private var §50§:Matrix3D;
      
      private var §&<§:Matrix3D;
      
      private var §3a§:Vector.<Matrix3D>;
      
      private var §-!1§:int;
      
      private var §,Z§:Vector.<§,U§>;
      
      private var §,!9§:int;
      
      private var §2!6§:Context3D;
      
      private var §]!6§:int = -1;
      
      public function §?h§()
      {
         super();
         this.§>!C§ = new Matrix3D();
         this.§50§ = new Matrix3D();
         this.§&<§ = new Matrix3D();
         this.§3a§ = new Vector.<Matrix3D>(0);
         this.§-!1§ = 0;
         this.§,!9§ = 0;
         this.§,Z§ = new Vector.<§,U§>();
         if(§-$§ == null)
         {
            §-$§ = [];
         }
         this.§>;§();
         this.§'B§(400,300);
         §;T§.§,H§.addEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
      }
      
      public static function §58§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§&f§(param1);
      }
      
      public static function §=1§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§=!2§.§`_§(param2) / 255,§=!2§.§"!5§(param2) / 255,§=!2§.§+L§(param2) / 255,param3);
      }
      
      protected function get §9v§() : Matrix3D
      {
         return this.§50§;
      }
      
      protected function get §1"§() : Matrix3D
      {
         return this.§>!C§;
      }
      
      public function §51§(param1:Context3D, param2:int) : void
      {
         this.§2!6§ = param1;
         this.§]!6§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§2!6§;
      }
      
      public function get §4+§() : int
      {
         return this.§]!6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,U§ = null;
         for each(_loc1_ in this.§,Z§)
         {
            _loc1_.dispose();
         }
         if(§;T§.§,H§)
         {
            §;T§.§,H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'!0§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§=!2§.§`_§(param2) / 255,§=!2§.§"!5§(param2) / 255,§=!2§.§+L§(param2) / 255,param3);
      }
      
      private function §'!0§(param1:Event) : void
      {
         this.§,Z§ = new <§,U§>[new §,U§()];
      }
      
      public function §'B§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §`d§[0] = 2 / param1;
         §`d§[1] = §`d§[2] = §`d§[3] = §`d§[4] = 0;
         §`d§[5] = -2 / param2;
         §`d§[6] = §`d§[7] = §`d§[8] = §`d§[9] = 0;
         §`d§[10] = -2 / (param4 - param3);
         §`d§[11] = 0;
         §`d§[12] = -1;
         §`d§[13] = 1;
         §`d§[14] = -(param4 + param3) / (param4 - param3);
         §`d§[15] = 1;
         this.§>!C§.copyRawDataFrom(§`d§);
      }
      
      public function §>;§() : void
      {
         this.§50§.identity();
      }
      
      public function §"!H§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§50§.prependTranslation(param1,param2,param3);
      }
      
      public function §3!B§(param1:Number, param2:Vector3D = null) : void
      {
         this.§50§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §!!@§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§50§.prependScale(param1,param2,param3);
      }
      
      public function §&f§(param1:DisplayObject) : void
      {
         param1.§&f§(this.§50§);
      }
      
      public function §<R§() : void
      {
         if(this.§3a§.length < this.§-!1§ + 1)
         {
            this.§3a§.push(new Matrix3D());
         }
         this.§3a§[this.§-!1§++].copyFrom(this.§50§);
      }
      
      public function §;l§() : void
      {
         this.§50§.copyFrom(this.§3a§[--this.§-!1§]);
      }
      
      public function §%5§() : void
      {
         this.§-!1§ = 0;
         this.§>;§();
      }
      
      public function get §;+§() : Matrix3D
      {
         this.§&<§.identity();
         this.§&<§.append(this.§50§);
         this.§&<§.append(this.§>!C§);
         return this.§&<§;
      }
      
      public function batchQuad(param1:§3g§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§5s§.§9h§(param1,param3,param4))
         {
            this.§?Y§();
         }
         this.§5s§.§+B§(param1,param2,param3,param4,this.§50§);
      }
      
      public function §?Y§() : void
      {
         if(this.§5s§.§+!-§ > 0)
         {
            this.§5s§.render(this.context,this.§>!C§);
            this.§5s§.reset();
            ++this.§,!9§;
            if(this.§,Z§.length <= this.§,!9§)
            {
               this.§,Z§.push(new §,U§());
            }
         }
      }
      
      public function §#7§() : void
      {
         this.§%5§();
         this.§,!9§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §5s§() : §,U§
      {
         return this.§,Z§[this.§,!9§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §-$§[param2])
         {
            §-$§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §#L§)
         {
            §#L§ = param2;
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
