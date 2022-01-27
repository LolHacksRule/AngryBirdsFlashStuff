package §5J§
{
   import §#M§.*;
   import §0l§.Texture;
   import §3H§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §4!3§
   {
      
      private static var §#5§:Array;
      
      private static var §5Y§:Program3D;
      
      private static var §;!J§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §0'§:Matrix3D;
      
      private var §7!9§:Matrix3D;
      
      private var §>!K§:Matrix3D;
      
      private var §23§:Vector.<Matrix3D>;
      
      private var §4L§:int;
      
      private var §3!2§:Vector.<§catch§>;
      
      private var §!E§:int;
      
      private var §@e§:Context3D;
      
      private var §;!N§:int = -1;
      
      public function §4!3§()
      {
         super();
         this.§0'§ = new Matrix3D();
         this.§7!9§ = new Matrix3D();
         this.§>!K§ = new Matrix3D();
         this.§23§ = new Vector.<Matrix3D>(0);
         this.§4L§ = 0;
         this.§!E§ = 0;
         this.§3!2§ = new Vector.<§catch§>();
         if(§#5§ == null)
         {
            §#5§ = [];
         }
         this.§>9§();
         this.§@U§(400,300);
         §>$§.§-U§.addEventListener(Event.CONTEXT3D_CREATE,this.§8x§);
      }
      
      public static function §?u§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§'!6§(param1);
      }
      
      public static function § =§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§99§.§8`§(param2) / 255,§99§.§[3§(param2) / 255,§99§.§<K§(param2) / 255,param3);
      }
      
      protected function get §[5§() : Matrix3D
      {
         return this.§7!9§;
      }
      
      protected function get §1y§() : Matrix3D
      {
         return this.§0'§;
      }
      
      public function §"!;§(param1:Context3D, param2:int) : void
      {
         this.§@e§ = param1;
         this.§;!N§ = param2;
      }
      
      public function get §0b§() : Context3D
      {
         return this.§@e§;
      }
      
      public function get §8N§() : int
      {
         return this.§;!N§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§catch§ = null;
         for each(_loc1_ in this.§3!2§)
         {
            _loc1_.dispose();
         }
         if(§>$§.§-U§)
         {
            §>$§.§-U§.removeEventListener(Event.CONTEXT3D_CREATE,this.§8x§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§99§.§8`§(param2) / 255,§99§.§[3§(param2) / 255,§99§.§<K§(param2) / 255,param3);
      }
      
      private function §8x§(param1:Event) : void
      {
         this.§3!2§ = new <§catch§>[new §catch§()];
      }
      
      public function §@U§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §;!J§[0] = 2 / param1;
         §;!J§[1] = §;!J§[2] = §;!J§[3] = §;!J§[4] = 0;
         §;!J§[5] = -2 / param2;
         §;!J§[6] = §;!J§[7] = §;!J§[8] = §;!J§[9] = 0;
         §;!J§[10] = -2 / (param4 - param3);
         §;!J§[11] = 0;
         §;!J§[12] = -1;
         §;!J§[13] = 1;
         §;!J§[14] = -(param4 + param3) / (param4 - param3);
         §;!J§[15] = 1;
         this.§0'§.copyRawDataFrom(§;!J§);
      }
      
      public function §>9§() : void
      {
         this.§7!9§.identity();
      }
      
      public function §&!F§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§7!9§.prependTranslation(param1,param2,param3);
      }
      
      public function § ?§(param1:Number, param2:Vector3D = null) : void
      {
         this.§7!9§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §<]§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§7!9§.prependScale(param1,param2,param3);
      }
      
      public function §'!6§(param1:DisplayObject) : void
      {
         param1.§'!6§(this.§7!9§);
      }
      
      public function §#!#§() : void
      {
         if(this.§23§.length < this.§4L§ + 1)
         {
            this.§23§.push(new Matrix3D());
         }
         this.§23§[this.§4L§++].copyFrom(this.§7!9§);
      }
      
      public function §"r§() : void
      {
         this.§7!9§.copyFrom(this.§23§[--this.§4L§]);
      }
      
      public function § P§() : void
      {
         this.§4L§ = 0;
         this.§>9§();
      }
      
      public function get §@i§() : Matrix3D
      {
         this.§>!K§.identity();
         this.§>!K§.append(this.§7!9§);
         this.§>!K§.append(this.§0'§);
         return this.§>!K§;
      }
      
      public function batchQuad(param1:§!q§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§4K§.§49§(param1,param3,param4))
         {
            this.§1F§();
         }
         this.§4K§.§'+§(param1,param2,param3,param4,this.§7!9§);
      }
      
      public function §1F§() : void
      {
         if(this.§4K§.§<!>§ > 0)
         {
            this.§4K§.render(this.§0b§,this.§0'§);
            this.§4K§.reset();
            ++this.§!E§;
            if(this.§3!2§.length <= this.§!E§)
            {
               this.§3!2§.push(new §catch§());
            }
         }
      }
      
      public function §@Z§() : void
      {
         this.§ P§();
         this.§!E§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §4K§() : §catch§
      {
         return this.§3!2§[this.§!E§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §#5§[param2])
         {
            §#5§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §5Y§)
         {
            §5Y§ = param2;
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
