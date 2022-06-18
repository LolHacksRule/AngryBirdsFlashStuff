package §]_§
{
   import §-A§.Texture;
   import §;!,§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import §null §.*;
   import starling.events.Event;
   
   public class §7o§
   {
      
      private static var §0!?§:Array;
      
      private static var §^%§:Program3D;
      
      private static var §;D§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §8s§:Matrix3D;
      
      private var §2!N§:Matrix3D;
      
      private var §@![§:Matrix3D;
      
      private var §-!'§:Vector.<Matrix3D>;
      
      private var §#6§:int;
      
      private var §in §:Vector.<§&c§>;
      
      private var §3D§:int;
      
      private var §7!T§:Context3D;
      
      private var §#'§:int = -1;
      
      public function §7o§()
      {
         super();
         this.§8s§ = new Matrix3D();
         this.§2!N§ = new Matrix3D();
         this.§@![§ = new Matrix3D();
         this.§-!'§ = new Vector.<Matrix3D>(0);
         this.§#6§ = 0;
         this.§3D§ = 0;
         this.§in § = new Vector.<§&c§>();
         if(§0!?§ == null)
         {
            §0!?§ = [];
         }
         this.§^!F§();
         this.§-!Y§(400,300);
         §!F§.§[M§.addEventListener(Event.CONTEXT3D_CREATE,this.§?6§);
      }
      
      public static function §@w§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§2!;§(param1);
      }
      
      public static function §4!J§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§>!R§.§+!_§(param2) / 255,§>!R§.§[q§(param2) / 255,§>!R§.§!<§(param2) / 255,param3);
      }
      
      protected function get §`!§() : Matrix3D
      {
         return this.§2!N§;
      }
      
      protected function get §+!!§() : Matrix3D
      {
         return this.§8s§;
      }
      
      public function §8J§(param1:Context3D, param2:int) : void
      {
         this.§7!T§ = param1;
         this.§#'§ = param2;
      }
      
      public function get §>!6§() : Context3D
      {
         return this.§7!T§;
      }
      
      public function get §]x§() : int
      {
         return this.§#'§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&c§ = null;
         for each(_loc1_ in this.§in §)
         {
            _loc1_.dispose();
         }
         if(§!F§.§[M§)
         {
            §!F§.§[M§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?6§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§>!R§.§+!_§(param2) / 255,§>!R§.§[q§(param2) / 255,§>!R§.§!<§(param2) / 255,param3);
      }
      
      private function §?6§(param1:Event) : void
      {
         this.§in § = new <§&c§>[new §&c§()];
      }
      
      public function §-!Y§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §;D§[0] = 2 / param1;
         §;D§[1] = §;D§[2] = §;D§[3] = §;D§[4] = 0;
         §;D§[5] = -2 / param2;
         §;D§[6] = §;D§[7] = §;D§[8] = §;D§[9] = 0;
         §;D§[10] = -2 / (param4 - param3);
         §;D§[11] = 0;
         §;D§[12] = -1;
         §;D§[13] = 1;
         §;D§[14] = -(param4 + param3) / (param4 - param3);
         §;D§[15] = 1;
         this.§8s§.copyRawDataFrom(§;D§);
      }
      
      public function §^!F§() : void
      {
         this.§2!N§.identity();
      }
      
      public function §5!9§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§2!N§.prependTranslation(param1,param2,param3);
      }
      
      public function §,M§(param1:Number, param2:Vector3D = null) : void
      {
         this.§2!N§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §5!Y§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§2!N§.prependScale(param1,param2,param3);
      }
      
      public function §2!;§(param1:DisplayObject) : void
      {
         param1.§2!;§(this.§2!N§);
      }
      
      public function §09§() : void
      {
         if(this.§-!'§.length < this.§#6§ + 1)
         {
            this.§-!'§.push(new Matrix3D());
         }
         this.§-!'§[this.§#6§++].copyFrom(this.§2!N§);
      }
      
      public function §"!>§() : void
      {
         this.§2!N§.copyFrom(this.§-!'§[--this.§#6§]);
      }
      
      public function §@L§() : void
      {
         this.§#6§ = 0;
         this.§^!F§();
      }
      
      public function get §!Y§() : Matrix3D
      {
         this.§@![§.identity();
         this.§@![§.append(this.§2!N§);
         this.§@![§.append(this.§8s§);
         return this.§@![§;
      }
      
      public function batchQuad(param1:§>U§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§'i§.§8b§(param1,param3,param4))
         {
            this.§`u§();
         }
         this.§'i§.§try §(param1,param2,param3,param4,this.§2!N§);
      }
      
      public function §`u§() : void
      {
         if(this.§'i§.§'!V§ > 0)
         {
            this.§'i§.render(this.§>!6§,this.§8s§);
            this.§'i§.reset();
            ++this.§3D§;
            if(this.§in §.length <= this.§3D§)
            {
               this.§in §.push(new §&c§());
            }
         }
      }
      
      public function §<!0§() : void
      {
         this.§@L§();
         this.§3D§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §'i§() : §&c§
      {
         return this.§in §[this.§3D§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §0!?§[param2])
         {
            §0!?§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §^%§)
         {
            §^%§ = param2;
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
