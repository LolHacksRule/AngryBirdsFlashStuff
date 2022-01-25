package §each §
{
   import §&!9§.Texture;
   import §'!>§.*;
   import §0@§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class § if§
   {
      
      private static var §>h§:Array;
      
      private static var §4N§:Program3D;
      
      private static var §&s§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §=S§:Matrix3D;
      
      private var §5;§:Matrix3D;
      
      private var §7,§:Matrix3D;
      
      private var §&!+§:Vector.<Matrix3D>;
      
      private var §>!>§:int;
      
      private var §4!Z§:Vector.<§<F§>;
      
      private var § !b§:int;
      
      private var §"!7§:Context3D;
      
      private var §"!g§:int = -1;
      
      public function § if§()
      {
         super();
         this.§=S§ = new Matrix3D();
         this.§5;§ = new Matrix3D();
         this.§7,§ = new Matrix3D();
         this.§&!+§ = new Vector.<Matrix3D>(0);
         this.§>!>§ = 0;
         this.§ !b§ = 0;
         this.§4!Z§ = new Vector.<§<F§>();
         if(§>h§ == null)
         {
            §>h§ = [];
         }
         this.§9!>§();
         this.§ !L§(400,300);
         §'!3§.§1!n§.addEventListener(Event.CONTEXT3D_CREATE,this.§,B§);
      }
      
      public static function §7p§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§?!"§(param1);
      }
      
      public static function §^!d§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?!o§.§;!=§(param2) / 255,§?!o§.§]`§(param2) / 255,§?!o§.§3!=§(param2) / 255,param3);
      }
      
      protected function get §8!o§() : Matrix3D
      {
         return this.§5;§;
      }
      
      protected function get §'k§() : Matrix3D
      {
         return this.§=S§;
      }
      
      public function § !H§(param1:Context3D, param2:int) : void
      {
         this.§"!7§ = param1;
         this.§"!g§ = param2;
      }
      
      public function get §^!3§() : Context3D
      {
         return this.§"!7§;
      }
      
      public function get §?N§() : int
      {
         return this.§"!g§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<F§ = null;
         for each(_loc1_ in this.§4!Z§)
         {
            _loc1_.dispose();
         }
         if(§'!3§.§1!n§)
         {
            §'!3§.§1!n§.removeEventListener(Event.CONTEXT3D_CREATE,this.§,B§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?!o§.§;!=§(param2) / 255,§?!o§.§]`§(param2) / 255,§?!o§.§3!=§(param2) / 255,param3);
      }
      
      private function §,B§(param1:Event) : void
      {
         this.§4!Z§ = new <§<F§>[new §<F§()];
      }
      
      public function § !L§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §&s§[0] = 2 / param1;
         §&s§[1] = §&s§[2] = §&s§[3] = §&s§[4] = 0;
         §&s§[5] = -2 / param2;
         §&s§[6] = §&s§[7] = §&s§[8] = §&s§[9] = 0;
         §&s§[10] = -2 / (param4 - param3);
         §&s§[11] = 0;
         §&s§[12] = -1;
         §&s§[13] = 1;
         §&s§[14] = -(param4 + param3) / (param4 - param3);
         §&s§[15] = 1;
         this.§=S§.copyRawDataFrom(§&s§);
      }
      
      public function §9!>§() : void
      {
         this.§5;§.identity();
      }
      
      public function §<!'§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§5;§.prependTranslation(param1,param2,param3);
      }
      
      public function §7D§(param1:Number, param2:Vector3D = null) : void
      {
         this.§5;§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §'`§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§5;§.prependScale(param1,param2,param3);
      }
      
      public function §?!"§(param1:DisplayObject) : void
      {
         param1.§?!"§(this.§5;§);
      }
      
      public function §%J§() : void
      {
         if(this.§&!+§.length < this.§>!>§ + 1)
         {
            this.§&!+§.push(new Matrix3D());
         }
         this.§&!+§[this.§>!>§++].copyFrom(this.§5;§);
      }
      
      public function §do§() : void
      {
         this.§5;§.copyFrom(this.§&!+§[--this.§>!>§]);
      }
      
      public function §7o§() : void
      {
         this.§>!>§ = 0;
         this.§9!>§();
      }
      
      public function get §[!^§() : Matrix3D
      {
         this.§7,§.identity();
         this.§7,§.append(this.§5;§);
         this.§7,§.append(this.§=S§);
         return this.§7,§;
      }
      
      public function batchQuad(param1:§"%§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§9!9§.§`Y§(param1,param3,param4))
         {
            this.§"!>§();
         }
         this.§9!9§.§'!9§(param1,param2,param3,param4,this.§5;§);
      }
      
      public function §"!>§() : void
      {
         if(this.§9!9§.§2!#§ > 0)
         {
            this.§9!9§.render(this.§^!3§,this.§=S§);
            this.§9!9§.reset();
            ++this.§ !b§;
            if(this.§4!Z§.length <= this.§ !b§)
            {
               this.§4!Z§.push(new §<F§());
            }
         }
      }
      
      public function §8!M§() : void
      {
         this.§7o§();
         this.§ !b§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §9!9§() : §<F§
      {
         return this.§4!Z§[this.§ !b§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §>h§[param2])
         {
            §>h§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §4N§)
         {
            §4N§ = param2;
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
