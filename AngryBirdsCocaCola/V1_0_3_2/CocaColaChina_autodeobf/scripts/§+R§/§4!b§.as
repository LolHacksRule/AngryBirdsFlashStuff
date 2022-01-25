package §+R§
{
   import §#!a§.Texture;
   import §;t§.*;
   import §^!L§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §4!b§
   {
      
      private static var §>T§:Array;
      
      private static var §&!-§:Program3D;
      
      private static var §0E§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §2e§:Matrix3D;
      
      private var §>!7§:Matrix3D;
      
      private var §&!5§:Matrix3D;
      
      private var §'d§:Vector.<Matrix3D>;
      
      private var §&6§:int;
      
      private var §7!`§:Vector.<§6W§>;
      
      private var §6%§:int;
      
      private var §#!<§:Context3D;
      
      private var §7!^§:int = -1;
      
      public function §4!b§()
      {
         super();
         this.§2e§ = new Matrix3D();
         this.§>!7§ = new Matrix3D();
         this.§&!5§ = new Matrix3D();
         this.§'d§ = new Vector.<Matrix3D>(0);
         this.§&6§ = 0;
         this.§6%§ = 0;
         this.§7!`§ = new Vector.<§6W§>();
         if(§>T§ == null)
         {
            §>T§ = [];
         }
         this.§7!O§();
         this.§0!8§(400,300);
         §0O§.§=&§.addEventListener(Event.CONTEXT3D_CREATE,this.§-b§);
      }
      
      public static function §8>§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§?#§(param1);
      }
      
      public static function §<!+§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§#!`§.§^!I§(param2) / 255,§#!`§.§;p§(param2) / 255,§#!`§.§-!"§(param2) / 255,param3);
      }
      
      protected function get §>!N§() : Matrix3D
      {
         return this.§>!7§;
      }
      
      protected function get §;!"§() : Matrix3D
      {
         return this.§2e§;
      }
      
      public function §2=§(param1:Context3D, param2:int) : void
      {
         this.§#!<§ = param1;
         this.§7!^§ = param2;
      }
      
      public function get §;!?§() : Context3D
      {
         return this.§#!<§;
      }
      
      public function get §4!Q§() : int
      {
         return this.§7!^§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6W§ = null;
         for each(_loc1_ in this.§7!`§)
         {
            _loc1_.dispose();
         }
         if(§0O§.§=&§)
         {
            §0O§.§=&§.removeEventListener(Event.CONTEXT3D_CREATE,this.§-b§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§#!`§.§^!I§(param2) / 255,§#!`§.§;p§(param2) / 255,§#!`§.§-!"§(param2) / 255,param3);
      }
      
      private function §-b§(param1:Event) : void
      {
         this.§7!`§ = new <§6W§>[new §6W§()];
      }
      
      public function §0!8§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §0E§[0] = 2 / param1;
         §0E§[1] = §0E§[2] = §0E§[3] = §0E§[4] = 0;
         §0E§[5] = -2 / param2;
         §0E§[6] = §0E§[7] = §0E§[8] = §0E§[9] = 0;
         §0E§[10] = -2 / (param4 - param3);
         §0E§[11] = 0;
         §0E§[12] = -1;
         §0E§[13] = 1;
         §0E§[14] = -(param4 + param3) / (param4 - param3);
         §0E§[15] = 1;
         this.§2e§.copyRawDataFrom(§0E§);
      }
      
      public function §7!O§() : void
      {
         this.§>!7§.identity();
      }
      
      public function §+!a§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§>!7§.prependTranslation(param1,param2,param3);
      }
      
      public function §&E§(param1:Number, param2:Vector3D = null) : void
      {
         this.§>!7§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §?Z§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§>!7§.prependScale(param1,param2,param3);
      }
      
      public function §?#§(param1:DisplayObject) : void
      {
         param1.§?#§(this.§>!7§);
      }
      
      public function §@%§() : void
      {
         if(this.§'d§.length < this.§&6§ + 1)
         {
            this.§'d§.push(new Matrix3D());
         }
         this.§'d§[this.§&6§++].copyFrom(this.§>!7§);
      }
      
      public function §]!I§() : void
      {
         this.§>!7§.copyFrom(this.§'d§[--this.§&6§]);
      }
      
      public function § !+§() : void
      {
         this.§&6§ = 0;
         this.§7!O§();
      }
      
      public function get §,!#§() : Matrix3D
      {
         this.§&!5§.identity();
         this.§&!5§.append(this.§>!7§);
         this.§&!5§.append(this.§2e§);
         return this.§&!5§;
      }
      
      public function batchQuad(param1:§6!K§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§8I§.§1! §(param1,param3,param4))
         {
            this.§]!C§();
         }
         this.§8I§.§]!]§(param1,param2,param3,param4,this.§>!7§);
      }
      
      public function §]!C§() : void
      {
         if(this.§8I§.§,X§ > 0)
         {
            this.§8I§.render(this.§;!?§,this.§2e§);
            this.§8I§.reset();
            ++this.§6%§;
            if(this.§7!`§.length <= this.§6%§)
            {
               this.§7!`§.push(new §6W§());
            }
         }
      }
      
      public function §,j§() : void
      {
         this.§ !+§();
         this.§6%§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §8I§() : §6W§
      {
         return this.§7!`§[this.§6%§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §>T§[param2])
         {
            §>T§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §&!-§)
         {
            §&!-§ = param2;
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
