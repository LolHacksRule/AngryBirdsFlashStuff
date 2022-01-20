package §%%§
{
   import §&7§.Texture;
   import §>!a§.*;
   import §`!n§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §,!<§
   {
      
      private static var §+!^§:Array;
      
      private static var §,!%§:Program3D;
      
      private static var §#x§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §'!,§:Matrix3D;
      
      private var §-A§:Matrix3D;
      
      private var §<!j§:Matrix3D;
      
      private var §"!!§:Vector.<Matrix3D>;
      
      private var §5!3§:int;
      
      private var §9!C§:Vector.<§^!6§>;
      
      private var §,!@§:int;
      
      private var §<5§:Context3D;
      
      private var §?6§:int = -1;
      
      public function §,!<§()
      {
         super();
         this.§'!,§ = new Matrix3D();
         this.§-A§ = new Matrix3D();
         this.§<!j§ = new Matrix3D();
         this.§"!!§ = new Vector.<Matrix3D>(0);
         this.§5!3§ = 0;
         this.§,!@§ = 0;
         this.§9!C§ = new Vector.<§^!6§>();
         if(§+!^§ == null)
         {
            §+!^§ = [];
         }
         this.§@^§();
         this.§"P§(400,300);
         §3P§.§6_§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!i§);
      }
      
      public static function §1!7§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§&3§(param1);
      }
      
      public static function §&!R§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§%!c§.§1r§(param2) / 255,§%!c§.§^y§(param2) / 255,§%!c§.§?M§(param2) / 255,param3);
      }
      
      protected function get §1X§() : Matrix3D
      {
         return this.§-A§;
      }
      
      protected function get §%r§() : Matrix3D
      {
         return this.§'!,§;
      }
      
      public function §4!h§(param1:Context3D, param2:int) : void
      {
         this.§<5§ = param1;
         this.§?6§ = param2;
      }
      
      public function get §=!_§() : Context3D
      {
         return this.§<5§;
      }
      
      public function get §%,§() : int
      {
         return this.§?6§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^!6§ = null;
         for each(_loc1_ in this.§9!C§)
         {
            _loc1_.dispose();
         }
         if(§3P§.§6_§)
         {
            §3P§.§6_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!i§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§%!c§.§1r§(param2) / 255,§%!c§.§^y§(param2) / 255,§%!c§.§?M§(param2) / 255,param3);
      }
      
      private function §3!i§(param1:Event) : void
      {
         this.§9!C§ = new <§^!6§>[new §^!6§()];
      }
      
      public function §"P§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §#x§[0] = 2 / param1;
         §#x§[1] = §#x§[2] = §#x§[3] = §#x§[4] = 0;
         §#x§[5] = -2 / param2;
         §#x§[6] = §#x§[7] = §#x§[8] = §#x§[9] = 0;
         §#x§[10] = -2 / (param4 - param3);
         §#x§[11] = 0;
         §#x§[12] = -1;
         §#x§[13] = 1;
         §#x§[14] = -(param4 + param3) / (param4 - param3);
         §#x§[15] = 1;
         this.§'!,§.copyRawDataFrom(§#x§);
      }
      
      public function §@^§() : void
      {
         this.§-A§.identity();
      }
      
      public function § !&§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§-A§.prependTranslation(param1,param2,param3);
      }
      
      public function § %§(param1:Number, param2:Vector3D = null) : void
      {
         this.§-A§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §=C§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§-A§.prependScale(param1,param2,param3);
      }
      
      public function §&3§(param1:DisplayObject) : void
      {
         param1.§&3§(this.§-A§);
      }
      
      public function §9!i§() : void
      {
         if(this.§"!!§.length < this.§5!3§ + 1)
         {
            this.§"!!§.push(new Matrix3D());
         }
         this.§"!!§[this.§5!3§++].copyFrom(this.§-A§);
      }
      
      public function §6e§() : void
      {
         this.§-A§.copyFrom(this.§"!!§[--this.§5!3§]);
      }
      
      public function §!!p§() : void
      {
         this.§5!3§ = 0;
         this.§@^§();
      }
      
      public function get §"!^§() : Matrix3D
      {
         this.§<!j§.identity();
         this.§<!j§.append(this.§-A§);
         this.§<!j§.append(this.§'!,§);
         return this.§<!j§;
      }
      
      public function batchQuad(param1:§ !i§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§`F§.§[6§(param1,param3,param4,param2))
         {
            this.§@G§();
         }
         this.§`F§.§8g§(param1,param2,param3,param4,this.§-A§);
      }
      
      public function §@G§() : void
      {
         if(this.§`F§.§'!J§ > 0)
         {
            this.§`F§.render(this.§=!_§,this.§'!,§);
            this.§`F§.reset();
            ++this.§,!@§;
            if(this.§9!C§.length <= this.§,!@§)
            {
               this.§9!C§.push(new §^!6§());
            }
         }
      }
      
      public function §8_§() : void
      {
         this.§!!p§();
         this.§,!@§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §`F§() : §^!6§
      {
         return this.§9!C§[this.§,!@§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §+!^§[param2])
         {
            §+!^§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §,!%§)
         {
            §,!%§ = param2;
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
