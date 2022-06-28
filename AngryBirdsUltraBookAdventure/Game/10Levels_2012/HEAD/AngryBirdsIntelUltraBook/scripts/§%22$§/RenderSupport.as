package §"$§
{
   import §'_§.Texture;
   import §1!&§.*;
   import §@2§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class RenderSupport
   {
      
      private static var §7!0§:Array;
      
      private static var §>[§:Program3D;
      
      private static var §6!1§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §>-§:Matrix3D;
      
      private var §6u§:Matrix3D;
      
      private var §5!K§:Matrix3D;
      
      private var §&!^§:Vector.<Matrix3D>;
      
      private var §?g§:int;
      
      private var §%7§:Vector.<QuadBatch>;
      
      private var §?2§:int;
      
      private var §6D§:Context3D;
      
      private var § !%§:int = -1;
      
      public function RenderSupport()
      {
         super();
         this.§>-§ = new Matrix3D();
         this.§6u§ = new Matrix3D();
         this.§5!K§ = new Matrix3D();
         this.§&!^§ = new Vector.<Matrix3D>(0);
         this.§?g§ = 0;
         this.§?2§ = 0;
         this.§%7§ = new Vector.<QuadBatch>();
         if(§7!0§ == null)
         {
            §7!0§ = [];
         }
         this.§>"§();
         this.§ !O§(400,300);
         Starling.§'!A§.addEventListener(Event.CONTEXT3D_CREATE,this.§>!R§);
      }
      
      public static function §!G§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§+C§(param1);
      }
      
      public static function §[!]§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3§.§0!k§(param2) / 255,§3§.§0!T§(param2) / 255,§3§.§2&§(param2) / 255,param3);
      }
      
      protected function get §7!W§() : Matrix3D
      {
         return this.§6u§;
      }
      
      protected function get §;<§() : Matrix3D
      {
         return this.§>-§;
      }
      
      public function §55§(param1:Context3D, param2:int) : void
      {
         this.§6D§ = param1;
         this.§ !%§ = param2;
      }
      
      public function get §6!&§() : Context3D
      {
         return this.§6D§;
      }
      
      public function get §@0§() : int
      {
         return this.§ !%§;
      }
      
      public function dispose() : void
      {
         var _loc1_:QuadBatch = null;
         for each(_loc1_ in this.§%7§)
         {
            _loc1_.dispose();
         }
         if(Starling.§'!A§)
         {
            Starling.§'!A§.removeEventListener(Event.CONTEXT3D_CREATE,this.§>!R§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3§.§0!k§(param2) / 255,§3§.§0!T§(param2) / 255,§3§.§2&§(param2) / 255,param3);
      }
      
      private function §>!R§(param1:Event) : void
      {
         this.§%7§ = new <QuadBatch>[new QuadBatch()];
      }
      
      public function § !O§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §6!1§[0] = 2 / param1;
         §6!1§[1] = §6!1§[2] = §6!1§[3] = §6!1§[4] = 0;
         §6!1§[5] = -2 / param2;
         §6!1§[6] = §6!1§[7] = §6!1§[8] = §6!1§[9] = 0;
         §6!1§[10] = -2 / (param4 - param3);
         §6!1§[11] = 0;
         §6!1§[12] = -1;
         §6!1§[13] = 1;
         §6!1§[14] = -(param4 + param3) / (param4 - param3);
         §6!1§[15] = 1;
         this.§>-§.copyRawDataFrom(§6!1§);
      }
      
      public function §>"§() : void
      {
         this.§6u§.identity();
      }
      
      public function §?!^§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§6u§.prependTranslation(param1,param2,param3);
      }
      
      public function §'A§(param1:Number, param2:Vector3D = null) : void
      {
         this.§6u§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §6!`§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§6u§.prependScale(param1,param2,param3);
      }
      
      public function §+C§(param1:DisplayObject) : void
      {
         param1.§+C§(this.§6u§);
      }
      
      public function §7M§() : void
      {
         if(this.§&!^§.length < this.§?g§ + 1)
         {
            this.§&!^§.push(new Matrix3D());
         }
         this.§&!^§[this.§?g§++].copyFrom(this.§6u§);
      }
      
      public function § z§() : void
      {
         this.§6u§.copyFrom(this.§&!^§[--this.§?g§]);
      }
      
      public function §2!k§() : void
      {
         this.§?g§ = 0;
         this.§>"§();
      }
      
      public function get §+!&§() : Matrix3D
      {
         this.§5!K§.identity();
         this.§5!K§.append(this.§6u§);
         this.§5!K§.append(this.§>-§);
         return this.§5!K§;
      }
      
      public function batchQuad(param1:§!!9§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§,!!§.§!#§(param1,param3,param4))
         {
            this.§&M§();
         }
         this.§,!!§.§^!K§(param1,param2,param3,param4,this.§6u§);
      }
      
      public function §&M§() : void
      {
         if(this.§,!!§.§5!#§ > 0)
         {
            this.§,!!§.render(this.§6!&§,this.§>-§);
            this.§,!!§.reset();
            ++this.§?2§;
            if(this.§%7§.length <= this.§?2§)
            {
               this.§%7§.push(new QuadBatch());
            }
         }
      }
      
      public function §^![§() : void
      {
         this.§2!k§();
         this.§?2§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §,!!§() : QuadBatch
      {
         return this.§%7§[this.§?2§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §7!0§[param2])
         {
            §7!0§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §>[§)
         {
            §>[§ = param2;
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
