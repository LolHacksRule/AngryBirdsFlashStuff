package §=!d§
{
   import §1Q§.*;
   import §6s§.Texture;
   import §`!B§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §`J§
   {
      
      private static var §7!8§:Array;
      
      private static var §`w§:Program3D;
      
      private static var §@O§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §?E§:Matrix3D;
      
      private var §7!1§:Matrix3D;
      
      private var §`!f§:Matrix3D;
      
      private var §+J§:Vector.<Matrix3D>;
      
      private var §69§:int;
      
      private var §`""§:Vector.<§6!0§>;
      
      private var §,G§:int;
      
      private var §'#§:Context3D;
      
      private var §"m§:int = -1;
      
      public function §`J§()
      {
         super();
         this.§?E§ = new Matrix3D();
         this.§7!1§ = new Matrix3D();
         this.§`!f§ = new Matrix3D();
         this.§+J§ = new Vector.<Matrix3D>(0);
         this.§69§ = 0;
         this.§,G§ = 0;
         this.§`""§ = new Vector.<§6!0§>();
         if(§7!8§ == null)
         {
            §7!8§ = [];
         }
         this.each();
         this.§@!P§(400,300);
         §5!5§.§^'§.addEventListener(Event.CONTEXT3D_CREATE,this.§5J§);
      }
      
      public static function §?;§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§@&§(param1);
      }
      
      public static function §=8§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§-"-§.§&D§(param2) / 255,§-"-§.§7"5§(param2) / 255,§-"-§.§]!_§(param2) / 255,param3);
      }
      
      protected function get §`!u§() : Matrix3D
      {
         return this.§7!1§;
      }
      
      protected function get §'[§() : Matrix3D
      {
         return this.§?E§;
      }
      
      public function §%D§(param1:Context3D, param2:int) : void
      {
         this.§'#§ = param1;
         this.§"m§ = param2;
      }
      
      public function get §9!$§() : Context3D
      {
         return this.§'#§;
      }
      
      public function get §&"4§() : int
      {
         return this.§"m§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!0§ = null;
         for each(_loc1_ in this.§`""§)
         {
            _loc1_.dispose();
         }
         if(§5!5§.§^'§)
         {
            §5!5§.§^'§.removeEventListener(Event.CONTEXT3D_CREATE,this.§5J§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§-"-§.§&D§(param2) / 255,§-"-§.§7"5§(param2) / 255,§-"-§.§]!_§(param2) / 255,param3);
      }
      
      private function §5J§(param1:Event) : void
      {
         this.§`""§ = new <§6!0§>[new §6!0§()];
      }
      
      public function §@!P§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §@O§[0] = 2 / param1;
         §@O§[1] = §@O§[2] = §@O§[3] = §@O§[4] = 0;
         §@O§[5] = -2 / param2;
         §@O§[6] = §@O§[7] = §@O§[8] = §@O§[9] = 0;
         §@O§[10] = -2 / (param4 - param3);
         §@O§[11] = 0;
         §@O§[12] = -1;
         §@O§[13] = 1;
         §@O§[14] = -(param4 + param3) / (param4 - param3);
         §@O§[15] = 1;
         this.§?E§.copyRawDataFrom(§@O§);
      }
      
      public function each() : void
      {
         this.§7!1§.identity();
      }
      
      public function § "-§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§7!1§.prependTranslation(param1,param2,param3);
      }
      
      public function §?!%§(param1:Number, param2:Vector3D = null) : void
      {
         this.§7!1§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §>!w§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§7!1§.prependScale(param1,param2,param3);
      }
      
      public function §@&§(param1:DisplayObject) : void
      {
         param1.§@&§(this.§7!1§);
      }
      
      public function §5"2§() : void
      {
         if(this.§+J§.length < this.§69§ + 1)
         {
            this.§+J§.push(new Matrix3D());
         }
         this.§+J§[this.§69§++].copyFrom(this.§7!1§);
      }
      
      public function §!N§() : void
      {
         this.§7!1§.copyFrom(this.§+J§[--this.§69§]);
      }
      
      public function §=4§() : void
      {
         this.§69§ = 0;
         this.each();
      }
      
      public function get §2!x§() : Matrix3D
      {
         this.§`!f§.identity();
         this.§`!f§.append(this.§7!1§);
         this.§`!f§.append(this.§?E§);
         return this.§`!f§;
      }
      
      public function batchQuad(param1:§]!J§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§[C§.§1t§(param1,param3,param4,param2))
         {
            this.§,! §();
         }
         this.§[C§.§?!V§(param1,param2,param3,param4,this.§7!1§);
      }
      
      public function §,! §() : void
      {
         if(this.§[C§.§>!'§ > 0)
         {
            this.§[C§.render(this.§9!$§,this.§?E§);
            this.§[C§.reset();
            ++this.§,G§;
            if(this.§`""§.length <= this.§,G§)
            {
               this.§`""§.push(new §6!0§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§=4§();
         this.§,G§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §[C§() : §6!0§
      {
         return this.§`""§[this.§,G§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §7!8§[param2])
         {
            §7!8§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §`w§)
         {
            §`w§ = param2;
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
