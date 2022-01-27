package §2m§
{
   import §7H§.*;
   import §?]§.Texture;
   import §`g§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §@>§
   {
      
      private static var §6!7§:Array;
      
      private static var §5f§:Program3D;
      
      private static var §-!&§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §3k§:Matrix3D;
      
      private var §6Y§:Matrix3D;
      
      private var §,4§:Matrix3D;
      
      private var §=!'§:Vector.<Matrix3D>;
      
      private var § !a§:int;
      
      private var §2!g§:Vector.<§^[§>;
      
      private var §;O§:int;
      
      private var §&!t§:Context3D;
      
      private var §?!u§:int = -1;
      
      public function §@>§()
      {
         super();
         this.§3k§ = new Matrix3D();
         this.§6Y§ = new Matrix3D();
         this.§,4§ = new Matrix3D();
         this.§=!'§ = new Vector.<Matrix3D>(0);
         this.§ !a§ = 0;
         this.§;O§ = 0;
         this.§2!g§ = new Vector.<§^[§>();
         if(§6!7§ == null)
         {
            §6!7§ = [];
         }
         this.§3!e§();
         this.§;]§(400,300);
         §<!?§.§,=§.addEventListener(Event.CONTEXT3D_CREATE,this.§%!y§);
      }
      
      public static function §;!C§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§0!"§(param1);
      }
      
      public static function §?!I§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(include.§`#§(param2) / 255,include.§^9§(param2) / 255,include.§]7§(param2) / 255,param3);
      }
      
      protected function get §06§() : Matrix3D
      {
         return this.§6Y§;
      }
      
      protected function get §`!9§() : Matrix3D
      {
         return this.§3k§;
      }
      
      public function §3>§(param1:Context3D, param2:int) : void
      {
         this.§&!t§ = param1;
         this.§?!u§ = param2;
      }
      
      public function get §"Y§() : Context3D
      {
         return this.§&!t§;
      }
      
      public function get §9<§() : int
      {
         return this.§?!u§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^[§ = null;
         for each(_loc1_ in this.§2!g§)
         {
            _loc1_.dispose();
         }
         if(§<!?§.§,=§)
         {
            §<!?§.§,=§.removeEventListener(Event.CONTEXT3D_CREATE,this.§%!y§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(include.§`#§(param2) / 255,include.§^9§(param2) / 255,include.§]7§(param2) / 255,param3);
      }
      
      private function §%!y§(param1:Event) : void
      {
         this.§2!g§ = new <§^[§>[new §^[§()];
      }
      
      public function §;]§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §-!&§[0] = 2 / param1;
         §-!&§[1] = §-!&§[2] = §-!&§[3] = §-!&§[4] = 0;
         §-!&§[5] = -2 / param2;
         §-!&§[6] = §-!&§[7] = §-!&§[8] = §-!&§[9] = 0;
         §-!&§[10] = -2 / (param4 - param3);
         §-!&§[11] = 0;
         §-!&§[12] = -1;
         §-!&§[13] = 1;
         §-!&§[14] = -(param4 + param3) / (param4 - param3);
         §-!&§[15] = 1;
         this.§3k§.copyRawDataFrom(§-!&§);
      }
      
      public function §3!e§() : void
      {
         this.§6Y§.identity();
      }
      
      public function §"&§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§6Y§.prependTranslation(param1,param2,param3);
      }
      
      public function §;!N§(param1:Number, param2:Vector3D = null) : void
      {
         this.§6Y§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §+!?§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§6Y§.prependScale(param1,param2,param3);
      }
      
      public function §0!"§(param1:DisplayObject) : void
      {
         param1.§0!"§(this.§6Y§);
      }
      
      public function §4!s§() : void
      {
         if(this.§=!'§.length < this.§ !a§ + 1)
         {
            this.§=!'§.push(new Matrix3D());
         }
         this.§=!'§[this.§ !a§++].copyFrom(this.§6Y§);
      }
      
      public function §[Z§() : void
      {
         this.§6Y§.copyFrom(this.§=!'§[--this.§ !a§]);
      }
      
      public function §-h§() : void
      {
         this.§ !a§ = 0;
         this.§3!e§();
      }
      
      public function get §7w§() : Matrix3D
      {
         this.§,4§.identity();
         this.§,4§.append(this.§6Y§);
         this.§,4§.append(this.§3k§);
         return this.§,4§;
      }
      
      public function batchQuad(param1:§ O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§]t§.get(param1,param3,param4,param2))
         {
            this.§6E§();
         }
         this.§]t§.§>$§(param1,param2,param3,param4,this.§6Y§);
      }
      
      public function §6E§() : void
      {
         if(this.§]t§.§;!K§ > 0)
         {
            this.§]t§.render(this.§"Y§,this.§3k§);
            this.§]t§.reset();
            ++this.§;O§;
            if(this.§2!g§.length <= this.§;O§)
            {
               this.§2!g§.push(new §^[§());
            }
         }
      }
      
      public function §4!W§() : void
      {
         this.§-h§();
         this.§;O§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §]t§() : §^[§
      {
         return this.§2!g§[this.§;O§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §6!7§[param2])
         {
            §6!7§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §5f§)
         {
            §5f§ = param2;
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
