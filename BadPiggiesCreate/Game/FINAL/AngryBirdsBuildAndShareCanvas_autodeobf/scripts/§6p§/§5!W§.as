package §6p§
{
   import §3W§.*;
   import §7R§.Texture;
   import §default§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §5!W§
   {
      
      private static var §@X§:Array;
      
      private static var §9!0§:Program3D;
      
      private static var §5!h§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §0"<§:Matrix3D;
      
      private var §=U§:Matrix3D;
      
      private var §1I§:Matrix3D;
      
      private var §?]§:Vector.<Matrix3D>;
      
      private var §%"5§:int;
      
      private var §3b§:Vector.<§50§>;
      
      private var §6!A§:int;
      
      private var §^V§:Context3D;
      
      private var §2!C§:int = -1;
      
      public function §5!W§()
      {
         super();
         this.§0"<§ = new Matrix3D();
         this.§=U§ = new Matrix3D();
         this.§1I§ = new Matrix3D();
         this.§?]§ = new Vector.<Matrix3D>(0);
         this.§%"5§ = 0;
         this.§6!A§ = 0;
         this.§3b§ = new Vector.<§50§>();
         if(§@X§ == null)
         {
            §@X§ = [];
         }
         this.§[!;§();
         this.§=]§(400,300);
         §?%§.§%b§.addEventListener(Event.CONTEXT3D_CREATE,this.§6h§);
      }
      
      public static function §<f§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§+U§(param1);
      }
      
      public static function §3"?§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§`!h§.§2!,§(param2) / 255,§`!h§.§`"<§(param2) / 255,§`!h§.§]&§(param2) / 255,param3);
      }
      
      protected function get §`!F§() : Matrix3D
      {
         return this.§=U§;
      }
      
      protected function get §@"'§() : Matrix3D
      {
         return this.§0"<§;
      }
      
      public function §>;§(param1:Context3D, param2:int) : void
      {
         this.§^V§ = param1;
         this.§2!C§ = param2;
      }
      
      public function get §`-§() : Context3D
      {
         return this.§^V§;
      }
      
      public function get §%!U§() : int
      {
         return this.§2!C§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§50§ = null;
         for each(_loc1_ in this.§3b§)
         {
            _loc1_.dispose();
         }
         if(§?%§.§%b§)
         {
            §?%§.§%b§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6h§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§`!h§.§2!,§(param2) / 255,§`!h§.§`"<§(param2) / 255,§`!h§.§]&§(param2) / 255,param3);
      }
      
      private function §6h§(param1:Event) : void
      {
         this.§3b§ = new <§50§>[new §50§()];
      }
      
      public function §=]§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §5!h§[0] = 2 / param1;
         §5!h§[1] = §5!h§[2] = §5!h§[3] = §5!h§[4] = 0;
         §5!h§[5] = -2 / param2;
         §5!h§[6] = §5!h§[7] = §5!h§[8] = §5!h§[9] = 0;
         §5!h§[10] = -2 / (param4 - param3);
         §5!h§[11] = 0;
         §5!h§[12] = -1;
         §5!h§[13] = 1;
         §5!h§[14] = -(param4 + param3) / (param4 - param3);
         §5!h§[15] = 1;
         this.§0"<§.copyRawDataFrom(§5!h§);
      }
      
      public function §[!;§() : void
      {
         this.§=U§.identity();
      }
      
      public function §&V§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§=U§.prependTranslation(param1,param2,param3);
      }
      
      public function §2"?§(param1:Number, param2:Vector3D = null) : void
      {
         this.§=U§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §2"7§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§=U§.prependScale(param1,param2,param3);
      }
      
      public function §+U§(param1:DisplayObject) : void
      {
         param1.§+U§(this.§=U§);
      }
      
      public function §[L§() : void
      {
         if(this.§?]§.length < this.§%"5§ + 1)
         {
            this.§?]§.push(new Matrix3D());
         }
         this.§?]§[this.§%"5§++].copyFrom(this.§=U§);
      }
      
      public function §]9§() : void
      {
         this.§=U§.copyFrom(this.§?]§[--this.§%"5§]);
      }
      
      public function §4!]§() : void
      {
         this.§%"5§ = 0;
         this.§[!;§();
      }
      
      public function get §[!3§() : Matrix3D
      {
         this.§1I§.identity();
         this.§1I§.append(this.§=U§);
         this.§1I§.append(this.§0"<§);
         return this.§1I§;
      }
      
      public function batchQuad(param1:§^$§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§3!!§.§5'§(param1,param3,param4))
         {
            this.§"F§();
         }
         this.§3!!§.§!"0§(param1,param2,param3,param4,this.§=U§);
      }
      
      public function §"F§() : void
      {
         if(this.§3!!§.§%a§ > 0)
         {
            this.§3!!§.render(this.§`-§,this.§0"<§);
            this.§3!!§.reset();
            ++this.§6!A§;
            if(this.§3b§.length <= this.§6!A§)
            {
               this.§3b§.push(new §50§());
            }
         }
      }
      
      public function §;!C§() : void
      {
         this.§4!]§();
         this.§6!A§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §3!!§() : §50§
      {
         return this.§3b§[this.§6!A§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §@X§[param2])
         {
            §@X§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §9!0§)
         {
            §9!0§ = param2;
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
