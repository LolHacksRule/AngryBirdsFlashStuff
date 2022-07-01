package §5!5§
{
   import §4!S§.Texture;
   import §="#§.*;
   import §^I§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §?"5§
   {
      
      private static var §&!d§:Array;
      
      private static var §3!,§:Program3D;
      
      private static var § !G§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §0?§:Matrix3D;
      
      private var §2'§:Matrix3D;
      
      private var §1l§:Matrix3D;
      
      private var §8;§:Vector.<Matrix3D>;
      
      private var §<E§:int;
      
      private var §8&§:Vector.<§'!v§>;
      
      private var §>a§:int;
      
      private var §0"&§:Context3D;
      
      private var §0"%§:int = -1;
      
      public function §?"5§()
      {
         super();
         this.§0?§ = new Matrix3D();
         this.§2'§ = new Matrix3D();
         this.§1l§ = new Matrix3D();
         this.§8;§ = new Vector.<Matrix3D>(0);
         this.§<E§ = 0;
         this.§>a§ = 0;
         this.§8&§ = new Vector.<§'!v§>();
         if(§&!d§ == null)
         {
            §&!d§ = [];
         }
         this.§6a§();
         this.§9!!§(400,300);
         §^e§.§-_§.addEventListener(Event.CONTEXT3D_CREATE,this.§&l§);
      }
      
      public static function §3V§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§?I§(param1);
      }
      
      public static function §3!n§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§"!E§.§0F§(param2) / 255,§"!E§.§=r§(param2) / 255,§"!E§.§`!d§(param2) / 255,param3);
      }
      
      protected function get §6!c§() : Matrix3D
      {
         return this.§2'§;
      }
      
      protected function get §4!>§() : Matrix3D
      {
         return this.§0?§;
      }
      
      public function §@<§(param1:Context3D, param2:int) : void
      {
         this.§0"&§ = param1;
         this.§0"%§ = param2;
      }
      
      public function get §<W§() : Context3D
      {
         return this.§0"&§;
      }
      
      public function get §6d§() : int
      {
         return this.§0"%§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§'!v§ = null;
         for each(_loc1_ in this.§8&§)
         {
            _loc1_.dispose();
         }
         if(§^e§.§-_§)
         {
            §^e§.§-_§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&l§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§"!E§.§0F§(param2) / 255,§"!E§.§=r§(param2) / 255,§"!E§.§`!d§(param2) / 255,param3);
      }
      
      private function §&l§(param1:Event) : void
      {
         this.§8&§ = new <§'!v§>[new §'!v§()];
      }
      
      public function §9!!§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         § !G§[0] = 2 / param1;
         § !G§[1] = § !G§[2] = § !G§[3] = § !G§[4] = 0;
         § !G§[5] = -2 / param2;
         § !G§[6] = § !G§[7] = § !G§[8] = § !G§[9] = 0;
         § !G§[10] = -2 / (param4 - param3);
         § !G§[11] = 0;
         § !G§[12] = -1;
         § !G§[13] = 1;
         § !G§[14] = -(param4 + param3) / (param4 - param3);
         § !G§[15] = 1;
         this.§0?§.copyRawDataFrom(§ !G§);
      }
      
      public function §6a§() : void
      {
         this.§2'§.identity();
      }
      
      public function §1!A§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§2'§.prependTranslation(param1,param2,param3);
      }
      
      public function §,3§(param1:Number, param2:Vector3D = null) : void
      {
         this.§2'§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §%!5§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§2'§.prependScale(param1,param2,param3);
      }
      
      public function §?I§(param1:DisplayObject) : void
      {
         param1.§?I§(this.§2'§);
      }
      
      public function §&p§() : void
      {
         if(this.§8;§.length < this.§<E§ + 1)
         {
            this.§8;§.push(new Matrix3D());
         }
         this.§8;§[this.§<E§++].copyFrom(this.§2'§);
      }
      
      public function §@Q§() : void
      {
         this.§2'§.copyFrom(this.§8;§[--this.§<E§]);
      }
      
      public function §!+§() : void
      {
         this.§<E§ = 0;
         this.§6a§();
      }
      
      public function get §9R§() : Matrix3D
      {
         this.§1l§.identity();
         this.§1l§.append(this.§2'§);
         this.§1l§.append(this.§0?§);
         return this.§1l§;
      }
      
      public function batchQuad(param1:§5! §, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§`!_§.§1!§(param1,param3,param4))
         {
            this.§1!W§();
         }
         this.§`!_§.§'3§(param1,param2,param3,param4,this.§2'§);
      }
      
      public function §1!W§() : void
      {
         if(this.§`!_§.§^r§ > 0)
         {
            this.§`!_§.render(this.§<W§,this.§0?§);
            this.§`!_§.reset();
            ++this.§>a§;
            if(this.§8&§.length <= this.§>a§)
            {
               this.§8&§.push(new §'!v§());
            }
         }
      }
      
      public function §,V§() : void
      {
         this.§!+§();
         this.§>a§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §`!_§() : §'!v§
      {
         return this.§8&§[this.§>a§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §&!d§[param2])
         {
            §&!d§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §3!,§)
         {
            §3!,§ = param2;
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
