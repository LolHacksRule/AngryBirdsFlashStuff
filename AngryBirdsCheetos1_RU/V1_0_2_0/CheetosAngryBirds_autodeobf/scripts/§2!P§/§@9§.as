package §2!P§
{
   import §&b§.*;
   import §,H§.*;
   import §,Y§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §@9§
   {
      
      private static var §6!I§:Array;
      
      private static var §5F§:Program3D;
      
      private static var §;p§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §;!5§:Matrix3D;
      
      private var §5!3§:Matrix3D;
      
      private var §@4§:Matrix3D;
      
      private var §'w§:Vector.<Matrix3D>;
      
      private var §'b§:int;
      
      private var §&=§:Vector.<§?!1§>;
      
      private var §6q§:int;
      
      private var §9t§:Context3D;
      
      private var §5!L§:int = -1;
      
      public function §@9§()
      {
         super();
         this.§;!5§ = new Matrix3D();
         this.§5!3§ = new Matrix3D();
         this.§@4§ = new Matrix3D();
         this.§'w§ = new Vector.<Matrix3D>(0);
         this.§'b§ = 0;
         this.§6q§ = 0;
         this.§&=§ = new Vector.<§?!1§>();
         if(§6!I§ == null)
         {
            §6!I§ = [];
         }
         this.§,%§();
         this.§ set§(400,300);
         §6=§.§4!8§.addEventListener(Event.CONTEXT3D_CREATE,this.§#!A§);
      }
      
      public static function §5k§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§[!"§(param1);
      }
      
      public static function §!!9§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§'0§.§-f§(param2) / 255,§'0§.§@&§(param2) / 255,§'0§.§"[§(param2) / 255,param3);
      }
      
      protected function get §=,§() : Matrix3D
      {
         return this.§5!3§;
      }
      
      protected function get §3w§() : Matrix3D
      {
         return this.§;!5§;
      }
      
      public function §,B§(param1:Context3D, param2:int) : void
      {
         this.§9t§ = param1;
         this.§5!L§ = param2;
      }
      
      public function get §+V§() : Context3D
      {
         return this.§9t§;
      }
      
      public function get §1m§() : int
      {
         return this.§5!L§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§?!1§ = null;
         for each(_loc1_ in this.§&=§)
         {
            _loc1_.dispose();
         }
         if(§6=§.§4!8§)
         {
            §6=§.§4!8§.removeEventListener(Event.CONTEXT3D_CREATE,this.§#!A§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§'0§.§-f§(param2) / 255,§'0§.§@&§(param2) / 255,§'0§.§"[§(param2) / 255,param3);
      }
      
      private function §#!A§(param1:Event) : void
      {
         this.§&=§ = new <§?!1§>[new §?!1§()];
      }
      
      public function § set§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §;p§[0] = 2 / param1;
         §;p§[1] = §;p§[2] = §;p§[3] = §;p§[4] = 0;
         §;p§[5] = -2 / param2;
         §;p§[6] = §;p§[7] = §;p§[8] = §;p§[9] = 0;
         §;p§[10] = -2 / (param4 - param3);
         §;p§[11] = 0;
         §;p§[12] = -1;
         §;p§[13] = 1;
         §;p§[14] = -(param4 + param3) / (param4 - param3);
         §;p§[15] = 1;
         this.§;!5§.copyRawDataFrom(§;p§);
      }
      
      public function §,%§() : void
      {
         this.§5!3§.identity();
      }
      
      public function §[S§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§5!3§.prependTranslation(param1,param2,param3);
      }
      
      public function §&!1§(param1:Number, param2:Vector3D = null) : void
      {
         this.§5!3§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §if §(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§5!3§.prependScale(param1,param2,param3);
      }
      
      public function §[!"§(param1:DisplayObject) : void
      {
         param1.§[!"§(this.§5!3§);
      }
      
      public function §"B§() : void
      {
         if(this.§'w§.length < this.§'b§ + 1)
         {
            this.§'w§.push(new Matrix3D());
         }
         this.§'w§[this.§'b§++].copyFrom(this.§5!3§);
      }
      
      public function §1!1§() : void
      {
         this.§5!3§.copyFrom(this.§'w§[--this.§'b§]);
      }
      
      public function §^!^§() : void
      {
         this.§'b§ = 0;
         this.§,%§();
      }
      
      public function get §8!M§() : Matrix3D
      {
         this.§@4§.identity();
         this.§@4§.append(this.§5!3§);
         this.§@4§.append(this.§;!5§);
         return this.§@4§;
      }
      
      public function batchQuad(param1:§>!C§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§]M§.§2!N§(param1,param3,param4))
         {
            this.§ a§();
         }
         this.§]M§.§?!5§(param1,param2,param3,param4,this.§5!3§);
      }
      
      public function § a§() : void
      {
         if(this.§]M§.§`!!§ > 0)
         {
            this.§]M§.render(this.§+V§,this.§;!5§);
            this.§]M§.reset();
            ++this.§6q§;
            if(this.§&=§.length <= this.§6q§)
            {
               this.§&=§.push(new §?!1§());
            }
         }
      }
      
      public function §,!;§() : void
      {
         this.§^!^§();
         this.§6q§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §]M§() : §?!1§
      {
         return this.§&=§[this.§6q§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §6!I§[param2])
         {
            §6!I§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §5F§)
         {
            §5F§ = param2;
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
