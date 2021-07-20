package §&L§
{
   import §!!S§.Texture;
   import §6!;§.*;
   import §`>§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §'I§
   {
      
      private static var §!!&§:Array;
      
      private static var §!a§:Program3D;
      
      private static var §3W§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §,?§:Matrix3D;
      
      private var §>?§:Matrix3D;
      
      private var §[e§:Matrix3D;
      
      private var §83§:Vector.<Matrix3D>;
      
      private var §!;§:int;
      
      private var §+o§:Vector.<§<!U§>;
      
      private var §2m§:int;
      
      private var §+!!§:Context3D;
      
      private var §7!O§:int = -1;
      
      public function §'I§()
      {
         super();
         this.§,?§ = new Matrix3D();
         this.§>?§ = new Matrix3D();
         this.§[e§ = new Matrix3D();
         this.§83§ = new Vector.<Matrix3D>(0);
         this.§!;§ = 0;
         this.§2m§ = 0;
         this.§+o§ = new Vector.<§<!U§>();
         if(§!!&§ == null)
         {
            §!!&§ = [];
         }
         this.§4S§();
         this.§`!U§(400,300);
         §?]§.§`!H§.addEventListener(Event.CONTEXT3D_CREATE,this.§7!g§);
      }
      
      public static function §!!g§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§"!2§(param1);
      }
      
      public static function §]Y§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§^!5§.§+!D§(param2) / 255,§^!5§.static(param2) / 255,§^!5§.§%D§(param2) / 255,param3);
      }
      
      protected function get §9_§() : Matrix3D
      {
         return this.§>?§;
      }
      
      protected function get §'U§() : Matrix3D
      {
         return this.§,?§;
      }
      
      public function §!!+§(param1:Context3D, param2:int) : void
      {
         this.§+!!§ = param1;
         this.§7!O§ = param2;
      }
      
      public function get §-!M§() : Context3D
      {
         return this.§+!!§;
      }
      
      public function get §!!_§() : int
      {
         return this.§7!O§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<!U§ = null;
         for each(_loc1_ in this.§+o§)
         {
            _loc1_.dispose();
         }
         if(§?]§.§`!H§)
         {
            §?]§.§`!H§.removeEventListener(Event.CONTEXT3D_CREATE,this.§7!g§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§^!5§.§+!D§(param2) / 255,§^!5§.static(param2) / 255,§^!5§.§%D§(param2) / 255,param3);
      }
      
      private function §7!g§(param1:Event) : void
      {
         this.§+o§ = new <§<!U§>[new §<!U§()];
      }
      
      public function §`!U§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §3W§[0] = 2 / param1;
         §3W§[1] = §3W§[2] = §3W§[3] = §3W§[4] = 0;
         §3W§[5] = -2 / param2;
         §3W§[6] = §3W§[7] = §3W§[8] = §3W§[9] = 0;
         §3W§[10] = -2 / (param4 - param3);
         §3W§[11] = 0;
         §3W§[12] = -1;
         §3W§[13] = 1;
         §3W§[14] = -(param4 + param3) / (param4 - param3);
         §3W§[15] = 1;
         this.§,?§.copyRawDataFrom(§3W§);
      }
      
      public function §4S§() : void
      {
         this.§>?§.identity();
      }
      
      public function §#S§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§>?§.prependTranslation(param1,param2,param3);
      }
      
      public function §8Z§(param1:Number, param2:Vector3D = null) : void
      {
         this.§>?§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §>2§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§>?§.prependScale(param1,param2,param3);
      }
      
      public function §"!2§(param1:DisplayObject) : void
      {
         param1.§"!2§(this.§>?§);
      }
      
      public function §'y§() : void
      {
         if(this.§83§.length < this.§!;§ + 1)
         {
            this.§83§.push(new Matrix3D());
         }
         this.§83§[this.§!;§++].copyFrom(this.§>?§);
      }
      
      public function §-!a§() : void
      {
         this.§>?§.copyFrom(this.§83§[--this.§!;§]);
      }
      
      public function §3S§() : void
      {
         this.§!;§ = 0;
         this.§4S§();
      }
      
      public function get §,7§() : Matrix3D
      {
         this.§[e§.identity();
         this.§[e§.append(this.§>?§);
         this.§[e§.append(this.§,?§);
         return this.§[e§;
      }
      
      public function batchQuad(param1:§;o§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§6I§.§;!b§(param1,param3,param4,param2))
         {
            this.§`w§();
         }
         this.§6I§.§<n§(param1,param2,param3,param4,this.§>?§);
      }
      
      public function §`w§() : void
      {
         if(this.§6I§.§<V§ > 0)
         {
            this.§6I§.render(this.§-!M§,this.§,?§);
            this.§6I§.reset();
            ++this.§2m§;
            if(this.§+o§.length <= this.§2m§)
            {
               this.§+o§.push(new §<!U§());
            }
         }
      }
      
      public function §4M§() : void
      {
         this.§3S§();
         this.§2m§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §6I§() : §<!U§
      {
         return this.§+o§[this.§2m§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §!!&§[param2])
         {
            §!!&§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §!a§)
         {
            §!a§ = param2;
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
