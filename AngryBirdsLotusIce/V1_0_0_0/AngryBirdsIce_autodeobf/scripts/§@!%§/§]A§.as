package §@!%§
{
   import §%?§.Texture;
   import §5!3§.*;
   import §@!=§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §]A§
   {
      
      private static var §;!E§:Array;
      
      private static var §9#§:Program3D;
      
      private static var §<!6§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §%&§:Matrix3D;
      
      private var §'!2§:Matrix3D;
      
      private var §!K§:Matrix3D;
      
      private var §99§:Vector.<Matrix3D>;
      
      private var §-O§:int;
      
      private var §var §:Vector.<§0!4§>;
      
      private var § !G§:int;
      
      private var §"h§:Context3D;
      
      private var §9&§:int = -1;
      
      public function §]A§()
      {
         super();
         this.§%&§ = new Matrix3D();
         this.§'!2§ = new Matrix3D();
         this.§!K§ = new Matrix3D();
         this.§99§ = new Vector.<Matrix3D>(0);
         this.§-O§ = 0;
         this.§ !G§ = 0;
         this.§var § = new Vector.<§0!4§>();
         if(§;!E§ == null)
         {
            §;!E§ = [];
         }
         this.§'!@§();
         this.§"!;§(400,300);
         §+8§.§-2§.addEventListener(Event.CONTEXT3D_CREATE,this.§`4§);
      }
      
      public static function §48§(param1:Matrix3D, param2:DisplayObject) : void
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
      
      public static function §@L§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§%F§.§%!8§(param2) / 255,§%F§.§1!;§(param2) / 255,§%F§.§`!6§(param2) / 255,param3);
      }
      
      protected function get §]!+§() : Matrix3D
      {
         return this.§'!2§;
      }
      
      protected function get §]g§() : Matrix3D
      {
         return this.§%&§;
      }
      
      public function §2!G§(param1:Context3D, param2:int) : void
      {
         this.§"h§ = param1;
         this.§9&§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§"h§;
      }
      
      public function get §%!D§() : int
      {
         return this.§9&§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!4§ = null;
         for each(_loc1_ in this.§var §)
         {
            _loc1_.dispose();
         }
         if(§+8§.§-2§)
         {
            §+8§.§-2§.removeEventListener(Event.CONTEXT3D_CREATE,this.§`4§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§%F§.§%!8§(param2) / 255,§%F§.§1!;§(param2) / 255,§%F§.§`!6§(param2) / 255,param3);
      }
      
      private function §`4§(param1:Event) : void
      {
         this.§var § = new <§0!4§>[new §0!4§()];
      }
      
      public function §"!;§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §<!6§[0] = 2 / param1;
         §<!6§[1] = §<!6§[2] = §<!6§[3] = §<!6§[4] = 0;
         §<!6§[5] = -2 / param2;
         §<!6§[6] = §<!6§[7] = §<!6§[8] = §<!6§[9] = 0;
         §<!6§[10] = -2 / (param4 - param3);
         §<!6§[11] = 0;
         §<!6§[12] = -1;
         §<!6§[13] = 1;
         §<!6§[14] = -(param4 + param3) / (param4 - param3);
         §<!6§[15] = 1;
         this.§%&§.copyRawDataFrom(§<!6§);
      }
      
      public function §'!@§() : void
      {
         this.§'!2§.identity();
      }
      
      public function §,!=§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§'!2§.prependTranslation(param1,param2,param3);
      }
      
      public function §^§(param1:Number, param2:Vector3D = null) : void
      {
         this.§'!2§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §+g§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§'!2§.prependScale(param1,param2,param3);
      }
      
      public function §`C§(param1:DisplayObject) : void
      {
         §48§(this.§'!2§,param1);
      }
      
      public function §2?§() : void
      {
         if(this.§99§.length < this.§-O§ + 1)
         {
            this.§99§.push(new Matrix3D());
         }
         this.§99§[this.§-O§++].copyFrom(this.§'!2§);
      }
      
      public function §2§() : void
      {
         this.§'!2§.copyFrom(this.§99§[--this.§-O§]);
      }
      
      public function §'d§() : void
      {
         this.§-O§ = 0;
         this.§'!@§();
      }
      
      public function get §1k§() : Matrix3D
      {
         this.§!K§.identity();
         this.§!K§.append(this.§'!2§);
         this.§!K§.append(this.§%&§);
         return this.§!K§;
      }
      
      public function batchQuad(param1:§4G§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§;'§.§+5§(param1,param3,param4))
         {
            this.§7[§();
         }
         this.§;'§.§&§(param1,param2,param3,param4,this.§'!2§);
      }
      
      public function §7[§() : void
      {
         if(this.§;'§.§[!7§ > 0)
         {
            this.§;'§.render(this.context,this.§%&§);
            this.§;'§.reset();
            ++this.§ !G§;
            if(this.§var §.length <= this.§ !G§)
            {
               this.§var §.push(new §0!4§());
            }
         }
      }
      
      public function §;@§() : void
      {
         this.§'d§();
         this.§ !G§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §;'§() : §0!4§
      {
         return this.§var §[this.§ !G§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §;!E§[param2])
         {
            §;!E§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §9#§)
         {
            §9#§ = param2;
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
