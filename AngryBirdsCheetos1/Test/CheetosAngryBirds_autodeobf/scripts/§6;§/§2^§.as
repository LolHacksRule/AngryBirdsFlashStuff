package §6;§
{
   import §4v§.*;
   import §]!a§.Texture;
   import §^a§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §2^§
   {
      
      private static var §&!I§:Array;
      
      private static var §"<§:Program3D;
      
      private static var §`,§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §1!X§:Matrix3D;
      
      private var §=B§:Matrix3D;
      
      private var §4_§:Matrix3D;
      
      private var §2!+§:Vector.<Matrix3D>;
      
      private var § !e§:int;
      
      private var §1!_§:Vector.<§1!B§>;
      
      private var §6o§:int;
      
      private var §71§:Context3D;
      
      private var §5!@§:int = -1;
      
      public function §2^§()
      {
         super();
         this.§1!X§ = new Matrix3D();
         this.§=B§ = new Matrix3D();
         this.§4_§ = new Matrix3D();
         this.§2!+§ = new Vector.<Matrix3D>(0);
         this.§ !e§ = 0;
         this.§6o§ = 0;
         this.§1!_§ = new Vector.<§1!B§>();
         if(§&!I§ == null)
         {
            §&!I§ = [];
         }
         this.§8G§();
         this.§+l§(400,300);
         §%[§.§`1§.addEventListener(Event.CONTEXT3D_CREATE,this.§&!S§);
      }
      
      public static function §=3§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§`P§(param1);
      }
      
      public static function §6!=§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§@A§.§2!O§(param2) / 255,§@A§.§>!Q§(param2) / 255,§@A§.§9Z§(param2) / 255,param3);
      }
      
      protected function get §<!§() : Matrix3D
      {
         return this.§=B§;
      }
      
      protected function get §,`§() : Matrix3D
      {
         return this.§1!X§;
      }
      
      public function §0,§(param1:Context3D, param2:int) : void
      {
         this.§71§ = param1;
         this.§5!@§ = param2;
      }
      
      public function get §'!&§() : Context3D
      {
         return this.§71§;
      }
      
      public function get §?N§() : int
      {
         return this.§5!@§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1!B§ = null;
         for each(_loc1_ in this.§1!_§)
         {
            _loc1_.dispose();
         }
         if(§%[§.§`1§)
         {
            §%[§.§`1§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&!S§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§@A§.§2!O§(param2) / 255,§@A§.§>!Q§(param2) / 255,§@A§.§9Z§(param2) / 255,param3);
      }
      
      private function §&!S§(param1:Event) : void
      {
         this.§1!_§ = new <§1!B§>[new §1!B§()];
      }
      
      public function §+l§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §`,§[0] = 2 / param1;
         §`,§[1] = §`,§[2] = §`,§[3] = §`,§[4] = 0;
         §`,§[5] = -2 / param2;
         §`,§[6] = §`,§[7] = §`,§[8] = §`,§[9] = 0;
         §`,§[10] = -2 / (param4 - param3);
         §`,§[11] = 0;
         §`,§[12] = -1;
         §`,§[13] = 1;
         §`,§[14] = -(param4 + param3) / (param4 - param3);
         §`,§[15] = 1;
         this.§1!X§.copyRawDataFrom(§`,§);
      }
      
      public function §8G§() : void
      {
         this.§=B§.identity();
      }
      
      public function §2?§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§=B§.prependTranslation(param1,param2,param3);
      }
      
      public function §#,§(param1:Number, param2:Vector3D = null) : void
      {
         this.§=B§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §1![§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§=B§.prependScale(param1,param2,param3);
      }
      
      public function §`P§(param1:DisplayObject) : void
      {
         param1.§`P§(this.§=B§);
      }
      
      public function §=X§() : void
      {
         if(this.§2!+§.length < this.§ !e§ + 1)
         {
            this.§2!+§.push(new Matrix3D());
         }
         this.§2!+§[this.§ !e§++].copyFrom(this.§=B§);
      }
      
      public function §0!6§() : void
      {
         this.§=B§.copyFrom(this.§2!+§[--this.§ !e§]);
      }
      
      public function §47§() : void
      {
         this.§ !e§ = 0;
         this.§8G§();
      }
      
      public function get §?#§() : Matrix3D
      {
         this.§4_§.identity();
         this.§4_§.append(this.§=B§);
         this.§4_§.append(this.§1!X§);
         return this.§4_§;
      }
      
      public function batchQuad(param1:§ !'§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§,f§.§=0§(param1,param3,param4,param2))
         {
            this.§9,§();
         }
         this.§,f§.§16§(param1,param2,param3,param4,this.§=B§);
      }
      
      public function §9,§() : void
      {
         if(this.§,f§.§7!!§ > 0)
         {
            this.§,f§.render(this.§'!&§,this.§1!X§);
            this.§,f§.reset();
            ++this.§6o§;
            if(this.§1!_§.length <= this.§6o§)
            {
               this.§1!_§.push(new §1!B§());
            }
         }
      }
      
      public function §4!!§() : void
      {
         this.§47§();
         this.§6o§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §,f§() : §1!B§
      {
         return this.§1!_§[this.§6o§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §&!I§[param2])
         {
            §&!I§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §"<§)
         {
            §"<§ = param2;
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
