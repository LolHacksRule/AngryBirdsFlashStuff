package §+!F§
{
   import §8!8§.*;
   import §?7§.Texture;
   import §]!v§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §<!l§
   {
      
      private static var §2M§:Array;
      
      private static var §1"5§:Program3D;
      
      private static var §1M§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §>!p§:Matrix3D;
      
      private var §9z§:Matrix3D;
      
      private var §#T§:Matrix3D;
      
      private var §8y§:Vector.<Matrix3D>;
      
      private var §>=§:int;
      
      private var §#"9§:Vector.<§7U§>;
      
      private var §,!§:int;
      
      private var §]!s§:Context3D;
      
      private var §^;§:int = -1;
      
      public function §<!l§()
      {
         super();
         this.§>!p§ = new Matrix3D();
         this.§9z§ = new Matrix3D();
         this.§#T§ = new Matrix3D();
         this.§8y§ = new Vector.<Matrix3D>(0);
         this.§>=§ = 0;
         this.§,!§ = 0;
         this.§#"9§ = new Vector.<§7U§>();
         if(§2M§ == null)
         {
            §2M§ = [];
         }
         this.§3!>§();
         this.§6^§(400,300);
         §1!D§.§7!T§.addEventListener(Event.CONTEXT3D_CREATE,this.§7!D§);
      }
      
      public static function §^!q§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§;"0§(param1);
      }
      
      public static function §+"A§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§+!w§.§76§(param2) / 255,§+!w§.§=+§(param2) / 255,§+!w§.§5!K§(param2) / 255,param3);
      }
      
      protected function get §<!w§() : Matrix3D
      {
         return this.§9z§;
      }
      
      protected function get §1!F§() : Matrix3D
      {
         return this.§>!p§;
      }
      
      public function §0y§(param1:Context3D, param2:int) : void
      {
         this.§]!s§ = param1;
         this.§^;§ = param2;
      }
      
      public function get §>4§() : Context3D
      {
         return this.§]!s§;
      }
      
      public function get §@B§() : int
      {
         return this.§^;§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7U§ = null;
         for each(_loc1_ in this.§#"9§)
         {
            _loc1_.dispose();
         }
         if(§1!D§.§7!T§)
         {
            §1!D§.§7!T§.removeEventListener(Event.CONTEXT3D_CREATE,this.§7!D§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§+!w§.§76§(param2) / 255,§+!w§.§=+§(param2) / 255,§+!w§.§5!K§(param2) / 255,param3);
      }
      
      private function §7!D§(param1:Event) : void
      {
         this.§#"9§ = new <§7U§>[new §7U§()];
      }
      
      public function §6^§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §1M§[0] = 2 / param1;
         §1M§[1] = §1M§[2] = §1M§[3] = §1M§[4] = 0;
         §1M§[5] = -2 / param2;
         §1M§[6] = §1M§[7] = §1M§[8] = §1M§[9] = 0;
         §1M§[10] = -2 / (param4 - param3);
         §1M§[11] = 0;
         §1M§[12] = -1;
         §1M§[13] = 1;
         §1M§[14] = -(param4 + param3) / (param4 - param3);
         §1M§[15] = 1;
         this.§>!p§.copyRawDataFrom(§1M§);
      }
      
      public function §3!>§() : void
      {
         this.§9z§.identity();
      }
      
      public function §2!<§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§9z§.prependTranslation(param1,param2,param3);
      }
      
      public function §^!B§(param1:Number, param2:Vector3D = null) : void
      {
         this.§9z§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §3!%§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§9z§.prependScale(param1,param2,param3);
      }
      
      public function §;"0§(param1:DisplayObject) : void
      {
         param1.§;"0§(this.§9z§);
      }
      
      public function §=&§() : void
      {
         if(this.§8y§.length < this.§>=§ + 1)
         {
            this.§8y§.push(new Matrix3D());
         }
         this.§8y§[this.§>=§++].copyFrom(this.§9z§);
      }
      
      public function §=!Y§() : void
      {
         this.§9z§.copyFrom(this.§8y§[--this.§>=§]);
      }
      
      public function §4!l§() : void
      {
         this.§>=§ = 0;
         this.§3!>§();
      }
      
      public function get §7a§() : Matrix3D
      {
         this.§#T§.identity();
         this.§#T§.append(this.§9z§);
         this.§#T§.append(this.§>!p§);
         return this.§#T§;
      }
      
      public function batchQuad(param1:§+!`§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§!!a§.§="J§(param1,param3,param4,param2))
         {
            this.§>"4§();
         }
         this.§!!a§.§7"5§(param1,param2,param3,param4,this.§9z§);
      }
      
      public function §>"4§() : void
      {
         if(this.§!!a§.§^[§ > 0)
         {
            this.§!!a§.render(this.§>4§,this.§>!p§);
            this.§!!a§.reset();
            ++this.§,!§;
            if(this.§#"9§.length <= this.§,!§)
            {
               this.§#"9§.push(new §7U§());
            }
         }
      }
      
      public function §?!H§() : void
      {
         this.§4!l§();
         this.§,!§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §!!a§() : §7U§
      {
         return this.§#"9§[this.§,!§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §2M§[param2])
         {
            §2M§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §1"5§)
         {
            §1"5§ = param2;
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
