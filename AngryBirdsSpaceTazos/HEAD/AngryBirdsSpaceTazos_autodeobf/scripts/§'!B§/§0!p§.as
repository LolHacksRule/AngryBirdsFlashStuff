package §'!B§
{
   import §&!]§.*;
   import §6!5§.*;
   import §9"@§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §0!p§
   {
      
      private static var §1U§:Array;
      
      private static var §?I§:Program3D;
      
      private static var §?f§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §2H§:Matrix3D;
      
      private var §4J§:Matrix3D;
      
      private var §3]§:Matrix3D;
      
      private var §>!j§:Vector.<Matrix3D>;
      
      private var §4!l§:int;
      
      private var §`"@§:Vector.<§'Z§>;
      
      private var §'t§:int;
      
      private var §3!@§:Context3D;
      
      private var §0^§:int = -1;
      
      public function §0!p§()
      {
         super();
         this.§2H§ = new Matrix3D();
         this.§4J§ = new Matrix3D();
         this.§3]§ = new Matrix3D();
         this.§>!j§ = new Vector.<Matrix3D>(0);
         this.§4!l§ = 0;
         this.§'t§ = 0;
         this.§`"@§ = new Vector.<§'Z§>();
         if(§1U§ == null)
         {
            §1U§ = [];
         }
         this.§!u§();
         this.§,!d§(400,300);
         §8T§.§5!Y§.addEventListener(Event.CONTEXT3D_CREATE,this.§"!=§);
      }
      
      public static function §0A§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§-!_§(param1);
      }
      
      public static function § !7§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3c§.§throw§(param2) / 255,§3c§.§!!u§(param2) / 255,§3c§.§8"-§(param2) / 255,param3);
      }
      
      protected function get §9"?§() : Matrix3D
      {
         return this.§4J§;
      }
      
      protected function get §;"?§() : Matrix3D
      {
         return this.§2H§;
      }
      
      public function §3g§(param1:Context3D, param2:int) : void
      {
         this.§3!@§ = param1;
         this.§0^§ = param2;
      }
      
      public function get §@2§() : Context3D
      {
         return this.§3!@§;
      }
      
      public function get §9B§() : int
      {
         return this.§0^§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'Z§ = null;
         for each(_loc1_ in this.§`"@§)
         {
            _loc1_.dispose();
         }
         if(§8T§.§5!Y§)
         {
            §8T§.§5!Y§.removeEventListener(Event.CONTEXT3D_CREATE,this.§"!=§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3c§.§throw§(param2) / 255,§3c§.§!!u§(param2) / 255,§3c§.§8"-§(param2) / 255,param3);
      }
      
      private function §"!=§(param1:Event) : void
      {
         this.§`"@§ = new <§'Z§>[new §'Z§()];
      }
      
      public function §,!d§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §?f§[0] = 2 / param1;
         §?f§[1] = §?f§[2] = §?f§[3] = §?f§[4] = 0;
         §?f§[5] = -2 / param2;
         §?f§[6] = §?f§[7] = §?f§[8] = §?f§[9] = 0;
         §?f§[10] = -2 / (param4 - param3);
         §?f§[11] = 0;
         §?f§[12] = -1;
         §?f§[13] = 1;
         §?f§[14] = -(param4 + param3) / (param4 - param3);
         §?f§[15] = 1;
         this.§2H§.copyRawDataFrom(§?f§);
      }
      
      public function §!u§() : void
      {
         this.§4J§.identity();
      }
      
      public function §0F§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§4J§.prependTranslation(param1,param2,param3);
      }
      
      public function §2o§(param1:Number, param2:Vector3D = null) : void
      {
         this.§4J§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function § X§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§4J§.prependScale(param1,param2,param3);
      }
      
      public function §-!_§(param1:DisplayObject) : void
      {
         param1.§-!_§(this.§4J§);
      }
      
      public function §4t§() : void
      {
         if(this.§>!j§.length < this.§4!l§ + 1)
         {
            this.§>!j§.push(new Matrix3D());
         }
         this.§>!j§[this.§4!l§++].copyFrom(this.§4J§);
      }
      
      public function §'n§() : void
      {
         this.§4J§.copyFrom(this.§>!j§[--this.§4!l§]);
      }
      
      public function §-!?§() : void
      {
         this.§4!l§ = 0;
         this.§!u§();
      }
      
      public function get §-P§() : Matrix3D
      {
         this.§3]§.identity();
         this.§3]§.append(this.§4J§);
         this.§3]§.append(this.§2H§);
         return this.§3]§;
      }
      
      public function batchQuad(param1:§7!J§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§^!,§.§[;§(param1,param3,param4,param2))
         {
            this.§7!A§();
         }
         this.§^!,§.§9!D§(param1,param2,param3,param4,this.§4J§);
      }
      
      public function §7!A§() : void
      {
         if(this.§^!,§.§9!F§ > 0)
         {
            this.§^!,§.render(this.§@2§,this.§2H§);
            this.§^!,§.reset();
            ++this.§'t§;
            if(this.§`"@§.length <= this.§'t§)
            {
               this.§`"@§.push(new §'Z§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§-!?§();
         this.§'t§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §^!,§() : §'Z§
      {
         return this.§`"@§[this.§'t§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §1U§[param2])
         {
            §1U§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §?I§)
         {
            §?I§ = param2;
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
