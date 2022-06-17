package §'6§
{
   import §0!R§.Texture;
   import §1!$§.*;
   import §1V§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'"3§
   {
      
      private static var §8!%§:Array;
      
      private static var §8r§:Program3D;
      
      private static var §&!,§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §^B§:Matrix3D;
      
      private var §^@§:Matrix3D;
      
      private var §1i§:Matrix3D;
      
      private var §%A§:Vector.<Matrix3D>;
      
      private var §5"6§:int;
      
      private var §0K§:Vector.<§[!f§>;
      
      private var §8d§:int;
      
      private var §,!X§:Context3D;
      
      private var §!!#§:int = -1;
      
      public function §'"3§()
      {
         super();
         this.§^B§ = new Matrix3D();
         this.§^@§ = new Matrix3D();
         this.§1i§ = new Matrix3D();
         this.§%A§ = new Vector.<Matrix3D>(0);
         this.§5"6§ = 0;
         this.§8d§ = 0;
         this.§0K§ = new Vector.<§[!f§>();
         if(§8!%§ == null)
         {
            §8!%§ = [];
         }
         this.§<!A§();
         this.§="B§(400,300);
         §"]§.§!X§.addEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
      }
      
      public static function §?"0§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§@_§(param1);
      }
      
      public static function §4!0§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§-G§.§7_§(param2) / 255,§-G§.§9"<§(param2) / 255,§-G§.§8t§(param2) / 255,param3);
      }
      
      protected function get §3!T§() : Matrix3D
      {
         return this.§^@§;
      }
      
      protected function get §&!;§() : Matrix3D
      {
         return this.§^B§;
      }
      
      public function §7W§(param1:Context3D, param2:int) : void
      {
         this.§,!X§ = param1;
         this.§!!#§ = param2;
      }
      
      public function get §,§() : Context3D
      {
         return this.§,!X§;
      }
      
      public function get §2'§() : int
      {
         return this.§!!#§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[!f§ = null;
         for each(_loc1_ in this.§0K§)
         {
            _loc1_.dispose();
         }
         if(§"]§.§!X§)
         {
            §"]§.§!X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-""§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§-G§.§7_§(param2) / 255,§-G§.§9"<§(param2) / 255,§-G§.§8t§(param2) / 255,param3);
      }
      
      private function §-""§(param1:Event) : void
      {
         this.§0K§ = new <§[!f§>[new §[!f§()];
      }
      
      public function §="B§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §&!,§[0] = 2 / param1;
         §&!,§[1] = §&!,§[2] = §&!,§[3] = §&!,§[4] = 0;
         §&!,§[5] = -2 / param2;
         §&!,§[6] = §&!,§[7] = §&!,§[8] = §&!,§[9] = 0;
         §&!,§[10] = -2 / (param4 - param3);
         §&!,§[11] = 0;
         §&!,§[12] = -1;
         §&!,§[13] = 1;
         §&!,§[14] = -(param4 + param3) / (param4 - param3);
         §&!,§[15] = 1;
         this.§^B§.copyRawDataFrom(§&!,§);
      }
      
      public function §<!A§() : void
      {
         this.§^@§.identity();
      }
      
      public function §^";§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§^@§.prependTranslation(param1,param2,param3);
      }
      
      public function §@" §(param1:Number, param2:Vector3D = null) : void
      {
         this.§^@§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §&#§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§^@§.prependScale(param1,param2,param3);
      }
      
      public function §@_§(param1:DisplayObject) : void
      {
         param1.§@_§(this.§^@§);
      }
      
      public function §?h§() : void
      {
         if(this.§%A§.length < this.§5"6§ + 1)
         {
            this.§%A§.push(new Matrix3D());
         }
         this.§%A§[this.§5"6§++].copyFrom(this.§^@§);
      }
      
      public function §7""§() : void
      {
         this.§^@§.copyFrom(this.§%A§[--this.§5"6§]);
      }
      
      public function §#!T§() : void
      {
         this.§5"6§ = 0;
         this.§<!A§();
      }
      
      public function get §&b§() : Matrix3D
      {
         this.§1i§.identity();
         this.§1i§.append(this.§^@§);
         this.§1i§.append(this.§^B§);
         return this.§1i§;
      }
      
      public function batchQuad(param1:§!"?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§31§.§5!§(param1,param3,param4))
         {
            this.§-!=§();
         }
         this.§31§.§1x§(param1,param2,param3,param4,this.§^@§);
      }
      
      public function §-!=§() : void
      {
         if(this.§31§.§;!&§ > 0)
         {
            this.§31§.render(this.§,§,this.§^B§);
            this.§31§.reset();
            ++this.§8d§;
            if(this.§0K§.length <= this.§8d§)
            {
               this.§0K§.push(new §[!f§());
            }
         }
      }
      
      public function §]!<§() : void
      {
         this.§#!T§();
         this.§8d§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §31§() : §[!f§
      {
         return this.§0K§[this.§8d§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §8!%§[param2])
         {
            §8!%§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §8r§)
         {
            §8r§ = param2;
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
