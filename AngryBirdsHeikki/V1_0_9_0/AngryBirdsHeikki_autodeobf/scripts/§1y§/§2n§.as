package §1y§
{
   import § 0§.Texture;
   import §"=§.*;
   import §#!f§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §2n§
   {
      
      private static var §with§:Array;
      
      private static var §0A§:Program3D;
      
      private static var §<>§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §4!V§:Matrix3D;
      
      private var §2H§:Matrix3D;
      
      private var §5D§:Matrix3D;
      
      private var §^!+§:Vector.<Matrix3D>;
      
      private var §9!§:int;
      
      private var §+j§:Vector.<§0!7§>;
      
      private var §8!O§:int;
      
      private var §'C§:Context3D;
      
      private var § !G§:int = -1;
      
      public function §2n§()
      {
         super();
         this.§4!V§ = new Matrix3D();
         this.§2H§ = new Matrix3D();
         this.§5D§ = new Matrix3D();
         this.§^!+§ = new Vector.<Matrix3D>(0);
         this.§9!§ = 0;
         this.§8!O§ = 0;
         this.§+j§ = new Vector.<§0!7§>();
         if(§with§ == null)
         {
            §with§ = [];
         }
         this.§%!f§();
         this.§8!=§(400,300);
         §&!B§.§^8§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!1§);
      }
      
      public static function §9!'§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§<b§(param1);
      }
      
      public static function §3!E§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§;!#§.§5!G§(param2) / 255,§;!#§.§]!f§(param2) / 255,§;!#§.§<!;§(param2) / 255,param3);
      }
      
      protected function get §2!1§() : Matrix3D
      {
         return this.§2H§;
      }
      
      protected function get §+S§() : Matrix3D
      {
         return this.§4!V§;
      }
      
      public function § !]§(param1:Context3D, param2:int) : void
      {
         this.§'C§ = param1;
         this.§ !G§ = param2;
      }
      
      public function get §#?§() : Context3D
      {
         return this.§'C§;
      }
      
      public function get §finally§() : int
      {
         return this.§ !G§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!7§ = null;
         for each(_loc1_ in this.§+j§)
         {
            _loc1_.dispose();
         }
         if(§&!B§.§^8§)
         {
            §&!B§.§^8§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!1§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§;!#§.§5!G§(param2) / 255,§;!#§.§]!f§(param2) / 255,§;!#§.§<!;§(param2) / 255,param3);
      }
      
      private function §#!1§(param1:Event) : void
      {
         this.§+j§ = new <§0!7§>[new §0!7§()];
      }
      
      public function §8!=§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §<>§[0] = 2 / param1;
         §<>§[1] = §<>§[2] = §<>§[3] = §<>§[4] = 0;
         §<>§[5] = -2 / param2;
         §<>§[6] = §<>§[7] = §<>§[8] = §<>§[9] = 0;
         §<>§[10] = -2 / (param4 - param3);
         §<>§[11] = 0;
         §<>§[12] = -1;
         §<>§[13] = 1;
         §<>§[14] = -(param4 + param3) / (param4 - param3);
         §<>§[15] = 1;
         this.§4!V§.copyRawDataFrom(§<>§);
      }
      
      public function §%!f§() : void
      {
         this.§2H§.identity();
      }
      
      public function §2!;§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§2H§.prependTranslation(param1,param2,param3);
      }
      
      public function §3!3§(param1:Number, param2:Vector3D = null) : void
      {
         this.§2H§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §=5§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§2H§.prependScale(param1,param2,param3);
      }
      
      public function §<b§(param1:DisplayObject) : void
      {
         param1.§<b§(this.§2H§);
      }
      
      public function §+!C§() : void
      {
         if(this.§^!+§.length < this.§9!§ + 1)
         {
            this.§^!+§.push(new Matrix3D());
         }
         this.§^!+§[this.§9!§++].copyFrom(this.§2H§);
      }
      
      public function §+d§() : void
      {
         this.§2H§.copyFrom(this.§^!+§[--this.§9!§]);
      }
      
      public function §>r§() : void
      {
         this.§9!§ = 0;
         this.§%!f§();
      }
      
      public function get §[E§() : Matrix3D
      {
         this.§5D§.identity();
         this.§5D§.append(this.§2H§);
         this.§5D§.append(this.§4!V§);
         return this.§5D§;
      }
      
      public function batchQuad(param1:§,!0§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§-!+§.§@!R§(param1,param3,param4))
         {
            this.§"_§();
         }
         this.§-!+§.§>a§(param1,param2,param3,param4,this.§2H§);
      }
      
      public function §"_§() : void
      {
         if(this.§-!+§.§&Y§ > 0)
         {
            this.§-!+§.render(this.§#?§,this.§4!V§);
            this.§-!+§.reset();
            ++this.§8!O§;
            if(this.§+j§.length <= this.§8!O§)
            {
               this.§+j§.push(new §0!7§());
            }
         }
      }
      
      public function §8$§() : void
      {
         this.§>r§();
         this.§8!O§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §-!+§() : §0!7§
      {
         return this.§+j§[this.§8!O§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §with§[param2])
         {
            §with§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §0A§)
         {
            §0A§ = param2;
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
