package §+"6§
{
   import §<L§.Texture;
   import §>!+§.*;
   import §]&§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §2!6§
   {
      
      private static var §,!A§:Array;
      
      private static var §get §:Program3D;
      
      private static var §;!>§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §4k§:Matrix3D;
      
      private var §`!@§:Matrix3D;
      
      private var §%!U§:Matrix3D;
      
      private var §%!+§:Vector.<Matrix3D>;
      
      private var §29§:int;
      
      private var §+'§:Vector.<§9"+§>;
      
      private var §"w§:int;
      
      private var §>!x§:Context3D;
      
      private var §2!K§:int = -1;
      
      public function §2!6§()
      {
         super();
         this.§4k§ = new Matrix3D();
         this.§`!@§ = new Matrix3D();
         this.§%!U§ = new Matrix3D();
         this.§%!+§ = new Vector.<Matrix3D>(0);
         this.§29§ = 0;
         this.§"w§ = 0;
         this.§+'§ = new Vector.<§9"+§>();
         if(§,!A§ == null)
         {
            §,!A§ = [];
         }
         this.§%![§();
         this.§%!k§(400,300);
         §5!H§.§%n§.addEventListener(Event.CONTEXT3D_CREATE,this.§0"<§);
      }
      
      public static function §,`§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§2!z§(param1);
      }
      
      public static function §`!O§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§73§.§>l§(param2) / 255,§73§.§]Q§(param2) / 255,§73§.§[D§(param2) / 255,param3);
      }
      
      protected function get §+!T§() : Matrix3D
      {
         return this.§`!@§;
      }
      
      protected function get §@-§() : Matrix3D
      {
         return this.§4k§;
      }
      
      public function §0x§(param1:Context3D, param2:int) : void
      {
         this.§>!x§ = param1;
         this.§2!K§ = param2;
      }
      
      public function get §&l§() : Context3D
      {
         return this.§>!x§;
      }
      
      public function get §`9§() : int
      {
         return this.§2!K§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9"+§ = null;
         for each(_loc1_ in this.§+'§)
         {
            _loc1_.dispose();
         }
         if(§5!H§.§%n§)
         {
            §5!H§.§%n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0"<§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§73§.§>l§(param2) / 255,§73§.§]Q§(param2) / 255,§73§.§[D§(param2) / 255,param3);
      }
      
      private function §0"<§(param1:Event) : void
      {
         this.§+'§ = new <§9"+§>[new §9"+§()];
      }
      
      public function §%!k§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §;!>§[0] = 2 / param1;
         §;!>§[1] = §;!>§[2] = §;!>§[3] = §;!>§[4] = 0;
         §;!>§[5] = -2 / param2;
         §;!>§[6] = §;!>§[7] = §;!>§[8] = §;!>§[9] = 0;
         §;!>§[10] = -2 / (param4 - param3);
         §;!>§[11] = 0;
         §;!>§[12] = -1;
         §;!>§[13] = 1;
         §;!>§[14] = -(param4 + param3) / (param4 - param3);
         §;!>§[15] = 1;
         this.§4k§.copyRawDataFrom(§;!>§);
      }
      
      public function §%![§() : void
      {
         this.§`!@§.identity();
      }
      
      public function §!V§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§`!@§.prependTranslation(param1,param2,param3);
      }
      
      public function §8"'§(param1:Number, param2:Vector3D = null) : void
      {
         this.§`!@§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §7v§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§`!@§.prependScale(param1,param2,param3);
      }
      
      public function §2!z§(param1:DisplayObject) : void
      {
         param1.§2!z§(this.§`!@§);
      }
      
      public function §@3§() : void
      {
         if(this.§%!+§.length < this.§29§ + 1)
         {
            this.§%!+§.push(new Matrix3D());
         }
         this.§%!+§[this.§29§++].copyFrom(this.§`!@§);
      }
      
      public function §6Y§() : void
      {
         this.§`!@§.copyFrom(this.§%!+§[--this.§29§]);
      }
      
      public function §6d§() : void
      {
         this.§29§ = 0;
         this.§%![§();
      }
      
      public function get § d§() : Matrix3D
      {
         this.§%!U§.identity();
         this.§%!U§.append(this.§`!@§);
         this.§%!U§.append(this.§4k§);
         return this.§%!U§;
      }
      
      public function batchQuad(param1:§[T§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§#L§.§<"@§(param1,param3,param4))
         {
            this.§1!P§();
         }
         this.§#L§.§'C§(param1,param2,param3,param4,this.§`!@§);
      }
      
      public function §1!P§() : void
      {
         if(this.§#L§.§^d§ > 0)
         {
            this.§#L§.render(this.§&l§,this.§4k§);
            this.§#L§.reset();
            ++this.§"w§;
            if(this.§+'§.length <= this.§"w§)
            {
               this.§+'§.push(new §9"+§());
            }
         }
      }
      
      public function §5!6§() : void
      {
         this.§6d§();
         this.§"w§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §#L§() : §9"+§
      {
         return this.§+'§[this.§"w§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §,!A§[param2])
         {
            §,!A§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §get §)
         {
            §get § = param2;
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
