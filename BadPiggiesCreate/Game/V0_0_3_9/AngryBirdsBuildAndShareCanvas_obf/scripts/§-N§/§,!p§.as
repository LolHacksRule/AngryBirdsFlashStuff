package §-N§
{
   import §+M§.*;
   import §7q§.*;
   import §8Y§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §,!p§
   {
      
      private static var §1!C§:Array;
      
      private static var §<!M§:Program3D;
      
      private static var §3!5§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §"D§:Matrix3D;
      
      private var §>W§:Matrix3D;
      
      private var §^!V§:Matrix3D;
      
      private var §1!E§:Vector.<Matrix3D>;
      
      private var §;!#§:int;
      
      private var §&!O§:Vector.<§?!y§>;
      
      private var §["0§:int;
      
      private var §#[§:Context3D;
      
      private var §!!!§:int = -1;
      
      public function §,!p§()
      {
         super();
         this.§"D§ = new Matrix3D();
         this.§>W§ = new Matrix3D();
         this.§^!V§ = new Matrix3D();
         this.§1!E§ = new Vector.<Matrix3D>(0);
         this.§;!#§ = 0;
         this.§["0§ = 0;
         this.§&!O§ = new Vector.<§?!y§>();
         if(§1!C§ == null)
         {
            §1!C§ = [];
         }
         this.§8!O§();
         this.§>"$§(400,300);
         §=!]§.§@§.addEventListener(Event.CONTEXT3D_CREATE,this.§0V§);
      }
      
      public static function §-!M§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§`!`§(param1);
      }
      
      public static function §0!_§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§4H§.§each §(param2) / 255,§4H§.§"!8§(param2) / 255,§4H§.§;!z§(param2) / 255,param3);
      }
      
      protected function get §7"+§() : Matrix3D
      {
         return this.§>W§;
      }
      
      protected function get §6N§() : Matrix3D
      {
         return this.§"D§;
      }
      
      public function §5!+§(param1:Context3D, param2:int) : void
      {
         this.§#[§ = param1;
         this.§!!!§ = param2;
      }
      
      public function get §3",§() : Context3D
      {
         return this.§#[§;
      }
      
      public function get §-!F§() : int
      {
         return this.§!!!§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!y§ = null;
         for each(_loc1_ in this.§&!O§)
         {
            _loc1_.dispose();
         }
         if(§=!]§.§@§)
         {
            §=!]§.§@§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0V§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§4H§.§each §(param2) / 255,§4H§.§"!8§(param2) / 255,§4H§.§;!z§(param2) / 255,param3);
      }
      
      private function §0V§(param1:Event) : void
      {
         this.§&!O§ = new <§?!y§>[new §?!y§()];
      }
      
      public function §>"$§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §3!5§[0] = 2 / param1;
         §3!5§[1] = §3!5§[2] = §3!5§[3] = §3!5§[4] = 0;
         §3!5§[5] = -2 / param2;
         §3!5§[6] = §3!5§[7] = §3!5§[8] = §3!5§[9] = 0;
         §3!5§[10] = -2 / (param4 - param3);
         §3!5§[11] = 0;
         §3!5§[12] = -1;
         §3!5§[13] = 1;
         §3!5§[14] = -(param4 + param3) / (param4 - param3);
         §3!5§[15] = 1;
         this.§"D§.copyRawDataFrom(§3!5§);
      }
      
      public function §8!O§() : void
      {
         this.§>W§.identity();
      }
      
      public function §7!r§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§>W§.prependTranslation(param1,param2,param3);
      }
      
      public function §""-§(param1:Number, param2:Vector3D = null) : void
      {
         this.§>W§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §#j§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§>W§.prependScale(param1,param2,param3);
      }
      
      public function §`!`§(param1:DisplayObject) : void
      {
         param1.§`!`§(this.§>W§);
      }
      
      public function §%O§() : void
      {
         if(this.§1!E§.length < this.§;!#§ + 1)
         {
            this.§1!E§.push(new Matrix3D());
         }
         this.§1!E§[this.§;!#§++].copyFrom(this.§>W§);
      }
      
      public function §@!V§() : void
      {
         this.§>W§.copyFrom(this.§1!E§[--this.§;!#§]);
      }
      
      public function §^6§() : void
      {
         this.§;!#§ = 0;
         this.§8!O§();
      }
      
      public function get §^!8§() : Matrix3D
      {
         this.§^!V§.identity();
         this.§^!V§.append(this.§>W§);
         this.§^!V§.append(this.§"D§);
         return this.§^!V§;
      }
      
      public function batchQuad(param1:§"L§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§2$§.§^"#§(param1,param3,param4))
         {
            this.§5E§();
         }
         this.§2$§.§'X§(param1,param2,param3,param4,this.§>W§);
      }
      
      public function §5E§() : void
      {
         if(this.§2$§.§?#§ > 0)
         {
            this.§2$§.render(this.§3",§,this.§"D§);
            this.§2$§.reset();
            ++this.§["0§;
            if(this.§&!O§.length <= this.§["0§)
            {
               this.§&!O§.push(new §?!y§());
            }
         }
      }
      
      public function §?"%§() : void
      {
         this.§^6§();
         this.§["0§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §2$§() : §?!y§
      {
         return this.§&!O§[this.§["0§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §1!C§[param2])
         {
            §1!C§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §<!M§)
         {
            §<!M§ = param2;
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
