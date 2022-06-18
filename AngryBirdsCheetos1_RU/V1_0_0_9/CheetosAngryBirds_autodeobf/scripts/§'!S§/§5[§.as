package §'!S§
{
   import §#!`§.Texture;
   import §7u§.*;
   import §@u§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §5[§
   {
      
      private static var §-3§:Array;
      
      private static var §%!>§:Program3D;
      
      private static var §>9§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §6,§:Matrix3D;
      
      private var §]!"§:Matrix3D;
      
      private var §&<§:Matrix3D;
      
      private var §?!J§:Vector.<Matrix3D>;
      
      private var §=!E§:int;
      
      private var §8!S§:Vector.<§73§>;
      
      private var §%!2§:int;
      
      private var §6!3§:Context3D;
      
      private var §%!a§:int = -1;
      
      public function §5[§()
      {
         super();
         this.§6,§ = new Matrix3D();
         this.§]!"§ = new Matrix3D();
         this.§&<§ = new Matrix3D();
         this.§?!J§ = new Vector.<Matrix3D>(0);
         this.§=!E§ = 0;
         this.§%!2§ = 0;
         this.§8!S§ = new Vector.<§73§>();
         if(§-3§ == null)
         {
            §-3§ = [];
         }
         this.§]O§();
         this.§"§(400,300);
         §,!%§.§]!C§.addEventListener(Event.CONTEXT3D_CREATE,this.§[!8§);
      }
      
      public static function §8!§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§0!"§(param1);
      }
      
      public static function §!+§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§#g§.§36§(param2) / 255,§#g§.§+!8§(param2) / 255,§#g§.§ !G§(param2) / 255,param3);
      }
      
      protected function get §`!2§() : Matrix3D
      {
         return this.§]!"§;
      }
      
      protected function get §'a§() : Matrix3D
      {
         return this.§6,§;
      }
      
      public function §9!]§(param1:Context3D, param2:int) : void
      {
         this.§6!3§ = param1;
         this.§%!a§ = param2;
      }
      
      public function get § #§() : Context3D
      {
         return this.§6!3§;
      }
      
      public function get §<!U§() : int
      {
         return this.§%!a§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§73§ = null;
         for each(_loc1_ in this.§8!S§)
         {
            _loc1_.dispose();
         }
         if(§,!%§.§]!C§)
         {
            §,!%§.§]!C§.removeEventListener(Event.CONTEXT3D_CREATE,this.§[!8§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§#g§.§36§(param2) / 255,§#g§.§+!8§(param2) / 255,§#g§.§ !G§(param2) / 255,param3);
      }
      
      private function §[!8§(param1:Event) : void
      {
         this.§8!S§ = new <§73§>[new §73§()];
      }
      
      public function §"§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §>9§[0] = 2 / param1;
         §>9§[1] = §>9§[2] = §>9§[3] = §>9§[4] = 0;
         §>9§[5] = -2 / param2;
         §>9§[6] = §>9§[7] = §>9§[8] = §>9§[9] = 0;
         §>9§[10] = -2 / (param4 - param3);
         §>9§[11] = 0;
         §>9§[12] = -1;
         §>9§[13] = 1;
         §>9§[14] = -(param4 + param3) / (param4 - param3);
         §>9§[15] = 1;
         this.§6,§.copyRawDataFrom(§>9§);
      }
      
      public function §]O§() : void
      {
         this.§]!"§.identity();
      }
      
      public function §<Q§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§]!"§.prependTranslation(param1,param2,param3);
      }
      
      public function §%!B§(param1:Number, param2:Vector3D = null) : void
      {
         this.§]!"§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §=@§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§]!"§.prependScale(param1,param2,param3);
      }
      
      public function §0!"§(param1:DisplayObject) : void
      {
         param1.§0!"§(this.§]!"§);
      }
      
      public function §]F§() : void
      {
         if(this.§?!J§.length < this.§=!E§ + 1)
         {
            this.§?!J§.push(new Matrix3D());
         }
         this.§?!J§[this.§=!E§++].copyFrom(this.§]!"§);
      }
      
      public function §>f§() : void
      {
         this.§]!"§.copyFrom(this.§?!J§[--this.§=!E§]);
      }
      
      public function §1!a§() : void
      {
         this.§=!E§ = 0;
         this.§]O§();
      }
      
      public function get §^!!§() : Matrix3D
      {
         this.§&<§.identity();
         this.§&<§.append(this.§]!"§);
         this.§&<§.append(this.§6,§);
         return this.§&<§;
      }
      
      public function batchQuad(param1:§&x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§&X§.§6!4§(param1,param3,param4))
         {
            this.§`!3§();
         }
         this.§&X§.§<f§(param1,param2,param3,param4,this.§]!"§);
      }
      
      public function §`!3§() : void
      {
         if(this.§&X§.§`!W§ > 0)
         {
            this.§&X§.render(this.§ #§,this.§6,§);
            this.§&X§.reset();
            ++this.§%!2§;
            if(this.§8!S§.length <= this.§%!2§)
            {
               this.§8!S§.push(new §73§());
            }
         }
      }
      
      public function §#!L§() : void
      {
         this.§1!a§();
         this.§%!2§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §&X§() : §73§
      {
         return this.§8!S§[this.§%!2§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §-3§[param2])
         {
            §-3§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §%!>§)
         {
            §%!>§ = param2;
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
