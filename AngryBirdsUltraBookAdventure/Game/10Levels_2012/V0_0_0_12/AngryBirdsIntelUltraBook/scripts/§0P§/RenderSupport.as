package §0P§
{
   import §6!7§.*;
   import §7i§.Texture;
   import §8g§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class RenderSupport
   {
      
      private static var §5_§:Array;
      
      private static var §#!Z§:Program3D;
      
      private static var §?!f§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §<Q§:Matrix3D;
      
      private var §8q§:Matrix3D;
      
      private var §%?§:Matrix3D;
      
      private var §<4§:Vector.<Matrix3D>;
      
      private var §[!M§:int;
      
      private var §2!g§:Vector.<QuadBatch>;
      
      private var §'N§:int;
      
      private var §3!8§:Context3D;
      
      private var §[!@§:int = -1;
      
      public function RenderSupport()
      {
         super();
         this.§<Q§ = new Matrix3D();
         this.§8q§ = new Matrix3D();
         this.§%?§ = new Matrix3D();
         this.§<4§ = new Vector.<Matrix3D>(0);
         this.§[!M§ = 0;
         this.§'N§ = 0;
         this.§2!g§ = new Vector.<QuadBatch>();
         if(§5_§ == null)
         {
            §5_§ = [];
         }
         this.§;U§();
         this.§-!]§(400,300);
         Starling.§!!F§.addEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
      }
      
      public static function §`-§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§'d§(param1);
      }
      
      public static function §"6§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§2!E§.§6,§(param2) / 255,§2!E§.§3i§(param2) / 255,§2!E§.§7!@§(param2) / 255,param3);
      }
      
      protected function get §6!E§() : Matrix3D
      {
         return this.§8q§;
      }
      
      protected function get §]S§() : Matrix3D
      {
         return this.§<Q§;
      }
      
      public function §8!S§(param1:Context3D, param2:int) : void
      {
         this.§3!8§ = param1;
         this.§[!@§ = param2;
      }
      
      public function get §#F§() : Context3D
      {
         return this.§3!8§;
      }
      
      public function get §^!6§() : int
      {
         return this.§[!@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:QuadBatch = null;
         for each(_loc1_ in this.§2!g§)
         {
            _loc1_.dispose();
         }
         if(Starling.§!!F§)
         {
            Starling.§!!F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[D§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§2!E§.§6,§(param2) / 255,§2!E§.§3i§(param2) / 255,§2!E§.§7!@§(param2) / 255,param3);
      }
      
      private function §[D§(param1:Event) : void
      {
         this.§2!g§ = new <QuadBatch>[new QuadBatch()];
      }
      
      public function §-!]§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §?!f§[0] = 2 / param1;
         §?!f§[1] = §?!f§[2] = §?!f§[3] = §?!f§[4] = 0;
         §?!f§[5] = -2 / param2;
         §?!f§[6] = §?!f§[7] = §?!f§[8] = §?!f§[9] = 0;
         §?!f§[10] = -2 / (param4 - param3);
         §?!f§[11] = 0;
         §?!f§[12] = -1;
         §?!f§[13] = 1;
         §?!f§[14] = -(param4 + param3) / (param4 - param3);
         §?!f§[15] = 1;
         this.§<Q§.copyRawDataFrom(§?!f§);
      }
      
      public function §;U§() : void
      {
         this.§8q§.identity();
      }
      
      public function §]!-§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§8q§.prependTranslation(param1,param2,param3);
      }
      
      public function §#!8§(param1:Number, param2:Vector3D = null) : void
      {
         this.§8q§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §2g§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§8q§.prependScale(param1,param2,param3);
      }
      
      public function §'d§(param1:DisplayObject) : void
      {
         param1.§'d§(this.§8q§);
      }
      
      public function §;l§() : void
      {
         if(this.§<4§.length < this.§[!M§ + 1)
         {
            this.§<4§.push(new Matrix3D());
         }
         this.§<4§[this.§[!M§++].copyFrom(this.§8q§);
      }
      
      public function §7!G§() : void
      {
         this.§8q§.copyFrom(this.§<4§[--this.§[!M§]);
      }
      
      public function §!N§() : void
      {
         this.§[!M§ = 0;
         this.§;U§();
      }
      
      public function get §>!C§() : Matrix3D
      {
         this.§%?§.identity();
         this.§%?§.append(this.§8q§);
         this.§%?§.append(this.§<Q§);
         return this.§%?§;
      }
      
      public function batchQuad(param1:§3x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§%!$§.§&&§(param1,param3,param4))
         {
            this.§2^§();
         }
         this.§%!$§.§<!#§(param1,param2,param3,param4,this.§8q§);
      }
      
      public function §2^§() : void
      {
         if(this.§%!$§.§90§ > 0)
         {
            this.§%!$§.render(this.§#F§,this.§<Q§);
            this.§%!$§.reset();
            ++this.§'N§;
            if(this.§2!g§.length <= this.§'N§)
            {
               this.§2!g§.push(new QuadBatch());
            }
         }
      }
      
      public function §'!#§() : void
      {
         this.§!N§();
         this.§'N§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §%!$§() : QuadBatch
      {
         return this.§2!g§[this.§'N§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §5_§[param2])
         {
            §5_§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §#!Z§)
         {
            §#!Z§ = param2;
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
