package §5Q§
{
   import §&!Z§.*;
   import §7!8§.*;
   import §`!#§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §%!t§
   {
      
      private static var §@i§:Array;
      
      private static var §=!K§:Program3D;
      
      private static var §`5§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §7!e§:Matrix3D;
      
      private var §6!T§:Matrix3D;
      
      private var §""9§:Matrix3D;
      
      private var §!"G§:Vector.<Matrix3D>;
      
      private var §`z§:int;
      
      private var §9Q§:Vector.<§,Q§>;
      
      private var §88§:int;
      
      private var §8!C§:Context3D;
      
      private var §7" §:int = -1;
      
      public function §%!t§()
      {
         super();
         this.§7!e§ = new Matrix3D();
         this.§6!T§ = new Matrix3D();
         this.§""9§ = new Matrix3D();
         this.§!"G§ = new Vector.<Matrix3D>(0);
         this.§`z§ = 0;
         this.§88§ = 0;
         this.§9Q§ = new Vector.<§,Q§>();
         if(§@i§ == null)
         {
            §@i§ = [];
         }
         this.§+m§();
         this.§%>§(400,300);
         §^!e§.§`?§.addEventListener(Event.CONTEXT3D_CREATE,this.§2"'§);
      }
      
      public static function §4! §(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§0!x§(param1);
      }
      
      public static function §0_§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§@!a§.§4N§(param2) / 255,§@!a§.§"g§(param2) / 255,§@!a§.§?"7§(param2) / 255,param3);
      }
      
      protected function get §!H§() : Matrix3D
      {
         return this.§6!T§;
      }
      
      protected function get §9c§() : Matrix3D
      {
         return this.§7!e§;
      }
      
      public function §4!,§(param1:Context3D, param2:int) : void
      {
         this.§8!C§ = param1;
         this.§7" § = param2;
      }
      
      public function get §"!G§() : Context3D
      {
         return this.§8!C§;
      }
      
      public function get §;!c§() : int
      {
         return this.§7" §;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,Q§ = null;
         for each(_loc1_ in this.§9Q§)
         {
            _loc1_.dispose();
         }
         if(§^!e§.§`?§)
         {
            §^!e§.§`?§.removeEventListener(Event.CONTEXT3D_CREATE,this.§2"'§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§@!a§.§4N§(param2) / 255,§@!a§.§"g§(param2) / 255,§@!a§.§?"7§(param2) / 255,param3);
      }
      
      private function §2"'§(param1:Event) : void
      {
         this.§9Q§ = new <§,Q§>[new §,Q§()];
      }
      
      public function §%>§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §`5§[0] = 2 / param1;
         §`5§[1] = §`5§[2] = §`5§[3] = §`5§[4] = 0;
         §`5§[5] = -2 / param2;
         §`5§[6] = §`5§[7] = §`5§[8] = §`5§[9] = 0;
         §`5§[10] = -2 / (param4 - param3);
         §`5§[11] = 0;
         §`5§[12] = -1;
         §`5§[13] = 1;
         §`5§[14] = -(param4 + param3) / (param4 - param3);
         §`5§[15] = 1;
         this.§7!e§.copyRawDataFrom(§`5§);
      }
      
      public function §+m§() : void
      {
         this.§6!T§.identity();
      }
      
      public function §8g§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§6!T§.prependTranslation(param1,param2,param3);
      }
      
      public function §9!G§(param1:Number, param2:Vector3D = null) : void
      {
         this.§6!T§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §>$§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§6!T§.prependScale(param1,param2,param3);
      }
      
      public function §0!x§(param1:DisplayObject) : void
      {
         param1.§0!x§(this.§6!T§);
      }
      
      public function §=j§() : void
      {
         if(this.§!"G§.length < this.§`z§ + 1)
         {
            this.§!"G§.push(new Matrix3D());
         }
         this.§!"G§[this.§`z§++].copyFrom(this.§6!T§);
      }
      
      public function §7l§() : void
      {
         this.§6!T§.copyFrom(this.§!"G§[--this.§`z§]);
      }
      
      public function §&"?§() : void
      {
         this.§`z§ = 0;
         this.§+m§();
      }
      
      public function get §^s§() : Matrix3D
      {
         this.§""9§.identity();
         this.§""9§.append(this.§6!T§);
         this.§""9§.append(this.§7!e§);
         return this.§""9§;
      }
      
      public function batchQuad(param1:§&!D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§+`§.§1!`§(param1,param3,param4,param2))
         {
            this.§2!Y§();
         }
         this.§+`§.§[!'§(param1,param2,param3,param4,this.§6!T§);
      }
      
      public function §2!Y§() : void
      {
         if(this.§+`§.§35§ > 0)
         {
            this.§+`§.render(this.§"!G§,this.§7!e§);
            this.§+`§.reset();
            ++this.§88§;
            if(this.§9Q§.length <= this.§88§)
            {
               this.§9Q§.push(new §,Q§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§&"?§();
         this.§88§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §+`§() : §,Q§
      {
         return this.§9Q§[this.§88§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §@i§[param2])
         {
            §@i§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §=!K§)
         {
            §=!K§ = param2;
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
