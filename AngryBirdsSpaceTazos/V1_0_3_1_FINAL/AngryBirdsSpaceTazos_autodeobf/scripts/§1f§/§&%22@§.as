package §1f§
{
   import §'@§.Texture;
   import §4"@§.*;
   import §[4§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §&"@§
   {
      
      private static var §8T§:Array;
      
      private static var §6H§:Program3D;
      
      private static var §+"4§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §<!q§:Matrix3D;
      
      private var §]!6§:Matrix3D;
      
      private var §0B§:Matrix3D;
      
      private var §?M§:Vector.<Matrix3D>;
      
      private var §2!!§:int;
      
      private var §0"$§:Vector.<§[!J§>;
      
      private var §@!8§:int;
      
      private var §&O§:Context3D;
      
      private var §^"B§:int = -1;
      
      public function §&"@§()
      {
         super();
         this.§<!q§ = new Matrix3D();
         this.§]!6§ = new Matrix3D();
         this.§0B§ = new Matrix3D();
         this.§?M§ = new Vector.<Matrix3D>(0);
         this.§2!!§ = 0;
         this.§@!8§ = 0;
         this.§0"$§ = new Vector.<§[!J§>();
         if(§8T§ == null)
         {
            §8T§ = [];
         }
         this.§'"0§();
         this.§?"6§(400,300);
         §9H§.§0"'§.addEventListener(Event.CONTEXT3D_CREATE,this.§&Q§);
      }
      
      public static function §9>§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§]"2§(param1);
      }
      
      public static function §4!o§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§1R§.§7!§(param2) / 255,§1R§.§&_§(param2) / 255,§1R§.§&^§(param2) / 255,param3);
      }
      
      protected function get §&!]§() : Matrix3D
      {
         return this.§]!6§;
      }
      
      protected function get §1-§() : Matrix3D
      {
         return this.§<!q§;
      }
      
      public function §>T§(param1:Context3D, param2:int) : void
      {
         this.§&O§ = param1;
         this.§^"B§ = param2;
      }
      
      public function get §>!V§() : Context3D
      {
         return this.§&O§;
      }
      
      public function get §9L§() : int
      {
         return this.§^"B§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§[!J§ = null;
         for each(_loc1_ in this.§0"$§)
         {
            _loc1_.dispose();
         }
         if(§9H§.§0"'§)
         {
            §9H§.§0"'§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&Q§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§1R§.§7!§(param2) / 255,§1R§.§&_§(param2) / 255,§1R§.§&^§(param2) / 255,param3);
      }
      
      private function §&Q§(param1:Event) : void
      {
         this.§0"$§ = new <§[!J§>[new §[!J§()];
      }
      
      public function §?"6§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §+"4§[0] = 2 / param1;
         §+"4§[1] = §+"4§[2] = §+"4§[3] = §+"4§[4] = 0;
         §+"4§[5] = -2 / param2;
         §+"4§[6] = §+"4§[7] = §+"4§[8] = §+"4§[9] = 0;
         §+"4§[10] = -2 / (param4 - param3);
         §+"4§[11] = 0;
         §+"4§[12] = -1;
         §+"4§[13] = 1;
         §+"4§[14] = -(param4 + param3) / (param4 - param3);
         §+"4§[15] = 1;
         this.§<!q§.copyRawDataFrom(§+"4§);
      }
      
      public function §'"0§() : void
      {
         this.§]!6§.identity();
      }
      
      public function §8t§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§]!6§.prependTranslation(param1,param2,param3);
      }
      
      public function §^T§(param1:Number, param2:Vector3D = null) : void
      {
         this.§]!6§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §4!$§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§]!6§.prependScale(param1,param2,param3);
      }
      
      public function §]"2§(param1:DisplayObject) : void
      {
         param1.§]"2§(this.§]!6§);
      }
      
      public function §4!2§() : void
      {
         if(this.§?M§.length < this.§2!!§ + 1)
         {
            this.§?M§.push(new Matrix3D());
         }
         this.§?M§[this.§2!!§++].copyFrom(this.§]!6§);
      }
      
      public function §7!Q§() : void
      {
         this.§]!6§.copyFrom(this.§?M§[--this.§2!!§]);
      }
      
      public function §1_§() : void
      {
         this.§2!!§ = 0;
         this.§'"0§();
      }
      
      public function get §#!$§() : Matrix3D
      {
         this.§0B§.identity();
         this.§0B§.append(this.§]!6§);
         this.§0B§.append(this.§<!q§);
         return this.§0B§;
      }
      
      public function batchQuad(param1:§6p§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§+"#§.§2"D§(param1,param3,param4,param2))
         {
            this.§7j§();
         }
         this.§+"#§.§%l§(param1,param2,param3,param4,this.§]!6§);
      }
      
      public function §7j§() : void
      {
         if(this.§+"#§.§%!N§ > 0)
         {
            this.§+"#§.render(this.§>!V§,this.§<!q§);
            this.§+"#§.reset();
            ++this.§@!8§;
            if(this.§0"$§.length <= this.§@!8§)
            {
               this.§0"$§.push(new §[!J§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§1_§();
         this.§@!8§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §+"#§() : §[!J§
      {
         return this.§0"$§[this.§@!8§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §8T§[param2])
         {
            §8T§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §6H§)
         {
            §6H§ = param2;
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
