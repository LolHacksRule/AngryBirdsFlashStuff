package §>w§
{
   import §"`§.Texture;
   import §#!5§.*;
   import §4G§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §"!,§
   {
      
      private static var §<,§:Array;
      
      private static var §2W§:Program3D;
      
      private static var §'!2§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §=s§:Matrix3D;
      
      private var §>!M§:Matrix3D;
      
      private var §'!A§:Matrix3D;
      
      private var §#g§:Vector.<Matrix3D>;
      
      private var §]9§:int;
      
      private var § !<§:Vector.<§[C§>;
      
      private var §%!>§:int;
      
      private var §6_§:Context3D;
      
      private var §?0§:int = -1;
      
      public function §"!,§()
      {
         super();
         this.§=s§ = new Matrix3D();
         this.§>!M§ = new Matrix3D();
         this.§'!A§ = new Matrix3D();
         this.§#g§ = new Vector.<Matrix3D>(0);
         this.§]9§ = 0;
         this.§%!>§ = 0;
         this.§ !<§ = new Vector.<§[C§>();
         if(§<,§ == null)
         {
            §<,§ = [];
         }
         this.§?k§();
         this.§@!A§(400,300);
         §#0§.§#4§.addEventListener(Event.CONTEXT3D_CREATE,this.§[?§);
      }
      
      public static function §#c§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§&O§(param1);
      }
      
      public static function §8G§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§!B§.§"!@§(param2) / 255,§!B§.§>!#§(param2) / 255,§!B§.§=f§(param2) / 255,param3);
      }
      
      protected function get §>z§() : Matrix3D
      {
         return this.§>!M§;
      }
      
      protected function get §1h§() : Matrix3D
      {
         return this.§=s§;
      }
      
      public function §@!8§(param1:Context3D, param2:int) : void
      {
         this.§6_§ = param1;
         this.§?0§ = param2;
      }
      
      public function get §2N§() : Context3D
      {
         return this.§6_§;
      }
      
      public function get §-!=§() : int
      {
         return this.§?0§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[C§ = null;
         for each(_loc1_ in this.§ !<§)
         {
            _loc1_.dispose();
         }
         if(§#0§.§#4§)
         {
            §#0§.§#4§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[?§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§!B§.§"!@§(param2) / 255,§!B§.§>!#§(param2) / 255,§!B§.§=f§(param2) / 255,param3);
      }
      
      private function §[?§(param1:Event) : void
      {
         this.§ !<§ = new <§[C§>[new §[C§()];
      }
      
      public function §@!A§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §'!2§[0] = 2 / param1;
         §'!2§[1] = §'!2§[2] = §'!2§[3] = §'!2§[4] = 0;
         §'!2§[5] = -2 / param2;
         §'!2§[6] = §'!2§[7] = §'!2§[8] = §'!2§[9] = 0;
         §'!2§[10] = -2 / (param4 - param3);
         §'!2§[11] = 0;
         §'!2§[12] = -1;
         §'!2§[13] = 1;
         §'!2§[14] = -(param4 + param3) / (param4 - param3);
         §'!2§[15] = 1;
         this.§=s§.copyRawDataFrom(§'!2§);
      }
      
      public function §?k§() : void
      {
         this.§>!M§.identity();
      }
      
      public function §>F§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§>!M§.prependTranslation(param1,param2,param3);
      }
      
      public function §"! §(param1:Number, param2:Vector3D = null) : void
      {
         this.§>!M§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function § F§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§>!M§.prependScale(param1,param2,param3);
      }
      
      public function §&O§(param1:DisplayObject) : void
      {
         param1.§&O§(this.§>!M§);
      }
      
      public function §#!P§() : void
      {
         if(this.§#g§.length < this.§]9§ + 1)
         {
            this.§#g§.push(new Matrix3D());
         }
         this.§#g§[this.§]9§++].copyFrom(this.§>!M§);
      }
      
      public function §#!!§() : void
      {
         this.§>!M§.copyFrom(this.§#g§[--this.§]9§]);
      }
      
      public function §^!K§() : void
      {
         this.§]9§ = 0;
         this.§?k§();
      }
      
      public function get §&R§() : Matrix3D
      {
         this.§'!A§.identity();
         this.§'!A§.append(this.§>!M§);
         this.§'!A§.append(this.§=s§);
         return this.§'!A§;
      }
      
      public function batchQuad(param1:§5T§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§6+§.§#!%§(param1,param3,param4))
         {
            this.§`X§();
         }
         this.§6+§.§34§(param1,param2,param3,param4,this.§>!M§);
      }
      
      public function §`X§() : void
      {
         if(this.§6+§.§%6§ > 0)
         {
            this.§6+§.render(this.§2N§,this.§=s§);
            this.§6+§.reset();
            ++this.§%!>§;
            if(this.§ !<§.length <= this.§%!>§)
            {
               this.§ !<§.push(new §[C§());
            }
         }
      }
      
      public function §4!A§() : void
      {
         this.§^!K§();
         this.§%!>§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §6+§() : §[C§
      {
         return this.§ !<§[this.§%!>§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §<,§[param2])
         {
            §<,§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §2W§)
         {
            §2W§ = param2;
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
