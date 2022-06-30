package §>Q§
{
   import § !9§.Texture;
   import §8!4§.*;
   import §[=§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §<!%§
   {
      
      private static var §'I§:Array;
      
      private static var §@y§:Program3D;
      
      private static var §6!H§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §="§:Matrix3D;
      
      private var §=!]§:Matrix3D;
      
      private var §@;§:Matrix3D;
      
      private var §4F§:Vector.<Matrix3D>;
      
      private var §<f§:int;
      
      private var §#u§:Vector.<§4?§>;
      
      private var §=s§:int;
      
      private var §[W§:Context3D;
      
      private var §<8§:int = -1;
      
      public function §<!%§()
      {
         super();
         this.§="§ = new Matrix3D();
         this.§=!]§ = new Matrix3D();
         this.§@;§ = new Matrix3D();
         this.§4F§ = new Vector.<Matrix3D>(0);
         this.§<f§ = 0;
         this.§=s§ = 0;
         this.§#u§ = new Vector.<§4?§>();
         if(§'I§ == null)
         {
            §'I§ = [];
         }
         this.§&u§();
         this.§ !-§(400,300);
         §5!5§.§5F§.addEventListener(Event.CONTEXT3D_CREATE,this.§?!D§);
      }
      
      public static function §=!N§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§?!H§(param1);
      }
      
      public static function §=!0§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§'! §.§;_§(param2) / 255,§'! §.§8^§(param2) / 255,§'! §.§'c§(param2) / 255,param3);
      }
      
      protected function get §3!H§() : Matrix3D
      {
         return this.§=!]§;
      }
      
      protected function get § !L§() : Matrix3D
      {
         return this.§="§;
      }
      
      public function §3!^§(param1:Context3D, param2:int) : void
      {
         this.§[W§ = param1;
         this.§<8§ = param2;
      }
      
      public function get §`O§() : Context3D
      {
         return this.§[W§;
      }
      
      public function get §@U§() : int
      {
         return this.§<8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§4?§ = null;
         for each(_loc1_ in this.§#u§)
         {
            _loc1_.dispose();
         }
         if(§5!5§.§5F§)
         {
            §5!5§.§5F§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?!D§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§'! §.§;_§(param2) / 255,§'! §.§8^§(param2) / 255,§'! §.§'c§(param2) / 255,param3);
      }
      
      private function §?!D§(param1:Event) : void
      {
         this.§#u§ = new <§4?§>[new §4?§()];
      }
      
      public function § !-§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §6!H§[0] = 2 / param1;
         §6!H§[1] = §6!H§[2] = §6!H§[3] = §6!H§[4] = 0;
         §6!H§[5] = -2 / param2;
         §6!H§[6] = §6!H§[7] = §6!H§[8] = §6!H§[9] = 0;
         §6!H§[10] = -2 / (param4 - param3);
         §6!H§[11] = 0;
         §6!H§[12] = -1;
         §6!H§[13] = 1;
         §6!H§[14] = -(param4 + param3) / (param4 - param3);
         §6!H§[15] = 1;
         this.§="§.copyRawDataFrom(§6!H§);
      }
      
      public function §&u§() : void
      {
         this.§=!]§.identity();
      }
      
      public function §in§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§=!]§.prependTranslation(param1,param2,param3);
      }
      
      public function §9!Q§(param1:Number, param2:Vector3D = null) : void
      {
         this.§=!]§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §`§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§=!]§.prependScale(param1,param2,param3);
      }
      
      public function §?!H§(param1:DisplayObject) : void
      {
         param1.§?!H§(this.§=!]§);
      }
      
      public function §?Q§() : void
      {
         if(this.§4F§.length < this.§<f§ + 1)
         {
            this.§4F§.push(new Matrix3D());
         }
         this.§4F§[this.§<f§++].copyFrom(this.§=!]§);
      }
      
      public function §;3§() : void
      {
         this.§=!]§.copyFrom(this.§4F§[--this.§<f§]);
      }
      
      public function §;#§() : void
      {
         this.§<f§ = 0;
         this.§&u§();
      }
      
      public function get §'!D§() : Matrix3D
      {
         this.§@;§.identity();
         this.§@;§.append(this.§=!]§);
         this.§@;§.append(this.§="§);
         return this.§@;§;
      }
      
      public function batchQuad(param1:§=!I§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§3y§.§,!>§(param1,param3,param4))
         {
            this.§"$§();
         }
         this.§3y§.§]!V§(param1,param2,param3,param4,this.§=!]§);
      }
      
      public function §"$§() : void
      {
         if(this.§3y§.§>!Z§ > 0)
         {
            this.§3y§.render(this.§`O§,this.§="§);
            this.§3y§.reset();
            ++this.§=s§;
            if(this.§#u§.length <= this.§=s§)
            {
               this.§#u§.push(new §4?§());
            }
         }
      }
      
      public function § !A§() : void
      {
         this.§;#§();
         this.§=s§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §3y§() : §4?§
      {
         return this.§#u§[this.§=s§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §'I§[param2])
         {
            §'I§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §@y§)
         {
            §@y§ = param2;
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
