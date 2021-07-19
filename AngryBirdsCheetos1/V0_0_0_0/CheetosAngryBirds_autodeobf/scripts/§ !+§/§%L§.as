package § !+§
{
   import §2!-§.Texture;
   import §<!M§.*;
   import §`a§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §%L§
   {
      
      private static var §!4§:Array;
      
      private static var §]f§:Program3D;
      
      private static var §8!L§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §=7§:Matrix3D;
      
      private var §throw§:Matrix3D;
      
      private var §%Q§:Matrix3D;
      
      private var §?y§:Vector.<Matrix3D>;
      
      private var §`I§:int;
      
      private var §^p§:Vector.<§!!Q§>;
      
      private var §"-§:int;
      
      private var §5M§:Context3D;
      
      private var §#!"§:int = -1;
      
      public function §%L§()
      {
         super();
         this.§=7§ = new Matrix3D();
         this.§throw§ = new Matrix3D();
         this.§%Q§ = new Matrix3D();
         this.§?y§ = new Vector.<Matrix3D>(0);
         this.§`I§ = 0;
         this.§"-§ = 0;
         this.§^p§ = new Vector.<§!!Q§>();
         if(§!4§ == null)
         {
            §!4§ = [];
         }
         this.§0!&§();
         this.§6!E§(400,300);
         §0Z§.§4J§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!%§);
      }
      
      public static function §7!7§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public static function § !;§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3!Z§.§0#§(param2) / 255,§3!Z§.§!!P§(param2) / 255,§3!Z§.§"!@§(param2) / 255,param3);
      }
      
      protected function get §'! §() : Matrix3D
      {
         return this.§throw§;
      }
      
      protected function get §2<§() : Matrix3D
      {
         return this.§=7§;
      }
      
      public function §+!T§(param1:Context3D, param2:int) : void
      {
         this.§5M§ = param1;
         this.§#!"§ = param2;
      }
      
      public function get §9!>§() : Context3D
      {
         return this.§5M§;
      }
      
      public function get §=6§() : int
      {
         return this.§#!"§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!!Q§ = null;
         for each(_loc1_ in this.§^p§)
         {
            _loc1_.dispose();
         }
         §0Z§.§4J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!%§);
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3!Z§.§0#§(param2) / 255,§3!Z§.§!!P§(param2) / 255,§3!Z§.§"!@§(param2) / 255,param3);
      }
      
      private function §3!%§(param1:Event) : void
      {
         this.§^p§ = new <§!!Q§>[new §!!Q§()];
      }
      
      public function §6!E§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §8!L§[0] = 2 / param1;
         §8!L§[1] = §8!L§[2] = §8!L§[3] = §8!L§[4] = 0;
         §8!L§[5] = -2 / param2;
         §8!L§[6] = §8!L§[7] = §8!L§[8] = §8!L§[9] = 0;
         §8!L§[10] = -2 / (param4 - param3);
         §8!L§[11] = 0;
         §8!L§[12] = -1;
         §8!L§[13] = 1;
         §8!L§[14] = -(param4 + param3) / (param4 - param3);
         §8!L§[15] = 1;
         this.§=7§.copyRawDataFrom(§8!L§);
      }
      
      public function §0!&§() : void
      {
         this.§throw§.identity();
      }
      
      public function §'?§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§throw§.prependTranslation(param1,param2,param3);
      }
      
      public function §@!1§(param1:Number, param2:Vector3D = null) : void
      {
         this.§throw§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §>]§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§throw§.prependScale(param1,param2,param3);
      }
      
      public function §`;§(param1:DisplayObject) : void
      {
         §7!7§(this.§throw§,param1);
      }
      
      public function § use§() : void
      {
         if(this.§?y§.length < this.§`I§ + 1)
         {
            this.§?y§.push(new Matrix3D());
         }
         this.§?y§[this.§`I§++].copyFrom(this.§throw§);
      }
      
      public function §<!Z§() : void
      {
         this.§throw§.copyFrom(this.§?y§[--this.§`I§]);
      }
      
      public function §4!<§() : void
      {
         this.§`I§ = 0;
         this.§0!&§();
      }
      
      public function get §5!8§() : Matrix3D
      {
         this.§%Q§.identity();
         this.§%Q§.append(this.§throw§);
         this.§%Q§.append(this.§=7§);
         return this.§%Q§;
      }
      
      public function batchQuad(param1:§?!N§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§0%§.§56§(param1,param3,param4))
         {
            this.§3N§();
         }
         this.§0%§.§!"§(param1,param2,param3,param4,this.§throw§);
      }
      
      public function §3N§() : void
      {
         if(this.§0%§.§^s§ > 0)
         {
            this.§0%§.render(this.§9!>§,this.§=7§);
            this.§0%§.reset();
            ++this.§"-§;
            if(this.§^p§.length <= this.§"-§)
            {
               this.§^p§.push(new §!!Q§());
            }
         }
      }
      
      public function §9!'§() : void
      {
         this.§4!<§();
         this.§"-§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §0%§() : §!!Q§
      {
         return this.§^p§[this.§"-§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §!4§[param2])
         {
            §!4§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §]f§)
         {
            §]f§ = param2;
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
