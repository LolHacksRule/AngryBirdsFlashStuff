package §7W§
{
   import §!!R§.*;
   import §2k§.Texture;
   import §<!M§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §4!8§
   {
      
      private static var §0%§:Array;
      
      private static var §!4§:Program3D;
      
      private static var §]f§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §%L§:Matrix3D;
      
      private var §=7§:Matrix3D;
      
      private var §throw§:Matrix3D;
      
      private var §%Q§:Vector.<Matrix3D>;
      
      private var §?y§:int;
      
      private var §`I§:Vector.<§[C§>;
      
      private var §^p§:int;
      
      private var §"-§:Context3D;
      
      private var §5M§:int = -1;
      
      public function §4!8§()
      {
         super();
         this.§%L§ = new Matrix3D();
         this.§=7§ = new Matrix3D();
         this.§throw§ = new Matrix3D();
         this.§%Q§ = new Vector.<Matrix3D>(0);
         this.§?y§ = 0;
         this.§^p§ = 0;
         this.§`I§ = new Vector.<§[C§>();
         if(§0%§ == null)
         {
            §0%§ = [];
         }
         this.§6!E§();
         this.§=6§(400,300);
         § !+§.§ Z§.addEventListener(Event.CONTEXT3D_CREATE,this.§>D§);
      }
      
      public static function §8!L§(param1:Matrix3D, param2:DisplayObject) : void
      {
         var _loc3_:Number = param2.x;
         var _loc4_:Number = param2.y;
         var _loc5_:Number = param2.rotation;
         var _loc6_:Number = param2.scaleX;
         var _loc7_:Number = param2.scaleY;
         var _loc8_:Number = param2.pivotX;
         var _loc9_:Number = param2.pivotY;
         if(_loc5_ == 0 && _loc6_ == 1 && _loc7_ == 1)
         {
            param1.prependTranslation(_loc3_ + _loc8_,_loc4_ + _loc9_,0);
         }
         else
         {
            if(_loc3_ != 0 || _loc4_ != 0)
            {
               param1.prependTranslation(_loc3_,_loc4_,0);
            }
            if(_loc5_ != 0)
            {
               param1.prependRotation(_loc5_ / Math.PI * 180,Vector3D.Z_AXIS);
            }
            if(_loc6_ != 1 || _loc7_ != 1)
            {
               param1.prependScale(_loc6_,_loc7_,1);
            }
            if(_loc8_ != 0 || _loc9_ != 0)
            {
               param1.prependTranslation(_loc8_,_loc9_,0);
            }
         }
      }
      
      public static function §7!7§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3!Z§.§0#§(param2) / 255,§3!Z§.§!!P§(param2) / 255,§3!Z§.§"!@§(param2) / 255,param3);
      }
      
      protected function get §#!"§() : Matrix3D
      {
         return this.§=7§;
      }
      
      protected function get §'! §() : Matrix3D
      {
         return this.§%L§;
      }
      
      public function §2<§(param1:Context3D, param2:int) : void
      {
         this.§"-§ = param1;
         this.§5M§ = param2;
      }
      
      public function get §+!T§() : Context3D
      {
         return this.§"-§;
      }
      
      public function get §9!>§() : int
      {
         return this.§5M§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[C§ = null;
         for each(_loc1_ in this.§`I§)
         {
            _loc1_.dispose();
         }
         § !+§.§ Z§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>D§);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3!Z§.§0#§(param2) / 255,§3!Z§.§!!P§(param2) / 255,§3!Z§.§"!@§(param2) / 255,param3);
      }
      
      private function §>D§(param1:Event) : void
      {
         this.§`I§ = new <§[C§>[new §[C§()];
      }
      
      public function §=6§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §]f§[0] = 2 / param1;
         §]f§[1] = §]f§[2] = §]f§[3] = §]f§[4] = 0;
         §]f§[5] = -2 / param2;
         §]f§[6] = §]f§[7] = §]f§[8] = §]f§[9] = 0;
         §]f§[10] = -2 / (param4 - param3);
         §]f§[11] = 0;
         §]f§[12] = -1;
         §]f§[13] = 1;
         §]f§[14] = -(param4 + param3) / (param4 - param3);
         §]f§[15] = 1;
         this.§%L§.copyRawDataFrom(§]f§);
      }
      
      public function §6!E§() : void
      {
         this.§=7§.identity();
      }
      
      public function §0!&§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§=7§.prependTranslation(param1,param2,param3);
      }
      
      public function §'?§(param1:Number, param2:Vector3D = null) : void
      {
         this.§=7§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §@!1§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§=7§.prependScale(param1,param2,param3);
      }
      
      public function §>]§(param1:DisplayObject) : void
      {
         §8!L§(this.§=7§,param1);
      }
      
      public function §`;§() : void
      {
         if(this.§%Q§.length < this.§?y§ + 1)
         {
            this.§%Q§.push(new Matrix3D());
         }
         this.§%Q§[this.§?y§++].copyFrom(this.§=7§);
      }
      
      public function § use§() : void
      {
         this.§=7§.copyFrom(this.§%Q§[--this.§?y§]);
      }
      
      public function §<!Z§() : void
      {
         this.§?y§ = 0;
         this.§6!E§();
      }
      
      public function get §4!<§() : Matrix3D
      {
         this.§throw§.identity();
         this.§throw§.append(this.§=7§);
         this.§throw§.append(this.§%L§);
         return this.§throw§;
      }
      
      public function batchQuad(param1:§^!4§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§9!'§.§!"§(param1,param3,param4))
         {
            this.§5!8§();
         }
         this.§9!'§.§3+§(param1,param2,param3,param4,this.§=7§);
      }
      
      public function §5!8§() : void
      {
         if(this.§9!'§.§!!C§ > 0)
         {
            this.§9!'§.render(this.§+!T§,this.§%L§);
            this.§9!'§.reset();
            ++this.§^p§;
            if(this.§`I§.length <= this.§^p§)
            {
               this.§`I§.push(new §[C§());
            }
         }
      }
      
      public function §3N§() : void
      {
         this.§<!Z§();
         this.§^p§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §9!'§() : §[C§
      {
         return this.§`I§[this.§^p§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §0%§[param2])
         {
            §0%§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §!4§)
         {
            §!4§ = param2;
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
