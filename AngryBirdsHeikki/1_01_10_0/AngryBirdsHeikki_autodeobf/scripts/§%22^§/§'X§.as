package §"^§
{
   import §2Y§.*;
   import §=9§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'X§
   {
      
      private static var §`<§:Array;
      
      private static var §0+§:Program3D;
      
      private static var §3!H§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §8!O§:Matrix3D;
      
      private var § Y§:Matrix3D;
      
      private var §9!P§:Matrix3D;
      
      private var §9!c§:Vector.<Matrix3D>;
      
      private var §!"§:int;
      
      private var §[!I§:Vector.<§2v§>;
      
      private var §;_§:int;
      
      private var §<!U§:Context3D;
      
      private var §1!G§:int = -1;
      
      public function §'X§()
      {
         super();
         this.§8!O§ = new Matrix3D();
         this.§ Y§ = new Matrix3D();
         this.§9!P§ = new Matrix3D();
         this.§9!c§ = new Vector.<Matrix3D>(0);
         this.§!"§ = 0;
         this.§;_§ = 0;
         this.§[!I§ = new Vector.<§2v§>();
         if(§`<§ == null)
         {
            §`<§ = [];
         }
         this.§4X§();
         this.§1!9§(400,300);
         §+!'§.§2d§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!c§);
      }
      
      public static function §`U§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§6!W§(param1);
      }
      
      public static function §"W§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§>!<§.§;!6§(param2) / 255,§>!<§.§4u§(param2) / 255,§>!<§.§`5§(param2) / 255,param3);
      }
      
      protected function get §1U§() : Matrix3D
      {
         return this.§ Y§;
      }
      
      protected function get §4! §() : Matrix3D
      {
         return this.§8!O§;
      }
      
      public function §4B§(param1:Context3D, param2:int) : void
      {
         this.§<!U§ = param1;
         this.§1!G§ = param2;
      }
      
      public function get §&!8§() : Context3D
      {
         return this.§<!U§;
      }
      
      public function get §^!G§() : int
      {
         return this.§1!G§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§2v§ = null;
         for each(_loc1_ in this.§[!I§)
         {
            _loc1_.dispose();
         }
         if(§+!'§.§2d§)
         {
            §+!'§.§2d§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!c§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§>!<§.§;!6§(param2) / 255,§>!<§.§4u§(param2) / 255,§>!<§.§`5§(param2) / 255,param3);
      }
      
      private function §3!c§(param1:Event) : void
      {
         this.§[!I§ = new <§2v§>[new §2v§()];
      }
      
      public function §1!9§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §3!H§[0] = 2 / param1;
         §3!H§[1] = §3!H§[2] = §3!H§[3] = §3!H§[4] = 0;
         §3!H§[5] = -2 / param2;
         §3!H§[6] = §3!H§[7] = §3!H§[8] = §3!H§[9] = 0;
         §3!H§[10] = -2 / (param4 - param3);
         §3!H§[11] = 0;
         §3!H§[12] = -1;
         §3!H§[13] = 1;
         §3!H§[14] = -(param4 + param3) / (param4 - param3);
         §3!H§[15] = 1;
         this.§8!O§.copyRawDataFrom(§3!H§);
      }
      
      public function §4X§() : void
      {
         this.§ Y§.identity();
      }
      
      public function §9s§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§ Y§.prependTranslation(param1,param2,param3);
      }
      
      public function §7!L§(param1:Number, param2:Vector3D = null) : void
      {
         this.§ Y§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §5!R§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§ Y§.prependScale(param1,param2,param3);
      }
      
      public function §6!W§(param1:DisplayObject) : void
      {
         param1.§6!W§(this.§ Y§);
      }
      
      public function §7!]§() : void
      {
         if(this.§9!c§.length < this.§!"§ + 1)
         {
            this.§9!c§.push(new Matrix3D());
         }
         this.§9!c§[this.§!"§++].copyFrom(this.§ Y§);
      }
      
      public function §1P§() : void
      {
         this.§ Y§.copyFrom(this.§9!c§[--this.§!"§]);
      }
      
      public function §'!c§() : void
      {
         this.§!"§ = 0;
         this.§4X§();
      }
      
      public function get §0K§() : Matrix3D
      {
         this.§9!P§.identity();
         this.§9!P§.append(this.§ Y§);
         this.§9!P§.append(this.§8!O§);
         return this.§9!P§;
      }
      
      public function batchQuad(param1:§7?§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§[C§.§?!=§(param1,param3,param4))
         {
            this.§;!S§();
         }
         this.§[C§.§>[§(param1,param2,param3,param4,this.§ Y§);
      }
      
      public function §;!S§() : void
      {
         if(this.§[C§.§8!&§ > 0)
         {
            this.§[C§.render(this.§&!8§,this.§8!O§);
            this.§[C§.reset();
            ++this.§;_§;
            if(this.§[!I§.length <= this.§;_§)
            {
               this.§[!I§.push(new §2v§());
            }
         }
      }
      
      public function §extends§() : void
      {
         this.§'!c§();
         this.§;_§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §[C§() : §2v§
      {
         return this.§[!I§[this.§;_§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §`<§[param2])
         {
            §`<§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §0+§)
         {
            §0+§ = param2;
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
