package §??§
{
   import §"X§.Texture;
   import §;^§.*;
   import §`8§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §!0§
   {
      
      private static var §1M§:Array;
      
      private static var §"!F§:Program3D;
      
      private static var §4!A§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §``§:Matrix3D;
      
      private var §5_§:Matrix3D;
      
      private var §=!?§:Matrix3D;
      
      private var §&!E§:Vector.<Matrix3D>;
      
      private var §]I§:int;
      
      private var §for §:Vector.<§'§>;
      
      private var §-!#§:int;
      
      private var §89§:Context3D;
      
      private var §1D§:int = -1;
      
      public function §!0§()
      {
         super();
         this.§``§ = new Matrix3D();
         this.§5_§ = new Matrix3D();
         this.§=!?§ = new Matrix3D();
         this.§&!E§ = new Vector.<Matrix3D>(0);
         this.§]I§ = 0;
         this.§-!#§ = 0;
         this.§for § = new Vector.<§'§>();
         if(§1M§ == null)
         {
            §1M§ = [];
         }
         this.§?!§();
         this.§]!M§(400,300);
         §5!@§.§8%§.addEventListener(Event.CONTEXT3D_CREATE,this.§5f§);
      }
      
      public static function §>x§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§=!7§(param1);
      }
      
      public static function §+!E§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§,&§.§^B§(param2) / 255,§,&§.§^!;§(param2) / 255,§,&§.§`!H§(param2) / 255,param3);
      }
      
      protected function get §2!>§() : Matrix3D
      {
         return this.§5_§;
      }
      
      protected function get §!9§() : Matrix3D
      {
         return this.§``§;
      }
      
      public function §4^§(param1:Context3D, param2:int) : void
      {
         this.§89§ = param1;
         this.§1D§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§89§;
      }
      
      public function get §8"§() : int
      {
         return this.§1D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'§ = null;
         for each(_loc1_ in this.§for §)
         {
            _loc1_.dispose();
         }
         if(§5!@§.§8%§)
         {
            §5!@§.§8%§.removeEventListener(Event.CONTEXT3D_CREATE,this.§5f§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§,&§.§^B§(param2) / 255,§,&§.§^!;§(param2) / 255,§,&§.§`!H§(param2) / 255,param3);
      }
      
      private function §5f§(param1:Event) : void
      {
         this.§for § = new <§'§>[new §'§()];
      }
      
      public function §]!M§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §4!A§[0] = 2 / param1;
         §4!A§[1] = §4!A§[2] = §4!A§[3] = §4!A§[4] = 0;
         §4!A§[5] = -2 / param2;
         §4!A§[6] = §4!A§[7] = §4!A§[8] = §4!A§[9] = 0;
         §4!A§[10] = -2 / (param4 - param3);
         §4!A§[11] = 0;
         §4!A§[12] = -1;
         §4!A§[13] = 1;
         §4!A§[14] = -(param4 + param3) / (param4 - param3);
         §4!A§[15] = 1;
         this.§``§.copyRawDataFrom(§4!A§);
      }
      
      public function §?!§() : void
      {
         this.§5_§.identity();
      }
      
      public function §!!?§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§5_§.prependTranslation(param1,param2,param3);
      }
      
      public function §!`§(param1:Number, param2:Vector3D = null) : void
      {
         this.§5_§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §#q§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§5_§.prependScale(param1,param2,param3);
      }
      
      public function §=!7§(param1:DisplayObject) : void
      {
         param1.§=!7§(this.§5_§);
      }
      
      public function §[S§() : void
      {
         if(this.§&!E§.length < this.§]I§ + 1)
         {
            this.§&!E§.push(new Matrix3D());
         }
         this.§&!E§[this.§]I§++].copyFrom(this.§5_§);
      }
      
      public function §!p§() : void
      {
         this.§5_§.copyFrom(this.§&!E§[--this.§]I§]);
      }
      
      public function §0z§() : void
      {
         this.§]I§ = 0;
         this.§?!§();
      }
      
      public function get §'X§() : Matrix3D
      {
         this.§=!?§.identity();
         this.§=!?§.append(this.§5_§);
         this.§=!?§.append(this.§``§);
         return this.§=!?§;
      }
      
      public function batchQuad(param1:§+a§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§9!4§.§[!#§(param1,param3,param4,param2))
         {
            this.§;x§();
         }
         this.§9!4§.§-&§(param1,param2,param3,param4,this.§5_§);
      }
      
      public function §;x§() : void
      {
         if(this.§9!4§.§17§ > 0)
         {
            this.§9!4§.render(this.context,this.§``§);
            this.§9!4§.reset();
            ++this.§-!#§;
            if(this.§for §.length <= this.§-!#§)
            {
               this.§for §.push(new §'§());
            }
         }
      }
      
      public function §2?§() : void
      {
         this.§0z§();
         this.§-!#§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §9!4§() : §'§
      {
         return this.§for §[this.§-!#§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §1M§[param2])
         {
            §1M§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §"!F§)
         {
            §"!F§ = param2;
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
