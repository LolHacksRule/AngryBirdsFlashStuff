package §`V§
{
   import § !=§.*;
   import § !a§.Texture;
   import §=D§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §^M§
   {
      
      private static var §=X§:Array;
      
      private static var §@T§:Program3D;
      
      private static var §[!!§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §"`§:Matrix3D;
      
      private var §&"1§:Matrix3D;
      
      private var §?!y§:Matrix3D;
      
      private var §,!#§:Vector.<Matrix3D>;
      
      private var §30§:int;
      
      private var § var§:Vector.<§[T§>;
      
      private var §&s§:int;
      
      private var §5%§:Context3D;
      
      private var §""2§:int = -1;
      
      public function §^M§()
      {
         super();
         this.§"`§ = new Matrix3D();
         this.§&"1§ = new Matrix3D();
         this.§?!y§ = new Matrix3D();
         this.§,!#§ = new Vector.<Matrix3D>(0);
         this.§30§ = 0;
         this.§&s§ = 0;
         this.§ var§ = new Vector.<§[T§>();
         if(§=X§ == null)
         {
            §=X§ = [];
         }
         this.§06§();
         this.§8>§(400,300);
         §;6§.§@X§.addEventListener(Event.CONTEXT3D_CREATE,this.§?! §);
      }
      
      public static function §^!x§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§=,§(param1);
      }
      
      public static function §?!W§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§@!j§.§>!4§(param2) / 255,§@!j§.§7N§(param2) / 255,§@!j§.§7!T§(param2) / 255,param3);
      }
      
      protected function get §="5§() : Matrix3D
      {
         return this.§&"1§;
      }
      
      protected function get §0j§() : Matrix3D
      {
         return this.§"`§;
      }
      
      public function §true§(param1:Context3D, param2:int) : void
      {
         this.§5%§ = param1;
         this.§""2§ = param2;
      }
      
      public function get §8!N§() : Context3D
      {
         return this.§5%§;
      }
      
      public function get §4!^§() : int
      {
         return this.§""2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[T§ = null;
         for each(_loc1_ in this.§ var§)
         {
            _loc1_.dispose();
         }
         if(§;6§.§@X§)
         {
            §;6§.§@X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?! §);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§@!j§.§>!4§(param2) / 255,§@!j§.§7N§(param2) / 255,§@!j§.§7!T§(param2) / 255,param3);
      }
      
      private function §?! §(param1:Event) : void
      {
         this.§ var§ = new <§[T§>[new §[T§()];
      }
      
      public function §8>§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §[!!§[0] = 2 / param1;
         §[!!§[1] = §[!!§[2] = §[!!§[3] = §[!!§[4] = 0;
         §[!!§[5] = -2 / param2;
         §[!!§[6] = §[!!§[7] = §[!!§[8] = §[!!§[9] = 0;
         §[!!§[10] = -2 / (param4 - param3);
         §[!!§[11] = 0;
         §[!!§[12] = -1;
         §[!!§[13] = 1;
         §[!!§[14] = -(param4 + param3) / (param4 - param3);
         §[!!§[15] = 1;
         this.§"`§.copyRawDataFrom(§[!!§);
      }
      
      public function §06§() : void
      {
         this.§&"1§.identity();
      }
      
      public function §+!D§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§&"1§.prependTranslation(param1,param2,param3);
      }
      
      public function §;>§(param1:Number, param2:Vector3D = null) : void
      {
         this.§&"1§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §[",§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§&"1§.prependScale(param1,param2,param3);
      }
      
      public function §=,§(param1:DisplayObject) : void
      {
         param1.§=,§(this.§&"1§);
      }
      
      public function §^-§() : void
      {
         if(this.§,!#§.length < this.§30§ + 1)
         {
            this.§,!#§.push(new Matrix3D());
         }
         this.§,!#§[this.§30§++].copyFrom(this.§&"1§);
      }
      
      public function §]!o§() : void
      {
         this.§&"1§.copyFrom(this.§,!#§[--this.§30§]);
      }
      
      public function §`!2§() : void
      {
         this.§30§ = 0;
         this.§06§();
      }
      
      public function get § !N§() : Matrix3D
      {
         this.§?!y§.identity();
         this.§?!y§.append(this.§&"1§);
         this.§?!y§.append(this.§"`§);
         return this.§?!y§;
      }
      
      public function batchQuad(param1:§break§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§`$§.§@&§(param1,param3,param4,param2))
         {
            this.§8R§();
         }
         this.§`$§.§%o§(param1,param2,param3,param4,this.§&"1§);
      }
      
      public function §8R§() : void
      {
         if(this.§`$§.§2!g§ > 0)
         {
            this.§`$§.render(this.§8!N§,this.§"`§);
            this.§`$§.reset();
            ++this.§&s§;
            if(this.§ var§.length <= this.§&s§)
            {
               this.§ var§.push(new §[T§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§`!2§();
         this.§&s§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §`$§() : §[T§
      {
         return this.§ var§[this.§&s§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §=X§[param2])
         {
            §=X§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §@T§)
         {
            §@T§ = param2;
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
