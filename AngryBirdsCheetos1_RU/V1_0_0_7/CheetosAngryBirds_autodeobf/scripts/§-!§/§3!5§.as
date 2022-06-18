package §-!§
{
   import §9!V§.*;
   import §;!Q§.*;
   import §]p§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §3!5§
   {
      
      private static var §[;§:Array;
      
      private static var §'Y§:Program3D;
      
      private static var §;!V§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §^l§:Matrix3D;
      
      private var §@!R§:Matrix3D;
      
      private var §%O§:Matrix3D;
      
      private var §-!;§:Vector.<Matrix3D>;
      
      private var §"r§:int;
      
      private var §4D§:Vector.<§&!T§>;
      
      private var §[!>§:int;
      
      private var §6>§:Context3D;
      
      private var §`_§:int = -1;
      
      public function §3!5§()
      {
         super();
         this.§^l§ = new Matrix3D();
         this.§@!R§ = new Matrix3D();
         this.§%O§ = new Matrix3D();
         this.§-!;§ = new Vector.<Matrix3D>(0);
         this.§"r§ = 0;
         this.§[!>§ = 0;
         this.§4D§ = new Vector.<§&!T§>();
         if(§[;§ == null)
         {
            §[;§ = [];
         }
         this.§-!E§();
         this.§0!]§(400,300);
         §-§.§-G§.addEventListener(Event.CONTEXT3D_CREATE,this.§0C§);
      }
      
      public static function §5X§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§8!K§(param1);
      }
      
      public static function §!!1§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§%!&§.§'j§(param2) / 255,§%!&§.§;!J§(param2) / 255,§%!&§.§<!L§(param2) / 255,param3);
      }
      
      protected function get §#T§() : Matrix3D
      {
         return this.§@!R§;
      }
      
      protected function get §]7§() : Matrix3D
      {
         return this.§^l§;
      }
      
      public function §!!5§(param1:Context3D, param2:int) : void
      {
         this.§6>§ = param1;
         this.§`_§ = param2;
      }
      
      public function get §,§() : Context3D
      {
         return this.§6>§;
      }
      
      public function get §5!H§() : int
      {
         return this.§`_§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&!T§ = null;
         for each(_loc1_ in this.§4D§)
         {
            _loc1_.dispose();
         }
         if(§-§.§-G§)
         {
            §-§.§-G§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0C§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§%!&§.§'j§(param2) / 255,§%!&§.§;!J§(param2) / 255,§%!&§.§<!L§(param2) / 255,param3);
      }
      
      private function §0C§(param1:Event) : void
      {
         this.§4D§ = new <§&!T§>[new §&!T§()];
      }
      
      public function §0!]§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §;!V§[0] = 2 / param1;
         §;!V§[1] = §;!V§[2] = §;!V§[3] = §;!V§[4] = 0;
         §;!V§[5] = -2 / param2;
         §;!V§[6] = §;!V§[7] = §;!V§[8] = §;!V§[9] = 0;
         §;!V§[10] = -2 / (param4 - param3);
         §;!V§[11] = 0;
         §;!V§[12] = -1;
         §;!V§[13] = 1;
         §;!V§[14] = -(param4 + param3) / (param4 - param3);
         §;!V§[15] = 1;
         this.§^l§.copyRawDataFrom(§;!V§);
      }
      
      public function §-!E§() : void
      {
         this.§@!R§.identity();
      }
      
      public function §2!$§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§@!R§.prependTranslation(param1,param2,param3);
      }
      
      public function §`$§(param1:Number, param2:Vector3D = null) : void
      {
         this.§@!R§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §,G§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§@!R§.prependScale(param1,param2,param3);
      }
      
      public function §8!K§(param1:DisplayObject) : void
      {
         param1.§8!K§(this.§@!R§);
      }
      
      public function §4q§() : void
      {
         if(this.§-!;§.length < this.§"r§ + 1)
         {
            this.§-!;§.push(new Matrix3D());
         }
         this.§-!;§[this.§"r§++].copyFrom(this.§@!R§);
      }
      
      public function §,!_§() : void
      {
         this.§@!R§.copyFrom(this.§-!;§[--this.§"r§]);
      }
      
      public function §2t§() : void
      {
         this.§"r§ = 0;
         this.§-!E§();
      }
      
      public function get §5B§() : Matrix3D
      {
         this.§%O§.identity();
         this.§%O§.append(this.§@!R§);
         this.§%O§.append(this.§^l§);
         return this.§%O§;
      }
      
      public function batchQuad(param1:§,r§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§3!%§.§1#§(param1,param3,param4))
         {
            this.§0h§();
         }
         this.§3!%§.§8!2§(param1,param2,param3,param4,this.§@!R§);
      }
      
      public function §0h§() : void
      {
         if(this.§3!%§.§73§ > 0)
         {
            this.§3!%§.render(this.§,§,this.§^l§);
            this.§3!%§.reset();
            ++this.§[!>§;
            if(this.§4D§.length <= this.§[!>§)
            {
               this.§4D§.push(new §&!T§());
            }
         }
      }
      
      public function §+!A§() : void
      {
         this.§2t§();
         this.§[!>§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §3!%§() : §&!T§
      {
         return this.§4D§[this.§[!>§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §[;§[param2])
         {
            §[;§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §'Y§)
         {
            §'Y§ = param2;
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
