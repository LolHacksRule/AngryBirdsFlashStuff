package §-Z§
{
   import §3!$§.*;
   import §[P§.Texture;
   import §^V§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class § G§
   {
      
      private static var §&r§:Array;
      
      private static var §#!!§:Program3D;
      
      private static var §,!1§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var § do§:Matrix3D;
      
      private var §&s§:Matrix3D;
      
      private var §]!2§:Matrix3D;
      
      private var §>!§:Vector.<Matrix3D>;
      
      private var §>O§:int;
      
      private var §3N§:Vector.<§0o§>;
      
      private var §2n§:int;
      
      private var §9!9§:Context3D;
      
      private var §-4§:int = -1;
      
      public function § G§()
      {
         super();
         this.§ do§ = new Matrix3D();
         this.§&s§ = new Matrix3D();
         this.§]!2§ = new Matrix3D();
         this.§>!§ = new Vector.<Matrix3D>(0);
         this.§>O§ = 0;
         this.§2n§ = 0;
         this.§3N§ = new Vector.<§0o§>();
         if(§&r§ == null)
         {
            §&r§ = [];
         }
         this.§%<§();
         this.§0!%§(400,300);
         §?h§.§ n§.addEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
      }
      
      public static function §3T§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public static function §0r§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§5!6§.§get §(param2) / 255,§5!6§.§>c§(param2) / 255,§5!6§.§;!D§(param2) / 255,param3);
      }
      
      protected function get §1w§() : Matrix3D
      {
         return this.§&s§;
      }
      
      protected function get §[!E§() : Matrix3D
      {
         return this.§ do§;
      }
      
      public function §case§(param1:Context3D, param2:int) : void
      {
         this.§9!9§ = param1;
         this.§-4§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§9!9§;
      }
      
      public function get §@R§() : int
      {
         return this.§-4§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0o§ = null;
         for each(_loc1_ in this.§3N§)
         {
            _loc1_.dispose();
         }
         if(§?h§.§ n§)
         {
            §?h§.§ n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ ,§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§5!6§.§get §(param2) / 255,§5!6§.§>c§(param2) / 255,§5!6§.§;!D§(param2) / 255,param3);
      }
      
      private function § ,§(param1:Event) : void
      {
         this.§3N§ = new <§0o§>[new §0o§()];
      }
      
      public function §0!%§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §,!1§[0] = 2 / param1;
         §,!1§[1] = §,!1§[2] = §,!1§[3] = §,!1§[4] = 0;
         §,!1§[5] = -2 / param2;
         §,!1§[6] = §,!1§[7] = §,!1§[8] = §,!1§[9] = 0;
         §,!1§[10] = -2 / (param4 - param3);
         §,!1§[11] = 0;
         §,!1§[12] = -1;
         §,!1§[13] = 1;
         §,!1§[14] = -(param4 + param3) / (param4 - param3);
         §,!1§[15] = 1;
         this.§ do§.copyRawDataFrom(§,!1§);
      }
      
      public function §%<§() : void
      {
         this.§&s§.identity();
      }
      
      public function §9w§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§&s§.prependTranslation(param1,param2,param3);
      }
      
      public function §9!?§(param1:Number, param2:Vector3D = null) : void
      {
         this.§&s§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §2!!§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§&s§.prependScale(param1,param2,param3);
      }
      
      public function §&?§(param1:DisplayObject) : void
      {
         §3T§(this.§&s§,param1);
      }
      
      public function §%a§() : void
      {
         if(this.§>!§.length < this.§>O§ + 1)
         {
            this.§>!§.push(new Matrix3D());
         }
         this.§>!§[this.§>O§++].copyFrom(this.§&s§);
      }
      
      public function §?6§() : void
      {
         this.§&s§.copyFrom(this.§>!§[--this.§>O§]);
      }
      
      public function §3H§() : void
      {
         this.§>O§ = 0;
         this.§%<§();
      }
      
      public function get §4L§() : Matrix3D
      {
         this.§]!2§.identity();
         this.§]!2§.append(this.§&s§);
         this.§]!2§.append(this.§ do§);
         return this.§]!2§;
      }
      
      public function batchQuad(param1:§09§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§#!1§.§9J§(param1,param3,param4))
         {
            this.§ ]§();
         }
         this.§#!1§.§-h§(param1,param2,param3,param4,this.§&s§);
      }
      
      public function § ]§() : void
      {
         if(this.§#!1§.§%!,§ > 0)
         {
            this.§#!1§.render(this.context,this.§ do§);
            this.§#!1§.reset();
            ++this.§2n§;
            if(this.§3N§.length <= this.§2n§)
            {
               this.§3N§.push(new §0o§());
            }
         }
      }
      
      public function §3o§() : void
      {
         this.§3H§();
         this.§2n§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §#!1§() : §0o§
      {
         return this.§3N§[this.§2n§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §&r§[param2])
         {
            §&r§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §#!!§)
         {
            §#!!§ = param2;
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
