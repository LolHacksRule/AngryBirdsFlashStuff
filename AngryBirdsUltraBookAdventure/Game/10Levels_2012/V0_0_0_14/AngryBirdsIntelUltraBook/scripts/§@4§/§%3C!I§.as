package §@4§
{
   import §!!9§.Texture;
   import §2N§.*;
   import §9E§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §<!I§
   {
      
      private static var §3!X§:Array;
      
      private static var §4!k§:Program3D;
      
      private static var §6^§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §7!q§:Matrix3D;
      
      private var §;W§:Matrix3D;
      
      private var §`!q§:Matrix3D;
      
      private var §;t§:Vector.<Matrix3D>;
      
      private var §0!&§:int;
      
      private var §!c§:Vector.<§]!8§>;
      
      private var §%w§:int;
      
      private var §%g§:Context3D;
      
      private var §3!_§:int = -1;
      
      public function §<!I§()
      {
         super();
         this.§7!q§ = new Matrix3D();
         this.§;W§ = new Matrix3D();
         this.§`!q§ = new Matrix3D();
         this.§;t§ = new Vector.<Matrix3D>(0);
         this.§0!&§ = 0;
         this.§%w§ = 0;
         this.§!c§ = new Vector.<§]!8§>();
         if(§3!X§ == null)
         {
            §3!X§ = [];
         }
         this.§]!d§();
         this.§&!j§(400,300);
         §,!]§.§!9§.addEventListener(Event.CONTEXT3D_CREATE,this.§,!f§);
      }
      
      public static function §<!'§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§>l§(param1);
      }
      
      public static function §1!6§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§;!u§.§>W§(param2) / 255,§;!u§.§^!Q§(param2) / 255,§;!u§.§+!1§(param2) / 255,param3);
      }
      
      protected function get §`!0§() : Matrix3D
      {
         return this.§;W§;
      }
      
      protected function get §!g§() : Matrix3D
      {
         return this.§7!q§;
      }
      
      public function §-F§(param1:Context3D, param2:int) : void
      {
         this.§%g§ = param1;
         this.§3!_§ = param2;
      }
      
      public function get §@?§() : Context3D
      {
         return this.§%g§;
      }
      
      public function get §-x§() : int
      {
         return this.§3!_§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]!8§ = null;
         for each(_loc1_ in this.§!c§)
         {
            _loc1_.dispose();
         }
         if(§,!]§.§!9§)
         {
            §,!]§.§!9§.removeEventListener(Event.CONTEXT3D_CREATE,this.§,!f§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§;!u§.§>W§(param2) / 255,§;!u§.§^!Q§(param2) / 255,§;!u§.§+!1§(param2) / 255,param3);
      }
      
      private function §,!f§(param1:Event) : void
      {
         this.§!c§ = new <§]!8§>[new §]!8§()];
      }
      
      public function §&!j§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §6^§[0] = 2 / param1;
         §6^§[1] = §6^§[2] = §6^§[3] = §6^§[4] = 0;
         §6^§[5] = -2 / param2;
         §6^§[6] = §6^§[7] = §6^§[8] = §6^§[9] = 0;
         §6^§[10] = -2 / (param4 - param3);
         §6^§[11] = 0;
         §6^§[12] = -1;
         §6^§[13] = 1;
         §6^§[14] = -(param4 + param3) / (param4 - param3);
         §6^§[15] = 1;
         this.§7!q§.copyRawDataFrom(§6^§);
      }
      
      public function §]!d§() : void
      {
         this.§;W§.identity();
      }
      
      public function §2!O§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§;W§.prependTranslation(param1,param2,param3);
      }
      
      public function §+f§(param1:Number, param2:Vector3D = null) : void
      {
         this.§;W§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §]!h§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§;W§.prependScale(param1,param2,param3);
      }
      
      public function §>l§(param1:DisplayObject) : void
      {
         param1.§>l§(this.§;W§);
      }
      
      public function §8R§() : void
      {
         if(this.§;t§.length < this.§0!&§ + 1)
         {
            this.§;t§.push(new Matrix3D());
         }
         this.§;t§[this.§0!&§++].copyFrom(this.§;W§);
      }
      
      public function §2a§() : void
      {
         this.§;W§.copyFrom(this.§;t§[--this.§0!&§]);
      }
      
      public function §3k§() : void
      {
         this.§0!&§ = 0;
         this.§]!d§();
      }
      
      public function get §?!G§() : Matrix3D
      {
         this.§`!q§.identity();
         this.§`!q§.append(this.§;W§);
         this.§`!q§.append(this.§7!q§);
         return this.§`!q§;
      }
      
      public function batchQuad(param1:§1!w§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§=6§.§"G§(param1,param3,param4))
         {
            this.§ ;§();
         }
         this.§=6§.§+!t§(param1,param2,param3,param4,this.§;W§);
      }
      
      public function § ;§() : void
      {
         if(this.§=6§.§1;§ > 0)
         {
            this.§=6§.render(this.§@?§,this.§7!q§);
            this.§=6§.reset();
            ++this.§%w§;
            if(this.§!c§.length <= this.§%w§)
            {
               this.§!c§.push(new §]!8§());
            }
         }
      }
      
      public function §3!A§() : void
      {
         this.§3k§();
         this.§%w§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §=6§() : §]!8§
      {
         return this.§!c§[this.§%w§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §3!X§[param2])
         {
            §3!X§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §4!k§)
         {
            §4!k§ = param2;
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
