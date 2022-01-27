package §!v§
{
   import §#!6§.Texture;
   import §6K§.*;
   import §=!E§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §16§
   {
      
      private static var § !6§:Array;
      
      private static var §9t§:Program3D;
      
      private static var §>!6§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §84§:Matrix3D;
      
      private var §]!#§:Matrix3D;
      
      private var §]7§:Matrix3D;
      
      private var §>D§:Vector.<Matrix3D>;
      
      private var §4!!§:int;
      
      private var §0M§:Vector.<§<"§>;
      
      private var §<F§:int;
      
      private var §@>§:Context3D;
      
      private var §'!3§:int = -1;
      
      public function §16§()
      {
         super();
         this.§84§ = new Matrix3D();
         this.§]!#§ = new Matrix3D();
         this.§]7§ = new Matrix3D();
         this.§>D§ = new Vector.<Matrix3D>(0);
         this.§4!!§ = 0;
         this.§<F§ = 0;
         this.§0M§ = new Vector.<§<"§>();
         if(§ !6§ == null)
         {
            § !6§ = [];
         }
         this.§?C§();
         this.§`5§(400,300);
         §7[§.§&!J§.addEventListener(Event.CONTEXT3D_CREATE,this.§+!%§);
      }
      
      public static function §=1§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§1!!§(param1);
      }
      
      public static function §switch§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§+!d§.§`K§(param2) / 255,§+!d§.§8!,§(param2) / 255,§+!d§.§;!T§(param2) / 255,param3);
      }
      
      protected function get §%q§() : Matrix3D
      {
         return this.§]!#§;
      }
      
      protected function get §?<§() : Matrix3D
      {
         return this.§84§;
      }
      
      public function § !?§(param1:Context3D, param2:int) : void
      {
         this.§@>§ = param1;
         this.§'!3§ = param2;
      }
      
      public function get §]!V§() : Context3D
      {
         return this.§@>§;
      }
      
      public function get §&z§() : int
      {
         return this.§'!3§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<"§ = null;
         for each(_loc1_ in this.§0M§)
         {
            _loc1_.dispose();
         }
         if(§7[§.§&!J§)
         {
            §7[§.§&!J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§+!%§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§+!d§.§`K§(param2) / 255,§+!d§.§8!,§(param2) / 255,§+!d§.§;!T§(param2) / 255,param3);
      }
      
      private function §+!%§(param1:Event) : void
      {
         this.§0M§ = new <§<"§>[new §<"§()];
      }
      
      public function §`5§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §>!6§[0] = 2 / param1;
         §>!6§[1] = §>!6§[2] = §>!6§[3] = §>!6§[4] = 0;
         §>!6§[5] = -2 / param2;
         §>!6§[6] = §>!6§[7] = §>!6§[8] = §>!6§[9] = 0;
         §>!6§[10] = -2 / (param4 - param3);
         §>!6§[11] = 0;
         §>!6§[12] = -1;
         §>!6§[13] = 1;
         §>!6§[14] = -(param4 + param3) / (param4 - param3);
         §>!6§[15] = 1;
         this.§84§.copyRawDataFrom(§>!6§);
      }
      
      public function §?C§() : void
      {
         this.§]!#§.identity();
      }
      
      public function §4v§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§]!#§.prependTranslation(param1,param2,param3);
      }
      
      public function §@!G§(param1:Number, param2:Vector3D = null) : void
      {
         this.§]!#§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §%o§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§]!#§.prependScale(param1,param2,param3);
      }
      
      public function §1!!§(param1:DisplayObject) : void
      {
         param1.§1!!§(this.§]!#§);
      }
      
      public function §,!W§() : void
      {
         if(this.§>D§.length < this.§4!!§ + 1)
         {
            this.§>D§.push(new Matrix3D());
         }
         this.§>D§[this.§4!!§++].copyFrom(this.§]!#§);
      }
      
      public function §>V§() : void
      {
         this.§]!#§.copyFrom(this.§>D§[--this.§4!!§]);
      }
      
      public function §,r§() : void
      {
         this.§4!!§ = 0;
         this.§?C§();
      }
      
      public function get §^7§() : Matrix3D
      {
         this.§]7§.identity();
         this.§]7§.append(this.§]!#§);
         this.§]7§.append(this.§84§);
         return this.§]7§;
      }
      
      public function batchQuad(param1:§,!@§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§20§.§'W§(param1,param3,param4))
         {
            this.§5!Y§();
         }
         this.§20§.§%D§(param1,param2,param3,param4,this.§]!#§);
      }
      
      public function §5!Y§() : void
      {
         if(this.§20§.§-!c§ > 0)
         {
            this.§20§.render(this.§]!V§,this.§84§);
            this.§20§.reset();
            ++this.§<F§;
            if(this.§0M§.length <= this.§<F§)
            {
               this.§0M§.push(new §<"§());
            }
         }
      }
      
      public function §-I§() : void
      {
         this.§,r§();
         this.§<F§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §20§() : §<"§
      {
         return this.§0M§[this.§<F§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != § !6§[param2])
         {
            § !6§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §9t§)
         {
            §9t§ = param2;
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
