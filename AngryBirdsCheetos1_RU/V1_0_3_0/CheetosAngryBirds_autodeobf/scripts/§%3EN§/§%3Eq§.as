package §>N§
{
   import §+a§.Texture;
   import §-!%§.*;
   import §9!a§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §>q§
   {
      
      private static var §,]§:Array;
      
      private static var §-6§:Program3D;
      
      private static var §2G§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §0!D§:Matrix3D;
      
      private var §1%§:Matrix3D;
      
      private var §6@§:Matrix3D;
      
      private var § a§:Vector.<Matrix3D>;
      
      private var §-V§:int;
      
      private var §@H§:Vector.<§1!+§>;
      
      private var §@4§:int;
      
      private var §+!5§:Context3D;
      
      private var §7Z§:int = -1;
      
      public function §>q§()
      {
         super();
         this.§0!D§ = new Matrix3D();
         this.§1%§ = new Matrix3D();
         this.§6@§ = new Matrix3D();
         this.§ a§ = new Vector.<Matrix3D>(0);
         this.§-V§ = 0;
         this.§@4§ = 0;
         this.§@H§ = new Vector.<§1!+§>();
         if(§,]§ == null)
         {
            §,]§ = [];
         }
         this.§?o§();
         this.§3o§(400,300);
         §"u§.§-2§.addEventListener(Event.CONTEXT3D_CREATE,this.§3!?§);
      }
      
      public static function §]!I§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§7S§(param1);
      }
      
      public static function § 4§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§8!'§.§83§(param2) / 255,§8!'§.§,B§(param2) / 255,§8!'§.§&z§(param2) / 255,param3);
      }
      
      protected function get §!!!§() : Matrix3D
      {
         return this.§1%§;
      }
      
      protected function get §[U§() : Matrix3D
      {
         return this.§0!D§;
      }
      
      public function §!C§(param1:Context3D, param2:int) : void
      {
         this.§+!5§ = param1;
         this.§7Z§ = param2;
      }
      
      public function get §>!O§() : Context3D
      {
         return this.§+!5§;
      }
      
      public function get §6!I§() : int
      {
         return this.§7Z§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§1!+§ = null;
         for each(_loc1_ in this.§@H§)
         {
            _loc1_.dispose();
         }
         if(§"u§.§-2§)
         {
            §"u§.§-2§.removeEventListener(Event.CONTEXT3D_CREATE,this.§3!?§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§8!'§.§83§(param2) / 255,§8!'§.§,B§(param2) / 255,§8!'§.§&z§(param2) / 255,param3);
      }
      
      private function §3!?§(param1:Event) : void
      {
         this.§@H§ = new <§1!+§>[new §1!+§()];
      }
      
      public function §3o§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §2G§[0] = 2 / param1;
         §2G§[1] = §2G§[2] = §2G§[3] = §2G§[4] = 0;
         §2G§[5] = -2 / param2;
         §2G§[6] = §2G§[7] = §2G§[8] = §2G§[9] = 0;
         §2G§[10] = -2 / (param4 - param3);
         §2G§[11] = 0;
         §2G§[12] = -1;
         §2G§[13] = 1;
         §2G§[14] = -(param4 + param3) / (param4 - param3);
         §2G§[15] = 1;
         this.§0!D§.copyRawDataFrom(§2G§);
      }
      
      public function §?o§() : void
      {
         this.§1%§.identity();
      }
      
      public function §9w§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§1%§.prependTranslation(param1,param2,param3);
      }
      
      public function §1!B§(param1:Number, param2:Vector3D = null) : void
      {
         this.§1%§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §;2§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§1%§.prependScale(param1,param2,param3);
      }
      
      public function §7S§(param1:DisplayObject) : void
      {
         param1.§7S§(this.§1%§);
      }
      
      public function §0!]§() : void
      {
         if(this.§ a§.length < this.§-V§ + 1)
         {
            this.§ a§.push(new Matrix3D());
         }
         this.§ a§[this.§-V§++].copyFrom(this.§1%§);
      }
      
      public function §1$§() : void
      {
         this.§1%§.copyFrom(this.§ a§[--this.§-V§]);
      }
      
      public function §1J§() : void
      {
         this.§-V§ = 0;
         this.§?o§();
      }
      
      public function get §7!&§() : Matrix3D
      {
         this.§6@§.identity();
         this.§6@§.append(this.§1%§);
         this.§6@§.append(this.§0!D§);
         return this.§6@§;
      }
      
      public function batchQuad(param1:§]o§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§3!O§.§>p§(param1,param3,param4))
         {
            this.§0o§();
         }
         this.§3!O§.§"o§(param1,param2,param3,param4,this.§1%§);
      }
      
      public function §0o§() : void
      {
         if(this.§3!O§.§1Q§ > 0)
         {
            this.§3!O§.render(this.§>!O§,this.§0!D§);
            this.§3!O§.reset();
            ++this.§@4§;
            if(this.§@H§.length <= this.§@4§)
            {
               this.§@H§.push(new §1!+§());
            }
         }
      }
      
      public function §'&§() : void
      {
         this.§1J§();
         this.§@4§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §3!O§() : §1!+§
      {
         return this.§@H§[this.§@4§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §,]§[param2])
         {
            §,]§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §-6§)
         {
            §-6§ = param2;
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
