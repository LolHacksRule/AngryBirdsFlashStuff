package §3",§
{
   import §!p§.*;
   import §@!i§.*;
   import §^Q§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'5§
   {
      
      private static var §`"8§:Array;
      
      private static var §0J§:Program3D;
      
      private static var §1!L§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §3L§:Matrix3D;
      
      private var §^J§:Matrix3D;
      
      private var §"!G§:Matrix3D;
      
      private var §2!o§:Vector.<Matrix3D>;
      
      private var §8w§:int;
      
      private var §7Z§:Vector.<§;D§>;
      
      private var §4!J§:int;
      
      private var §8!H§:Context3D;
      
      private var §4",§:int = -1;
      
      public function §'5§()
      {
         super();
         this.§3L§ = new Matrix3D();
         this.§^J§ = new Matrix3D();
         this.§"!G§ = new Matrix3D();
         this.§2!o§ = new Vector.<Matrix3D>(0);
         this.§8w§ = 0;
         this.§4!J§ = 0;
         this.§7Z§ = new Vector.<§;D§>();
         if(§`"8§ == null)
         {
            §`"8§ = [];
         }
         this.§?G§();
         this.§ C§(400,300);
         §0"<§.§<?§.addEventListener(Event.CONTEXT3D_CREATE,this.§9!g§);
      }
      
      public static function §9!f§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§<!S§(param1);
      }
      
      public static function §5"-§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§=!Z§.§;R§(param2) / 255,§=!Z§.§9!U§(param2) / 255,§=!Z§.§"!X§(param2) / 255,param3);
      }
      
      protected function get §?,§() : Matrix3D
      {
         return this.§^J§;
      }
      
      protected function get §0!x§() : Matrix3D
      {
         return this.§3L§;
      }
      
      public function §%!3§(param1:Context3D, param2:int) : void
      {
         this.§8!H§ = param1;
         this.§4",§ = param2;
      }
      
      public function get §5!^§() : Context3D
      {
         return this.§8!H§;
      }
      
      public function get §2G§() : int
      {
         return this.§4",§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§;D§ = null;
         for each(_loc1_ in this.§7Z§)
         {
            _loc1_.dispose();
         }
         if(§0"<§.§<?§)
         {
            §0"<§.§<?§.removeEventListener(Event.CONTEXT3D_CREATE,this.§9!g§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§=!Z§.§;R§(param2) / 255,§=!Z§.§9!U§(param2) / 255,§=!Z§.§"!X§(param2) / 255,param3);
      }
      
      private function §9!g§(param1:Event) : void
      {
         this.§7Z§ = new <§;D§>[new §;D§()];
      }
      
      public function § C§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §1!L§[0] = 2 / param1;
         §1!L§[1] = §1!L§[2] = §1!L§[3] = §1!L§[4] = 0;
         §1!L§[5] = -2 / param2;
         §1!L§[6] = §1!L§[7] = §1!L§[8] = §1!L§[9] = 0;
         §1!L§[10] = -2 / (param4 - param3);
         §1!L§[11] = 0;
         §1!L§[12] = -1;
         §1!L§[13] = 1;
         §1!L§[14] = -(param4 + param3) / (param4 - param3);
         §1!L§[15] = 1;
         this.§3L§.copyRawDataFrom(§1!L§);
      }
      
      public function §?G§() : void
      {
         this.§^J§.identity();
      }
      
      public function §24§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§^J§.prependTranslation(param1,param2,param3);
      }
      
      public function §[!n§(param1:Number, param2:Vector3D = null) : void
      {
         this.§^J§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §-!7§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§^J§.prependScale(param1,param2,param3);
      }
      
      public function §<!S§(param1:DisplayObject) : void
      {
         param1.§<!S§(this.§^J§);
      }
      
      public function §=N§() : void
      {
         if(this.§2!o§.length < this.§8w§ + 1)
         {
            this.§2!o§.push(new Matrix3D());
         }
         this.§2!o§[this.§8w§++].copyFrom(this.§^J§);
      }
      
      public function §;"'§() : void
      {
         this.§^J§.copyFrom(this.§2!o§[--this.§8w§]);
      }
      
      public function §5!O§() : void
      {
         this.§8w§ = 0;
         this.§?G§();
      }
      
      public function get §%o§() : Matrix3D
      {
         this.§"!G§.identity();
         this.§"!G§.append(this.§^J§);
         this.§"!G§.append(this.§3L§);
         return this.§"!G§;
      }
      
      public function batchQuad(param1:§'!a§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§;1§.§%f§(param1,param3,param4))
         {
            this.§+!P§();
         }
         this.§;1§.§2"0§(param1,param2,param3,param4,this.§^J§);
      }
      
      public function §+!P§() : void
      {
         if(this.§;1§.§'M§ > 0)
         {
            this.§;1§.render(this.§5!^§,this.§3L§);
            this.§;1§.reset();
            ++this.§4!J§;
            if(this.§7Z§.length <= this.§4!J§)
            {
               this.§7Z§.push(new §;D§());
            }
         }
      }
      
      public function §""4§() : void
      {
         this.§5!O§();
         this.§4!J§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §;1§() : §;D§
      {
         return this.§7Z§[this.§4!J§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §`"8§[param2])
         {
            §`"8§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §0J§)
         {
            §0J§ = param2;
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
