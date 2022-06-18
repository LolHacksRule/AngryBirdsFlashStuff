package §;%§
{
   import §2c§.*;
   import §5@§.Texture;
   import §;q§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §8S§
   {
      
      private static var §,9§:Array;
      
      private static var §,W§:Program3D;
      
      private static var §^5§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §1n§:Matrix3D;
      
      private var §=R§:Matrix3D;
      
      private var §4!!§:Matrix3D;
      
      private var §!3§:Vector.<Matrix3D>;
      
      private var §&!"§:int;
      
      private var §%!B§:Vector.<§ Q§>;
      
      private var §8%§:int;
      
      private var §;!6§:Context3D;
      
      private var §+!K§:int = -1;
      
      public function §8S§()
      {
         super();
         this.§1n§ = new Matrix3D();
         this.§=R§ = new Matrix3D();
         this.§4!!§ = new Matrix3D();
         this.§!3§ = new Vector.<Matrix3D>(0);
         this.§&!"§ = 0;
         this.§8%§ = 0;
         this.§%!B§ = new Vector.<§ Q§>();
         if(§,9§ == null)
         {
            §,9§ = [];
         }
         this.§8!1§();
         this.§ try§(400,300);
         §8o§.§5J§.addEventListener(Event.CONTEXT3D_CREATE,this.§"!F§);
      }
      
      public static function §>5§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§->§(param1);
      }
      
      public static function §=!B§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§]e§.§&!6§(param2) / 255,§]e§.§2U§(param2) / 255,§]e§.§8!B§(param2) / 255,param3);
      }
      
      protected function get §#l§() : Matrix3D
      {
         return this.§=R§;
      }
      
      protected function get §,!=§() : Matrix3D
      {
         return this.§1n§;
      }
      
      public function §&@§(param1:Context3D, param2:int) : void
      {
         this.§;!6§ = param1;
         this.§+!K§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§;!6§;
      }
      
      public function get §9!&§() : int
      {
         return this.§+!K§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ Q§ = null;
         for each(_loc1_ in this.§%!B§)
         {
            _loc1_.dispose();
         }
         if(§8o§.§5J§)
         {
            §8o§.§5J§.removeEventListener(Event.CONTEXT3D_CREATE,this.§"!F§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§]e§.§&!6§(param2) / 255,§]e§.§2U§(param2) / 255,§]e§.§8!B§(param2) / 255,param3);
      }
      
      private function §"!F§(param1:Event) : void
      {
         this.§%!B§ = new <§ Q§>[new § Q§()];
      }
      
      public function § try§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §^5§[0] = 2 / param1;
         §^5§[1] = §^5§[2] = §^5§[3] = §^5§[4] = 0;
         §^5§[5] = -2 / param2;
         §^5§[6] = §^5§[7] = §^5§[8] = §^5§[9] = 0;
         §^5§[10] = -2 / (param4 - param3);
         §^5§[11] = 0;
         §^5§[12] = -1;
         §^5§[13] = 1;
         §^5§[14] = -(param4 + param3) / (param4 - param3);
         §^5§[15] = 1;
         this.§1n§.copyRawDataFrom(§^5§);
      }
      
      public function §8!1§() : void
      {
         this.§=R§.identity();
      }
      
      public function §?E§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§=R§.prependTranslation(param1,param2,param3);
      }
      
      public function §1!>§(param1:Number, param2:Vector3D = null) : void
      {
         this.§=R§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §%!C§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§=R§.prependScale(param1,param2,param3);
      }
      
      public function §->§(param1:DisplayObject) : void
      {
         param1.§->§(this.§=R§);
      }
      
      public function §;!D§() : void
      {
         if(this.§!3§.length < this.§&!"§ + 1)
         {
            this.§!3§.push(new Matrix3D());
         }
         this.§!3§[this.§&!"§++].copyFrom(this.§=R§);
      }
      
      public function §;!1§() : void
      {
         this.§=R§.copyFrom(this.§!3§[--this.§&!"§]);
      }
      
      public function §;!+§() : void
      {
         this.§&!"§ = 0;
         this.§8!1§();
      }
      
      public function get §%!@§() : Matrix3D
      {
         this.§4!!§.identity();
         this.§4!!§.append(this.§=R§);
         this.§4!!§.append(this.§1n§);
         return this.§4!!§;
      }
      
      public function batchQuad(param1:§-!>§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§9C§.§`"§(param1,param3,param4))
         {
            this.§98§();
         }
         this.§9C§.§,! §(param1,param2,param3,param4,this.§=R§);
      }
      
      public function §98§() : void
      {
         if(this.§9C§.§ R§ > 0)
         {
            this.§9C§.render(this.context,this.§1n§);
            this.§9C§.reset();
            ++this.§8%§;
            if(this.§%!B§.length <= this.§8%§)
            {
               this.§%!B§.push(new § Q§());
            }
         }
      }
      
      public function §5X§() : void
      {
         this.§;!+§();
         this.§8%§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §9C§() : § Q§
      {
         return this.§%!B§[this.§8%§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §,9§[param2])
         {
            §,9§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §,W§)
         {
            §,W§ = param2;
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
