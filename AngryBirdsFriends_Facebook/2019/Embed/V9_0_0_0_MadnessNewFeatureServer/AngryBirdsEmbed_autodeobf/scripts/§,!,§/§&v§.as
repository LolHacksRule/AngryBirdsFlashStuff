package §,!,§
{
   import §21§.Texture;
   import §5^§.*;
   import §90§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §&v§
   {
      
      private static var §>!A§:Array;
      
      private static var § try§:Program3D;
      
      private static var §]#§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §2!J§:Matrix3D;
      
      private var §]t§:Matrix3D;
      
      private var §0!5§:Matrix3D;
      
      private var §6!J§:Vector.<Matrix3D>;
      
      private var §']§:int;
      
      private var §3V§:Vector.<§^!'§>;
      
      private var §1j§:int;
      
      private var §-!H§:Context3D;
      
      private var §9K§:int = -1;
      
      public function §&v§()
      {
         super();
         this.§2!J§ = new Matrix3D();
         this.§]t§ = new Matrix3D();
         this.§0!5§ = new Matrix3D();
         this.§6!J§ = new Vector.<Matrix3D>(0);
         this.§']§ = 0;
         this.§1j§ = 0;
         this.§3V§ = new Vector.<§^!'§>();
         if(§>!A§ == null)
         {
            §>!A§ = [];
         }
         this.§4A§();
         this.§ !"§(400,300);
         §2t§.§,!E§.addEventListener(Event.CONTEXT3D_CREATE,this.§>h§);
      }
      
      public static function §">§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§0!+§(param1);
      }
      
      public static function §"!%§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§;c§.§>!E§(param2) / 255,§;c§.§7F§(param2) / 255,§;c§.§0;§(param2) / 255,param3);
      }
      
      protected function get §?!5§() : Matrix3D
      {
         return this.§]t§;
      }
      
      protected function get §?!,§() : Matrix3D
      {
         return this.§2!J§;
      }
      
      public function §3J§(param1:Context3D, param2:int) : void
      {
         this.§-!H§ = param1;
         this.§9K§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§-!H§;
      }
      
      public function get §?!7§() : int
      {
         return this.§9K§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^!'§ = null;
         for each(_loc1_ in this.§3V§)
         {
            _loc1_.dispose();
         }
         if(§2t§.§,!E§)
         {
            §2t§.§,!E§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>h§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§;c§.§>!E§(param2) / 255,§;c§.§7F§(param2) / 255,§;c§.§0;§(param2) / 255,param3);
      }
      
      private function §>h§(param1:Event) : void
      {
         this.§3V§ = new <§^!'§>[new §^!'§()];
      }
      
      public function § !"§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §]#§[0] = 2 / param1;
         §]#§[1] = §]#§[2] = §]#§[3] = §]#§[4] = 0;
         §]#§[5] = -2 / param2;
         §]#§[6] = §]#§[7] = §]#§[8] = §]#§[9] = 0;
         §]#§[10] = -2 / (param4 - param3);
         §]#§[11] = 0;
         §]#§[12] = -1;
         §]#§[13] = 1;
         §]#§[14] = -(param4 + param3) / (param4 - param3);
         §]#§[15] = 1;
         this.§2!J§.copyRawDataFrom(§]#§);
      }
      
      public function §4A§() : void
      {
         this.§]t§.identity();
      }
      
      public function §92§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§]t§.prependTranslation(param1,param2,param3);
      }
      
      public function §[X§(param1:Number, param2:Vector3D = null) : void
      {
         this.§]t§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §]!'§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§]t§.prependScale(param1,param2,param3);
      }
      
      public function §0!+§(param1:DisplayObject) : void
      {
         param1.§0!+§(this.§]t§);
      }
      
      public function §>!"§() : void
      {
         if(this.§6!J§.length < this.§']§ + 1)
         {
            this.§6!J§.push(new Matrix3D());
         }
         this.§6!J§[this.§']§++].copyFrom(this.§]t§);
      }
      
      public function §%!"§() : void
      {
         this.§]t§.copyFrom(this.§6!J§[--this.§']§]);
      }
      
      public function §`!&§() : void
      {
         this.§']§ = 0;
         this.§4A§();
      }
      
      public function get §66§() : Matrix3D
      {
         this.§0!5§.identity();
         this.§0!5§.append(this.§]t§);
         this.§0!5§.append(this.§2!J§);
         return this.§0!5§;
      }
      
      public function batchQuad(param1:§0!'§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§use §.§9!8§(param1,param3,param4,param2))
         {
            this.§30§();
         }
         this.§use §.§9!9§(param1,param2,param3,param4,this.§]t§);
      }
      
      public function §30§() : void
      {
         if(this.§use §.override > 0)
         {
            this.§use §.render(this.context,this.§2!J§);
            this.§use §.reset();
            ++this.§1j§;
            if(this.§3V§.length <= this.§1j§)
            {
               this.§3V§.push(new §^!'§());
            }
         }
      }
      
      public function §;!§() : void
      {
         this.§`!&§();
         this.§1j§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §use §() : §^!'§
      {
         return this.§3V§[this.§1j§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §>!A§[param2])
         {
            §>!A§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != § try§)
         {
            § try§ = param2;
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
