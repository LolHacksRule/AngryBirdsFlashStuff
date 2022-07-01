package §-!+§
{
   import §+<§.*;
   import §@!#§.Texture;
   import §`L§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §,7§
   {
      
      private static var §," §:Array;
      
      private static var §2h§:Program3D;
      
      private static var §#!0§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §>"9§:Matrix3D;
      
      private var §<N§:Matrix3D;
      
      private var §^Q§:Matrix3D;
      
      private var §1!d§:Vector.<Matrix3D>;
      
      private var §!7§:int;
      
      private var §'<§:Vector.<§["%§>;
      
      private var §+H§:int;
      
      private var §^!m§:Context3D;
      
      private var §^!W§:int = -1;
      
      public function §,7§()
      {
         super();
         this.§>"9§ = new Matrix3D();
         this.§<N§ = new Matrix3D();
         this.§^Q§ = new Matrix3D();
         this.§1!d§ = new Vector.<Matrix3D>(0);
         this.§!7§ = 0;
         this.§+H§ = 0;
         this.§'<§ = new Vector.<§["%§>();
         if(§," § == null)
         {
            §," § = [];
         }
         this.§4"=§();
         this.§null§(400,300);
         §6"6§.§^F§.addEventListener(Event.CONTEXT3D_CREATE,this.§'!K§);
      }
      
      public static function §[! §(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§%!X§(param1);
      }
      
      public static function §-"0§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§@r§.§?!E§(param2) / 255,§@r§.§]%§(param2) / 255,§@r§.§&n§(param2) / 255,param3);
      }
      
      protected function get §'c§() : Matrix3D
      {
         return this.§<N§;
      }
      
      protected function get §+"2§() : Matrix3D
      {
         return this.§>"9§;
      }
      
      public function §-K§(param1:Context3D, param2:int) : void
      {
         this.§^!m§ = param1;
         this.§^!W§ = param2;
      }
      
      public function get §7!T§() : Context3D
      {
         return this.§^!m§;
      }
      
      public function get §6r§() : int
      {
         return this.§^!W§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§["%§ = null;
         for each(_loc1_ in this.§'<§)
         {
            _loc1_.dispose();
         }
         if(§6"6§.§^F§)
         {
            §6"6§.§^F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§'!K§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§@r§.§?!E§(param2) / 255,§@r§.§]%§(param2) / 255,§@r§.§&n§(param2) / 255,param3);
      }
      
      private function §'!K§(param1:Event) : void
      {
         this.§'<§ = new <§["%§>[new §["%§()];
      }
      
      public function §null§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §#!0§[0] = 2 / param1;
         §#!0§[1] = §#!0§[2] = §#!0§[3] = §#!0§[4] = 0;
         §#!0§[5] = -2 / param2;
         §#!0§[6] = §#!0§[7] = §#!0§[8] = §#!0§[9] = 0;
         §#!0§[10] = -2 / (param4 - param3);
         §#!0§[11] = 0;
         §#!0§[12] = -1;
         §#!0§[13] = 1;
         §#!0§[14] = -(param4 + param3) / (param4 - param3);
         §#!0§[15] = 1;
         this.§>"9§.copyRawDataFrom(§#!0§);
      }
      
      public function §4"=§() : void
      {
         this.§<N§.identity();
      }
      
      public function §6Y§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§<N§.prependTranslation(param1,param2,param3);
      }
      
      public function §?"0§(param1:Number, param2:Vector3D = null) : void
      {
         this.§<N§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §"!>§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§<N§.prependScale(param1,param2,param3);
      }
      
      public function §%!X§(param1:DisplayObject) : void
      {
         param1.§%!X§(this.§<N§);
      }
      
      public function §7",§() : void
      {
         if(this.§1!d§.length < this.§!7§ + 1)
         {
            this.§1!d§.push(new Matrix3D());
         }
         this.§1!d§[this.§!7§++].copyFrom(this.§<N§);
      }
      
      public function §6"8§() : void
      {
         this.§<N§.copyFrom(this.§1!d§[--this.§!7§]);
      }
      
      public function §0!,§() : void
      {
         this.§!7§ = 0;
         this.§4"=§();
      }
      
      public function get §@K§() : Matrix3D
      {
         this.§^Q§.identity();
         this.§^Q§.append(this.§<N§);
         this.§^Q§.append(this.§>"9§);
         return this.§^Q§;
      }
      
      public function batchQuad(param1:§=!x§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§!J§.§9x§(param1,param3,param4))
         {
            this.§>%§();
         }
         this.§!J§.§6"1§(param1,param2,param3,param4,this.§<N§);
      }
      
      public function §>%§() : void
      {
         if(this.§!J§.§4D§ > 0)
         {
            this.§!J§.render(this.§7!T§,this.§>"9§);
            this.§!J§.reset();
            ++this.§+H§;
            if(this.§'<§.length <= this.§+H§)
            {
               this.§'<§.push(new §["%§());
            }
         }
      }
      
      public function §!!'§() : void
      {
         this.§0!,§();
         this.§+H§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §!J§() : §["%§
      {
         return this.§'<§[this.§+H§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §," §[param2])
         {
            §," §[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §2h§)
         {
            §2h§ = param2;
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
