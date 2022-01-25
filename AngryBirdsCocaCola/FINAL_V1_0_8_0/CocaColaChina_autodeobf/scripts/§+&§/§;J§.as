package §+&§
{
   import §&!9§.*;
   import §6!4§.Texture;
   import §@!a§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §;J§
   {
      
      private static var §<!<§:Array;
      
      private static var override:Program3D;
      
      private static var §;2§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §0a§:Matrix3D;
      
      private var §]!!§:Matrix3D;
      
      private var §]!K§:Matrix3D;
      
      private var §;9§:Vector.<Matrix3D>;
      
      private var §+R§:int;
      
      private var §,!a§:Vector.<§ ,§>;
      
      private var §=!,§:int;
      
      private var §;i§:Context3D;
      
      private var §16§:int = -1;
      
      public function §;J§()
      {
         super();
         this.§0a§ = new Matrix3D();
         this.§]!!§ = new Matrix3D();
         this.§]!K§ = new Matrix3D();
         this.§;9§ = new Vector.<Matrix3D>(0);
         this.§+R§ = 0;
         this.§=!,§ = 0;
         this.§,!a§ = new Vector.<§ ,§>();
         if(§<!<§ == null)
         {
            §<!<§ = [];
         }
         this.§'Z§();
         this.§!1§(400,300);
         §?y§.§,u§.addEventListener(Event.CONTEXT3D_CREATE,this.§>l§);
      }
      
      public static function §0!>§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§%H§(param1);
      }
      
      public static function §#!N§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§`!#§.§do §(param2) / 255,§`!#§.§<!;§(param2) / 255,§`!#§.§27§(param2) / 255,param3);
      }
      
      protected function get §7?§() : Matrix3D
      {
         return this.§]!!§;
      }
      
      protected function get §]k§() : Matrix3D
      {
         return this.§0a§;
      }
      
      public function §5!#§(param1:Context3D, param2:int) : void
      {
         this.§;i§ = param1;
         this.§16§ = param2;
      }
      
      public function get §<!7§() : Context3D
      {
         return this.§;i§;
      }
      
      public function get §0!c§() : int
      {
         return this.§16§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ ,§ = null;
         for each(_loc1_ in this.§,!a§)
         {
            _loc1_.dispose();
         }
         if(§?y§.§,u§)
         {
            §?y§.§,u§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>l§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§`!#§.§do §(param2) / 255,§`!#§.§<!;§(param2) / 255,§`!#§.§27§(param2) / 255,param3);
      }
      
      private function §>l§(param1:Event) : void
      {
         this.§,!a§ = new <§ ,§>[new § ,§()];
      }
      
      public function §!1§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §;2§[0] = 2 / param1;
         §;2§[1] = §;2§[2] = §;2§[3] = §;2§[4] = 0;
         §;2§[5] = -2 / param2;
         §;2§[6] = §;2§[7] = §;2§[8] = §;2§[9] = 0;
         §;2§[10] = -2 / (param4 - param3);
         §;2§[11] = 0;
         §;2§[12] = -1;
         §;2§[13] = 1;
         §;2§[14] = -(param4 + param3) / (param4 - param3);
         §;2§[15] = 1;
         this.§0a§.copyRawDataFrom(§;2§);
      }
      
      public function §'Z§() : void
      {
         this.§]!!§.identity();
      }
      
      public function §3v§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§]!!§.prependTranslation(param1,param2,param3);
      }
      
      public function §6=§(param1:Number, param2:Vector3D = null) : void
      {
         this.§]!!§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §`Z§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§]!!§.prependScale(param1,param2,param3);
      }
      
      public function §%H§(param1:DisplayObject) : void
      {
         param1.§%H§(this.§]!!§);
      }
      
      public function § !F§() : void
      {
         if(this.§;9§.length < this.§+R§ + 1)
         {
            this.§;9§.push(new Matrix3D());
         }
         this.§;9§[this.§+R§++].copyFrom(this.§]!!§);
      }
      
      public function § =§() : void
      {
         this.§]!!§.copyFrom(this.§;9§[--this.§+R§]);
      }
      
      public function §#x§() : void
      {
         this.§+R§ = 0;
         this.§'Z§();
      }
      
      public function get §&W§() : Matrix3D
      {
         this.§]!K§.identity();
         this.§]!K§.append(this.§]!!§);
         this.§]!K§.append(this.§0a§);
         return this.§]!K§;
      }
      
      public function batchQuad(param1:§7!D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§8!c§.§9Q§(param1,param3,param4))
         {
            this.§;5§();
         }
         this.§8!c§.§6C§(param1,param2,param3,param4,this.§]!!§);
      }
      
      public function §;5§() : void
      {
         if(this.§8!c§.§,i§ > 0)
         {
            this.§8!c§.render(this.§<!7§,this.§0a§);
            this.§8!c§.reset();
            ++this.§=!,§;
            if(this.§,!a§.length <= this.§=!,§)
            {
               this.§,!a§.push(new § ,§());
            }
         }
      }
      
      public function §]@§() : void
      {
         this.§#x§();
         this.§=!,§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §8!c§() : § ,§
      {
         return this.§,!a§[this.§=!,§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §<!<§[param2])
         {
            §<!<§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != override)
         {
            override = param2;
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
