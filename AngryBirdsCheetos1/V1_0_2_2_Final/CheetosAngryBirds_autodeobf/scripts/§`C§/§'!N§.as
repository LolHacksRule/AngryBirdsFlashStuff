package §`C§
{
   import §;! §.*;
   import §]!B§.Texture;
   import §]@§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'!N§
   {
      
      private static var §#+§:Array;
      
      private static var §@B§:Program3D;
      
      private static var §+!>§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §2p§:Matrix3D;
      
      private var §!!#§:Matrix3D;
      
      private var §5'§:Matrix3D;
      
      private var §@!^§:Vector.<Matrix3D>;
      
      private var §#7§:int;
      
      private var §-!X§:Vector.<§'!!§>;
      
      private var §<f§:int;
      
      private var §!?§:Context3D;
      
      private var §;!&§:int = -1;
      
      public function §'!N§()
      {
         super();
         this.§2p§ = new Matrix3D();
         this.§!!#§ = new Matrix3D();
         this.§5'§ = new Matrix3D();
         this.§@!^§ = new Vector.<Matrix3D>(0);
         this.§#7§ = 0;
         this.§<f§ = 0;
         this.§-!X§ = new Vector.<§'!!§>();
         if(§#+§ == null)
         {
            §#+§ = [];
         }
         this.§?Y§();
         this.§!D§(400,300);
         §9!'§.§7!Z§.addEventListener(Event.CONTEXT3D_CREATE,this.§"$§);
      }
      
      public static function §#q§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§]d§(param1);
      }
      
      public static function §,c§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§[!'§.§,!6§(param2) / 255,§[!'§.§`^§(param2) / 255,§[!'§.§5R§(param2) / 255,param3);
      }
      
      protected function get §7!V§() : Matrix3D
      {
         return this.§!!#§;
      }
      
      protected function get include() : Matrix3D
      {
         return this.§2p§;
      }
      
      public function §;g§(param1:Context3D, param2:int) : void
      {
         this.§!?§ = param1;
         this.§;!&§ = param2;
      }
      
      public function get §+!&§() : Context3D
      {
         return this.§!?§;
      }
      
      public function get §6!V§() : int
      {
         return this.§;!&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!!§ = null;
         for each(_loc1_ in this.§-!X§)
         {
            _loc1_.dispose();
         }
         if(§9!'§.§7!Z§)
         {
            §9!'§.§7!Z§.removeEventListener(Event.CONTEXT3D_CREATE,this.§"$§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§[!'§.§,!6§(param2) / 255,§[!'§.§`^§(param2) / 255,§[!'§.§5R§(param2) / 255,param3);
      }
      
      private function §"$§(param1:Event) : void
      {
         this.§-!X§ = new <§'!!§>[new §'!!§()];
      }
      
      public function §!D§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §+!>§[0] = 2 / param1;
         §+!>§[1] = §+!>§[2] = §+!>§[3] = §+!>§[4] = 0;
         §+!>§[5] = -2 / param2;
         §+!>§[6] = §+!>§[7] = §+!>§[8] = §+!>§[9] = 0;
         §+!>§[10] = -2 / (param4 - param3);
         §+!>§[11] = 0;
         §+!>§[12] = -1;
         §+!>§[13] = 1;
         §+!>§[14] = -(param4 + param3) / (param4 - param3);
         §+!>§[15] = 1;
         this.§2p§.copyRawDataFrom(§+!>§);
      }
      
      public function §?Y§() : void
      {
         this.§!!#§.identity();
      }
      
      public function §%x§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§!!#§.prependTranslation(param1,param2,param3);
      }
      
      public function §^!D§(param1:Number, param2:Vector3D = null) : void
      {
         this.§!!#§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §%1§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§!!#§.prependScale(param1,param2,param3);
      }
      
      public function §]d§(param1:DisplayObject) : void
      {
         param1.§]d§(this.§!!#§);
      }
      
      public function §3!2§() : void
      {
         if(this.§@!^§.length < this.§#7§ + 1)
         {
            this.§@!^§.push(new Matrix3D());
         }
         this.§@!^§[this.§#7§++].copyFrom(this.§!!#§);
      }
      
      public function §+!D§() : void
      {
         this.§!!#§.copyFrom(this.§@!^§[--this.§#7§]);
      }
      
      public function §1g§() : void
      {
         this.§#7§ = 0;
         this.§?Y§();
      }
      
      public function get §]!I§() : Matrix3D
      {
         this.§5'§.identity();
         this.§5'§.append(this.§!!#§);
         this.§5'§.append(this.§2p§);
         return this.§5'§;
      }
      
      public function batchQuad(param1:§9!<§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§+L§.§@w§(param1,param3,param4))
         {
            this.§+!2§();
         }
         this.§+L§.§'K§(param1,param2,param3,param4,this.§!!#§);
      }
      
      public function §+!2§() : void
      {
         if(this.§+L§.§'6§ > 0)
         {
            this.§+L§.render(this.§+!&§,this.§2p§);
            this.§+L§.reset();
            ++this.§<f§;
            if(this.§-!X§.length <= this.§<f§)
            {
               this.§-!X§.push(new §'!!§());
            }
         }
      }
      
      public function §2y§() : void
      {
         this.§1g§();
         this.§<f§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §+L§() : §'!!§
      {
         return this.§-!X§[this.§<f§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §#+§[param2])
         {
            §#+§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §@B§)
         {
            §@B§ = param2;
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
