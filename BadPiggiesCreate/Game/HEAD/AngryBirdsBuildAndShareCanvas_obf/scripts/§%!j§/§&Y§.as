package §%!j§
{
   import §+!-§.*;
   import §0!%§.Texture;
   import §`!=§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §&Y§
   {
      
      private static var §>![§:Array;
      
      private static var §"!#§:Program3D;
      
      private static var §2r§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §3L§:Matrix3D;
      
      private var §9^§:Matrix3D;
      
      private var §!" §:Matrix3D;
      
      private var §0!D§:Vector.<Matrix3D>;
      
      private var §;t§:int;
      
      private var §!!z§:Vector.<§,5§>;
      
      private var §?P§:int;
      
      private var §^!O§:Context3D;
      
      private var §`!J§:int = -1;
      
      public function §&Y§()
      {
         super();
         this.§3L§ = new Matrix3D();
         this.§9^§ = new Matrix3D();
         this.§!" § = new Matrix3D();
         this.§0!D§ = new Vector.<Matrix3D>(0);
         this.§;t§ = 0;
         this.§?P§ = 0;
         this.§!!z§ = new Vector.<§,5§>();
         if(§>![§ == null)
         {
            §>![§ = [];
         }
         this.§3&§();
         this.§`!M§(400,300);
         §%K§.§`9§.addEventListener(Event.CONTEXT3D_CREATE,this.§ !m§);
      }
      
      public static function §4!e§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§1w§(param1);
      }
      
      public static function §;!E§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§9q§.§@g§(param2) / 255,§9q§.§!e§(param2) / 255,§9q§.§6!1§(param2) / 255,param3);
      }
      
      protected function get §"!Y§() : Matrix3D
      {
         return this.§9^§;
      }
      
      protected function get §-Q§() : Matrix3D
      {
         return this.§3L§;
      }
      
      public function §+"+§(param1:Context3D, param2:int) : void
      {
         this.§^!O§ = param1;
         this.§`!J§ = param2;
      }
      
      public function get §-!K§() : Context3D
      {
         return this.§^!O§;
      }
      
      public function get § !Z§() : int
      {
         return this.§`!J§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,5§ = null;
         for each(_loc1_ in this.§!!z§)
         {
            _loc1_.dispose();
         }
         if(§%K§.§`9§)
         {
            §%K§.§`9§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ !m§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§9q§.§@g§(param2) / 255,§9q§.§!e§(param2) / 255,§9q§.§6!1§(param2) / 255,param3);
      }
      
      private function § !m§(param1:Event) : void
      {
         this.§!!z§ = new <§,5§>[new §,5§()];
      }
      
      public function §`!M§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §2r§[0] = 2 / param1;
         §2r§[1] = §2r§[2] = §2r§[3] = §2r§[4] = 0;
         §2r§[5] = -2 / param2;
         §2r§[6] = §2r§[7] = §2r§[8] = §2r§[9] = 0;
         §2r§[10] = -2 / (param4 - param3);
         §2r§[11] = 0;
         §2r§[12] = -1;
         §2r§[13] = 1;
         §2r§[14] = -(param4 + param3) / (param4 - param3);
         §2r§[15] = 1;
         this.§3L§.copyRawDataFrom(§2r§);
      }
      
      public function §3&§() : void
      {
         this.§9^§.identity();
      }
      
      public function §0g§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§9^§.prependTranslation(param1,param2,param3);
      }
      
      public function §"!u§(param1:Number, param2:Vector3D = null) : void
      {
         this.§9^§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §^P§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§9^§.prependScale(param1,param2,param3);
      }
      
      public function §1w§(param1:DisplayObject) : void
      {
         param1.§1w§(this.§9^§);
      }
      
      public function §,!z§() : void
      {
         if(this.§0!D§.length < this.§;t§ + 1)
         {
            this.§0!D§.push(new Matrix3D());
         }
         this.§0!D§[this.§;t§++].copyFrom(this.§9^§);
      }
      
      public function §@!<§() : void
      {
         this.§9^§.copyFrom(this.§0!D§[--this.§;t§]);
      }
      
      public function §45§() : void
      {
         this.§;t§ = 0;
         this.§3&§();
      }
      
      public function get §'D§() : Matrix3D
      {
         this.§!" §.identity();
         this.§!" §.append(this.§9^§);
         this.§!" §.append(this.§3L§);
         return this.§!" §;
      }
      
      public function batchQuad(param1:§4!O§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§8!i§.§^G§(param1,param3,param4))
         {
            this.§0"6§();
         }
         this.§8!i§.§0!B§(param1,param2,param3,param4,this.§9^§);
      }
      
      public function §0"6§() : void
      {
         if(this.§8!i§.§^"-§ > 0)
         {
            this.§8!i§.render(this.§-!K§,this.§3L§);
            this.§8!i§.reset();
            ++this.§?P§;
            if(this.§!!z§.length <= this.§?P§)
            {
               this.§!!z§.push(new §,5§());
            }
         }
      }
      
      public function §<Q§() : void
      {
         this.§45§();
         this.§?P§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §8!i§() : §,5§
      {
         return this.§!!z§[this.§?P§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §>![§[param2])
         {
            §>![§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §"!#§)
         {
            §"!#§ = param2;
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
