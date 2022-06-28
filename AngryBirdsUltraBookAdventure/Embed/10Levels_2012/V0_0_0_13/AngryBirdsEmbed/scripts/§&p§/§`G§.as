package §&p§
{
   import §8f§.*;
   import §?^§.*;
   import each.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §`G§
   {
      
      private static var §8!D§:Array;
      
      private static var §"!4§:Program3D;
      
      private static var §'S§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §^G§:Matrix3D;
      
      private var §-!%§:Matrix3D;
      
      private var §]p§:Matrix3D;
      
      private var §5c§:Vector.<Matrix3D>;
      
      private var §?!E§:int;
      
      private var §4X§:Vector.<§%?§>;
      
      private var §<v§:int;
      
      private var §+!'§:Context3D;
      
      private var §+Y§:int = -1;
      
      public function §`G§()
      {
         super();
         this.§^G§ = new Matrix3D();
         this.§-!%§ = new Matrix3D();
         this.§]p§ = new Matrix3D();
         this.§5c§ = new Vector.<Matrix3D>(0);
         this.§?!E§ = 0;
         this.§<v§ = 0;
         this.§4X§ = new Vector.<§%?§>();
         if(§8!D§ == null)
         {
            §8!D§ = [];
         }
         this.§;V§();
         this.§=%§(400,300);
         §'_§.§17§.addEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
      }
      
      public static function §@"§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§5!F§(param1);
      }
      
      public static function §1!8§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§<A§.§2t§(param2) / 255,§<A§.§;c§(param2) / 255,§<A§.§^q§(param2) / 255,param3);
      }
      
      protected function get §%G§() : Matrix3D
      {
         return this.§-!%§;
      }
      
      protected function get §01§() : Matrix3D
      {
         return this.§^G§;
      }
      
      public function §!n§(param1:Context3D, param2:int) : void
      {
         this.§+!'§ = param1;
         this.§+Y§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§+!'§;
      }
      
      public function get §4O§() : int
      {
         return this.§+Y§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§%?§ = null;
         for each(_loc1_ in this.§4X§)
         {
            _loc1_.dispose();
         }
         if(§'_§.§17§)
         {
            §'_§.§17§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-%§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§<A§.§2t§(param2) / 255,§<A§.§;c§(param2) / 255,§<A§.§^q§(param2) / 255,param3);
      }
      
      private function §-%§(param1:Event) : void
      {
         this.§4X§ = new <§%?§>[new §%?§()];
      }
      
      public function §=%§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §'S§[0] = 2 / param1;
         §'S§[1] = §'S§[2] = §'S§[3] = §'S§[4] = 0;
         §'S§[5] = -2 / param2;
         §'S§[6] = §'S§[7] = §'S§[8] = §'S§[9] = 0;
         §'S§[10] = -2 / (param4 - param3);
         §'S§[11] = 0;
         §'S§[12] = -1;
         §'S§[13] = 1;
         §'S§[14] = -(param4 + param3) / (param4 - param3);
         §'S§[15] = 1;
         this.§^G§.copyRawDataFrom(§'S§);
      }
      
      public function §;V§() : void
      {
         this.§-!%§.identity();
      }
      
      public function §>§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§-!%§.prependTranslation(param1,param2,param3);
      }
      
      public function §-F§(param1:Number, param2:Vector3D = null) : void
      {
         this.§-!%§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §@D§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§-!%§.prependScale(param1,param2,param3);
      }
      
      public function §5!F§(param1:DisplayObject) : void
      {
         param1.§5!F§(this.§-!%§);
      }
      
      public function §<<§() : void
      {
         if(this.§5c§.length < this.§?!E§ + 1)
         {
            this.§5c§.push(new Matrix3D());
         }
         this.§5c§[this.§?!E§++].copyFrom(this.§-!%§);
      }
      
      public function §8S§() : void
      {
         this.§-!%§.copyFrom(this.§5c§[--this.§?!E§]);
      }
      
      public function §#B§() : void
      {
         this.§?!E§ = 0;
         this.§;V§();
      }
      
      public function get §1!<§() : Matrix3D
      {
         this.§]p§.identity();
         this.§]p§.append(this.§-!%§);
         this.§]p§.append(this.§^G§);
         return this.§]p§;
      }
      
      public function batchQuad(param1:§?C§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§&1§.§ H§(param1,param3,param4))
         {
            this.§#E§();
         }
         this.§&1§.§"!!§(param1,param2,param3,param4,this.§-!%§);
      }
      
      public function §#E§() : void
      {
         if(this.§&1§.§1w§ > 0)
         {
            this.§&1§.render(this.context,this.§^G§);
            this.§&1§.reset();
            ++this.§<v§;
            if(this.§4X§.length <= this.§<v§)
            {
               this.§4X§.push(new §%?§());
            }
         }
      }
      
      public function §!t§() : void
      {
         this.§#B§();
         this.§<v§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §&1§() : §%?§
      {
         return this.§4X§[this.§<v§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §8!D§[param2])
         {
            §8!D§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §"!4§)
         {
            §"!4§ = param2;
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
