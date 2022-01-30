package §6!4§
{
   import §-!f§.*;
   import §7"+§.Texture;
   import §<C§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §8P§
   {
      
      private static var §2!Y§:Array;
      
      private static var §2P§:Program3D;
      
      private static var §%Z§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §[§:Matrix3D;
      
      private var §<=§:Matrix3D;
      
      private var §while§:Matrix3D;
      
      private var §9!V§:Vector.<Matrix3D>;
      
      private var §`"%§:int;
      
      private var §]V§:Vector.<§2!P§>;
      
      private var § !r§:int;
      
      private var §>I§:Context3D;
      
      private var §-e§:int = -1;
      
      public function §8P§()
      {
         super();
         this.§[§ = new Matrix3D();
         this.§<=§ = new Matrix3D();
         this.§while§ = new Matrix3D();
         this.§9!V§ = new Vector.<Matrix3D>(0);
         this.§`"%§ = 0;
         this.§ !r§ = 0;
         this.§]V§ = new Vector.<§2!P§>();
         if(§2!Y§ == null)
         {
            §2!Y§ = [];
         }
         this.§2!%§();
         this.§6D§(400,300);
         §<!D§.§?!_§.addEventListener(Event.CONTEXT3D_CREATE,this.§-!P§);
      }
      
      public static function §;J§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§+"#§(param1);
      }
      
      public static function §"!u§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§&L§.§4! §(param2) / 255,§&L§.§,!e§(param2) / 255,§&L§.§1<§(param2) / 255,param3);
      }
      
      protected function get §;"+§() : Matrix3D
      {
         return this.§<=§;
      }
      
      protected function get §57§() : Matrix3D
      {
         return this.§[§;
      }
      
      public function §+?§(param1:Context3D, param2:int) : void
      {
         this.§>I§ = param1;
         this.§-e§ = param2;
      }
      
      public function get §="%§() : Context3D
      {
         return this.§>I§;
      }
      
      public function get §7T§() : int
      {
         return this.§-e§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2!P§ = null;
         for each(_loc1_ in this.§]V§)
         {
            _loc1_.dispose();
         }
         if(§<!D§.§?!_§)
         {
            §<!D§.§?!_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-!P§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§&L§.§4! §(param2) / 255,§&L§.§,!e§(param2) / 255,§&L§.§1<§(param2) / 255,param3);
      }
      
      private function §-!P§(param1:Event) : void
      {
         this.§]V§ = new <§2!P§>[new §2!P§()];
      }
      
      public function §6D§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §%Z§[0] = 2 / param1;
         §%Z§[1] = §%Z§[2] = §%Z§[3] = §%Z§[4] = 0;
         §%Z§[5] = -2 / param2;
         §%Z§[6] = §%Z§[7] = §%Z§[8] = §%Z§[9] = 0;
         §%Z§[10] = -2 / (param4 - param3);
         §%Z§[11] = 0;
         §%Z§[12] = -1;
         §%Z§[13] = 1;
         §%Z§[14] = -(param4 + param3) / (param4 - param3);
         §%Z§[15] = 1;
         this.§[§.copyRawDataFrom(§%Z§);
      }
      
      public function §2!%§() : void
      {
         this.§<=§.identity();
      }
      
      public function §+d§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§<=§.prependTranslation(param1,param2,param3);
      }
      
      public function §-T§(param1:Number, param2:Vector3D = null) : void
      {
         this.§<=§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §4E§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§<=§.prependScale(param1,param2,param3);
      }
      
      public function §+"#§(param1:DisplayObject) : void
      {
         param1.§+"#§(this.§<=§);
      }
      
      public function §[!M§() : void
      {
         if(this.§9!V§.length < this.§`"%§ + 1)
         {
            this.§9!V§.push(new Matrix3D());
         }
         this.§9!V§[this.§`"%§++].copyFrom(this.§<=§);
      }
      
      public function §,3§() : void
      {
         this.§<=§.copyFrom(this.§9!V§[--this.§`"%§]);
      }
      
      public function §case§() : void
      {
         this.§`"%§ = 0;
         this.§2!%§();
      }
      
      public function get §&!o§() : Matrix3D
      {
         this.§while§.identity();
         this.§while§.append(this.§<=§);
         this.§while§.append(this.§[§);
         return this.§while§;
      }
      
      public function batchQuad(param1:§7!6§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§7[§.§@$§(param1,param3,param4,param2))
         {
            this.§^!@§();
         }
         this.§7[§.§&&§(param1,param2,param3,param4,this.§<=§);
      }
      
      public function §^!@§() : void
      {
         if(this.§7[§.§3!o§ > 0)
         {
            this.§7[§.render(this.§="%§,this.§[§);
            this.§7[§.reset();
            ++this.§ !r§;
            if(this.§]V§.length <= this.§ !r§)
            {
               this.§]V§.push(new §2!P§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§case§();
         this.§ !r§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §7[§() : §2!P§
      {
         return this.§]V§[this.§ !r§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §2!Y§[param2])
         {
            §2!Y§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §2P§)
         {
            §2P§ = param2;
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
