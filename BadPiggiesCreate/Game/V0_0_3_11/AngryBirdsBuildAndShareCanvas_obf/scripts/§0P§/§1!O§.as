package §0P§
{
   import §1!Y§.*;
   import §=v§.*;
   import §^i§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §1!O§
   {
      
      private static var §%!m§:Array;
      
      private static var §1n§:Program3D;
      
      private static var §0!§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §]4§:Matrix3D;
      
      private var §-E§:Matrix3D;
      
      private var §"a§:Matrix3D;
      
      private var §'X§:Vector.<Matrix3D>;
      
      private var §&!Y§:int;
      
      private var §,+§:Vector.<§,N§>;
      
      private var §!i§:int;
      
      private var §"!u§:Context3D;
      
      private var §#!K§:int = -1;
      
      public function §1!O§()
      {
         super();
         this.§]4§ = new Matrix3D();
         this.§-E§ = new Matrix3D();
         this.§"a§ = new Matrix3D();
         this.§'X§ = new Vector.<Matrix3D>(0);
         this.§&!Y§ = 0;
         this.§!i§ = 0;
         this.§,+§ = new Vector.<§,N§>();
         if(§%!m§ == null)
         {
            §%!m§ = [];
         }
         this.§9m§();
         this.§+<§(400,300);
         §!!l§.§`7§.addEventListener(Event.CONTEXT3D_CREATE,this.§ i§);
      }
      
      public static function §[!3§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§0!6§(param1);
      }
      
      public static function §@[§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?X§.§3P§(param2) / 255,§?X§.§2z§(param2) / 255,§?X§.§`!f§(param2) / 255,param3);
      }
      
      protected function get § D§() : Matrix3D
      {
         return this.§-E§;
      }
      
      protected function get §6A§() : Matrix3D
      {
         return this.§]4§;
      }
      
      public function §0"3§(param1:Context3D, param2:int) : void
      {
         this.§"!u§ = param1;
         this.§#!K§ = param2;
      }
      
      public function get §4_§() : Context3D
      {
         return this.§"!u§;
      }
      
      public function get §]8§() : int
      {
         return this.§#!K§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,N§ = null;
         for each(_loc1_ in this.§,+§)
         {
            _loc1_.dispose();
         }
         if(§!!l§.§`7§)
         {
            §!!l§.§`7§.removeEventListener(Event.CONTEXT3D_CREATE,this.§ i§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?X§.§3P§(param2) / 255,§?X§.§2z§(param2) / 255,§?X§.§`!f§(param2) / 255,param3);
      }
      
      private function § i§(param1:Event) : void
      {
         this.§,+§ = new <§,N§>[new §,N§()];
      }
      
      public function §+<§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §0!§[0] = 2 / param1;
         §0!§[1] = §0!§[2] = §0!§[3] = §0!§[4] = 0;
         §0!§[5] = -2 / param2;
         §0!§[6] = §0!§[7] = §0!§[8] = §0!§[9] = 0;
         §0!§[10] = -2 / (param4 - param3);
         §0!§[11] = 0;
         §0!§[12] = -1;
         §0!§[13] = 1;
         §0!§[14] = -(param4 + param3) / (param4 - param3);
         §0!§[15] = 1;
         this.§]4§.copyRawDataFrom(§0!§);
      }
      
      public function §9m§() : void
      {
         this.§-E§.identity();
      }
      
      public function §#"2§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§-E§.prependTranslation(param1,param2,param3);
      }
      
      public function §`!N§(param1:Number, param2:Vector3D = null) : void
      {
         this.§-E§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §]!T§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§-E§.prependScale(param1,param2,param3);
      }
      
      public function §0!6§(param1:DisplayObject) : void
      {
         param1.§0!6§(this.§-E§);
      }
      
      public function §<"§() : void
      {
         if(this.§'X§.length < this.§&!Y§ + 1)
         {
            this.§'X§.push(new Matrix3D());
         }
         this.§'X§[this.§&!Y§++].copyFrom(this.§-E§);
      }
      
      public function §^k§() : void
      {
         this.§-E§.copyFrom(this.§'X§[--this.§&!Y§]);
      }
      
      public function §3!V§() : void
      {
         this.§&!Y§ = 0;
         this.§9m§();
      }
      
      public function get §??§() : Matrix3D
      {
         this.§"a§.identity();
         this.§"a§.append(this.§-E§);
         this.§"a§.append(this.§]4§);
         return this.§"a§;
      }
      
      public function batchQuad(param1:§5!W§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§+!q§.§5"&§(param1,param3,param4))
         {
            this.§%A§();
         }
         this.§+!q§.§,M§(param1,param2,param3,param4,this.§-E§);
      }
      
      public function §%A§() : void
      {
         if(this.§+!q§.§-!d§ > 0)
         {
            this.§+!q§.render(this.§4_§,this.§]4§);
            this.§+!q§.reset();
            ++this.§!i§;
            if(this.§,+§.length <= this.§!i§)
            {
               this.§,+§.push(new §,N§());
            }
         }
      }
      
      public function §@&§() : void
      {
         this.§3!V§();
         this.§!i§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §+!q§() : §,N§
      {
         return this.§,+§[this.§!i§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §%!m§[param2])
         {
            §%!m§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §1n§)
         {
            §1n§ = param2;
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
