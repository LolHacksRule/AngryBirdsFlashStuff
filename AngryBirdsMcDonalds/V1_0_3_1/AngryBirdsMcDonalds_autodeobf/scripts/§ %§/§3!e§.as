package § %§
{
   import §&Y§.Texture;
   import §&c§.*;
   import §=G§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §3!e§
   {
      
      private static var §?0§:Array;
      
      private static var §"O§:Program3D;
      
      private static var § F§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §!V§:Matrix3D;
      
      private var §-!,§:Matrix3D;
      
      private var §,m§:Matrix3D;
      
      private var §^h§:Vector.<Matrix3D>;
      
      private var §0#§:int;
      
      private var §7u§:Vector.<§?!I§>;
      
      private var §[Z§:int;
      
      private var §%&§:Context3D;
      
      private var §[x§:int = -1;
      
      public function §3!e§()
      {
         super();
         this.§!V§ = new Matrix3D();
         this.§-!,§ = new Matrix3D();
         this.§,m§ = new Matrix3D();
         this.§^h§ = new Vector.<Matrix3D>(0);
         this.§0#§ = 0;
         this.§[Z§ = 0;
         this.§7u§ = new Vector.<§?!I§>();
         if(§?0§ == null)
         {
            §?0§ = [];
         }
         this.§"h§();
         this.§^X§(400,300);
         §`M§.§93§.addEventListener(Event.CONTEXT3D_CREATE,this.§[b§);
      }
      
      public static function §7'§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§=L§(param1);
      }
      
      public static function §-!6§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3!%§.§[s§(param2) / 255,§3!%§.§^!>§(param2) / 255,§3!%§.§=Q§(param2) / 255,param3);
      }
      
      protected function get §+J§() : Matrix3D
      {
         return this.§-!,§;
      }
      
      protected function get §+!&§() : Matrix3D
      {
         return this.§!V§;
      }
      
      public function §4!E§(param1:Context3D, param2:int) : void
      {
         this.§%&§ = param1;
         this.§[x§ = param2;
      }
      
      public function get § !L§() : Context3D
      {
         return this.§%&§;
      }
      
      public function get §6!O§() : int
      {
         return this.§[x§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!I§ = null;
         for each(_loc1_ in this.§7u§)
         {
            _loc1_.dispose();
         }
         if(§`M§.§93§)
         {
            §`M§.§93§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[b§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3!%§.§[s§(param2) / 255,§3!%§.§^!>§(param2) / 255,§3!%§.§=Q§(param2) / 255,param3);
      }
      
      private function §[b§(param1:Event) : void
      {
         this.§7u§ = new <§?!I§>[new §?!I§()];
      }
      
      public function §^X§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         § F§[0] = 2 / param1;
         § F§[1] = § F§[2] = § F§[3] = § F§[4] = 0;
         § F§[5] = -2 / param2;
         § F§[6] = § F§[7] = § F§[8] = § F§[9] = 0;
         § F§[10] = -2 / (param4 - param3);
         § F§[11] = 0;
         § F§[12] = -1;
         § F§[13] = 1;
         § F§[14] = -(param4 + param3) / (param4 - param3);
         § F§[15] = 1;
         this.§!V§.copyRawDataFrom(§ F§);
      }
      
      public function §"h§() : void
      {
         this.§-!,§.identity();
      }
      
      public function §8!T§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§-!,§.prependTranslation(param1,param2,param3);
      }
      
      public function §1!@§(param1:Number, param2:Vector3D = null) : void
      {
         this.§-!,§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §=T§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§-!,§.prependScale(param1,param2,param3);
      }
      
      public function §=L§(param1:DisplayObject) : void
      {
         param1.§=L§(this.§-!,§);
      }
      
      public function §#i§() : void
      {
         if(this.§^h§.length < this.§0#§ + 1)
         {
            this.§^h§.push(new Matrix3D());
         }
         this.§^h§[this.§0#§++].copyFrom(this.§-!,§);
      }
      
      public function §5!i§() : void
      {
         this.§-!,§.copyFrom(this.§^h§[--this.§0#§]);
      }
      
      public function §0h§() : void
      {
         this.§0#§ = 0;
         this.§"h§();
      }
      
      public function get §7!P§() : Matrix3D
      {
         this.§,m§.identity();
         this.§,m§.append(this.§-!,§);
         this.§,m§.append(this.§!V§);
         return this.§,m§;
      }
      
      public function batchQuad(param1:§2!]§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§6! §.§'<§(param1,param3,param4))
         {
            this.§ get§();
         }
         this.§6! §.§5!g§(param1,param2,param3,param4,this.§-!,§);
      }
      
      public function § get§() : void
      {
         if(this.§6! §.§>"§ > 0)
         {
            this.§6! §.render(this.§ !L§,this.§!V§);
            this.§6! §.reset();
            ++this.§[Z§;
            if(this.§7u§.length <= this.§[Z§)
            {
               this.§7u§.push(new §?!I§());
            }
         }
      }
      
      public function §7j§() : void
      {
         this.§0h§();
         this.§[Z§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §6! §() : §?!I§
      {
         return this.§7u§[this.§[Z§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §?0§[param2])
         {
            §?0§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §"O§)
         {
            §"O§ = param2;
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
