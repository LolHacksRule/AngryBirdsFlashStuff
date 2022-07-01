package §@!X§
{
   import §-!`§.*;
   import §0!-§.Texture;
   import §6x§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §"W§
   {
      
      private static var §"!f§:Array;
      
      private static var §[!-§:Program3D;
      
      private static var §??§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §use§:Matrix3D;
      
      private var §=!$§:Matrix3D;
      
      private var §0!2§:Matrix3D;
      
      private var §+P§:Vector.<Matrix3D>;
      
      private var §;!a§:int;
      
      private var §!s§:Vector.<§#L§>;
      
      private var §1!u§:int;
      
      private var §>!L§:Context3D;
      
      private var §+p§:int = -1;
      
      public function §"W§()
      {
         super();
         this.§use§ = new Matrix3D();
         this.§=!$§ = new Matrix3D();
         this.§0!2§ = new Matrix3D();
         this.§+P§ = new Vector.<Matrix3D>(0);
         this.§;!a§ = 0;
         this.§1!u§ = 0;
         this.§!s§ = new Vector.<§#L§>();
         if(§"!f§ == null)
         {
            §"!f§ = [];
         }
         this.§%C§();
         this.§@>§(400,300);
         §7j§.§else§.addEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
      }
      
      public static function §'!&§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public static function §"!b§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§!!Y§.§&!;§(param2) / 255,§!!Y§.§?!^§(param2) / 255,§!!Y§.§3]§(param2) / 255,param3);
      }
      
      protected function get §]N§() : Matrix3D
      {
         return this.§=!$§;
      }
      
      protected function get §@^§() : Matrix3D
      {
         return this.§use§;
      }
      
      public function §#!8§(param1:Context3D, param2:int) : void
      {
         this.§>!L§ = param1;
         this.§+p§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§>!L§;
      }
      
      public function get §>!a§() : int
      {
         return this.§+p§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§#L§ = null;
         for each(_loc1_ in this.§!s§)
         {
            _loc1_.dispose();
         }
         if(§7j§.§else§)
         {
            §7j§.§else§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=!S§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§!!Y§.§&!;§(param2) / 255,§!!Y§.§?!^§(param2) / 255,§!!Y§.§3]§(param2) / 255,param3);
      }
      
      private function §=!S§(param1:Event) : void
      {
         this.§!s§ = new <§#L§>[new §#L§()];
      }
      
      public function §@>§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §??§[0] = 2 / param1;
         §??§[1] = §??§[2] = §??§[3] = §??§[4] = 0;
         §??§[5] = -2 / param2;
         §??§[6] = §??§[7] = §??§[8] = §??§[9] = 0;
         §??§[10] = -2 / (param4 - param3);
         §??§[11] = 0;
         §??§[12] = -1;
         §??§[13] = 1;
         §??§[14] = -(param4 + param3) / (param4 - param3);
         §??§[15] = 1;
         this.§use§.copyRawDataFrom(§??§);
      }
      
      public function §%C§() : void
      {
         this.§=!$§.identity();
      }
      
      public function §,q§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§=!$§.prependTranslation(param1,param2,param3);
      }
      
      public function §6G§(param1:Number, param2:Vector3D = null) : void
      {
         this.§=!$§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §4y§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§=!$§.prependScale(param1,param2,param3);
      }
      
      public function §<N§(param1:DisplayObject) : void
      {
         §'!&§(this.§=!$§,param1);
      }
      
      public function § !^§() : void
      {
         if(this.§+P§.length < this.§;!a§ + 1)
         {
            this.§+P§.push(new Matrix3D());
         }
         this.§+P§[this.§;!a§++].copyFrom(this.§=!$§);
      }
      
      public function §-%§() : void
      {
         this.§=!$§.copyFrom(this.§+P§[--this.§;!a§]);
      }
      
      public function §+!n§() : void
      {
         this.§;!a§ = 0;
         this.§%C§();
      }
      
      public function get §7!0§() : Matrix3D
      {
         this.§0!2§.identity();
         this.§0!2§.append(this.§=!$§);
         this.§0!2§.append(this.§use§);
         return this.§0!2§;
      }
      
      public function batchQuad(param1:§8!p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§'#§.§2D§(param1,param3,param4))
         {
            this.§<Q§();
         }
         this.§'#§.§[!9§(param1,param2,param3,param4,this.§=!$§);
      }
      
      public function §<Q§() : void
      {
         if(this.§'#§.§1!Z§ > 0)
         {
            this.§'#§.render(this.context,this.§use§);
            this.§'#§.reset();
            ++this.§1!u§;
            if(this.§!s§.length <= this.§1!u§)
            {
               this.§!s§.push(new §#L§());
            }
         }
      }
      
      public function §5!k§() : void
      {
         this.§+!n§();
         this.§1!u§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §'#§() : §#L§
      {
         return this.§!s§[this.§1!u§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §"!f§[param2])
         {
            §"!f§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §[!-§)
         {
            §[!-§ = param2;
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
