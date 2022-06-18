package §7!§
{
   import §#!@§.*;
   import §1#§.Texture;
   import §@!E§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class § 0§
   {
      
      private static var §throw§:Array;
      
      private static var § case§:Program3D;
      
      private static var §!!?§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §"[§:Matrix3D;
      
      private var §]O§:Matrix3D;
      
      private var §2!K§:Matrix3D;
      
      private var § §:Vector.<Matrix3D>;
      
      private var §%!%§:int;
      
      private var §%O§:Vector.<§]j§>;
      
      private var §'!"§:int;
      
      private var §@<§:Context3D;
      
      private var §-!D§:int = -1;
      
      public function § 0§()
      {
         super();
         this.§"[§ = new Matrix3D();
         this.§]O§ = new Matrix3D();
         this.§2!K§ = new Matrix3D();
         this.§ § = new Vector.<Matrix3D>(0);
         this.§%!%§ = 0;
         this.§'!"§ = 0;
         this.§%O§ = new Vector.<§]j§>();
         if(§throw§ == null)
         {
            §throw§ = [];
         }
         this.§6!?§();
         this.§?w§(400,300);
         §,L§.§3v§.addEventListener(Event.CONTEXT3D_CREATE,this.§6l§);
      }
      
      public static function §45§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§`!<§(param1);
      }
      
      public static function §5V§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?!8§.§^$§(param2) / 255,§?!8§.§,9§(param2) / 255,§?!8§.§"!"§(param2) / 255,param3);
      }
      
      protected function get §7M§() : Matrix3D
      {
         return this.§]O§;
      }
      
      protected function get §^+§() : Matrix3D
      {
         return this.§"[§;
      }
      
      public function §%7§(param1:Context3D, param2:int) : void
      {
         this.§@<§ = param1;
         this.§-!D§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§@<§;
      }
      
      public function get §+v§() : int
      {
         return this.§-!D§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§]j§ = null;
         for each(_loc1_ in this.§%O§)
         {
            _loc1_.dispose();
         }
         if(§,L§.§3v§)
         {
            §,L§.§3v§.removeEventListener(Event.CONTEXT3D_CREATE,this.§6l§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§?!8§.§^$§(param2) / 255,§?!8§.§,9§(param2) / 255,§?!8§.§"!"§(param2) / 255,param3);
      }
      
      private function §6l§(param1:Event) : void
      {
         this.§%O§ = new <§]j§>[new §]j§()];
      }
      
      public function §?w§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §!!?§[0] = 2 / param1;
         §!!?§[1] = §!!?§[2] = §!!?§[3] = §!!?§[4] = 0;
         §!!?§[5] = -2 / param2;
         §!!?§[6] = §!!?§[7] = §!!?§[8] = §!!?§[9] = 0;
         §!!?§[10] = -2 / (param4 - param3);
         §!!?§[11] = 0;
         §!!?§[12] = -1;
         §!!?§[13] = 1;
         §!!?§[14] = -(param4 + param3) / (param4 - param3);
         §!!?§[15] = 1;
         this.§"[§.copyRawDataFrom(§!!?§);
      }
      
      public function §6!?§() : void
      {
         this.§]O§.identity();
      }
      
      public function §-!,§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§]O§.prependTranslation(param1,param2,param3);
      }
      
      public function §@3§(param1:Number, param2:Vector3D = null) : void
      {
         this.§]O§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §>!H§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§]O§.prependScale(param1,param2,param3);
      }
      
      public function §`!<§(param1:DisplayObject) : void
      {
         param1.§`!<§(this.§]O§);
      }
      
      public function §^v§() : void
      {
         if(this.§ §.length < this.§%!%§ + 1)
         {
            this.§ §.push(new Matrix3D());
         }
         this.§ §[this.§%!%§++].copyFrom(this.§]O§);
      }
      
      public function §7%§() : void
      {
         this.§]O§.copyFrom(this.§ §[--this.§%!%§]);
      }
      
      public function §<!6§() : void
      {
         this.§%!%§ = 0;
         this.§6!?§();
      }
      
      public function get §&c§() : Matrix3D
      {
         this.§2!K§.identity();
         this.§2!K§.append(this.§]O§);
         this.§2!K§.append(this.§"[§);
         return this.§2!K§;
      }
      
      public function batchQuad(param1:§?h§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§+!K§.§>G§(param1,param3,param4,param2))
         {
            this.§3B§();
         }
         this.§+!K§.§5!F§(param1,param2,param3,param4,this.§]O§);
      }
      
      public function §3B§() : void
      {
         if(this.§+!K§.§5!E§ > 0)
         {
            this.§+!K§.render(this.context,this.§"[§);
            this.§+!K§.reset();
            ++this.§'!"§;
            if(this.§%O§.length <= this.§'!"§)
            {
               this.§%O§.push(new §]j§());
            }
         }
      }
      
      public function §7+§() : void
      {
         this.§<!6§();
         this.§'!"§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §+!K§() : §]j§
      {
         return this.§%O§[this.§'!"§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §throw§[param2])
         {
            §throw§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != § case§)
         {
            § case§ = param2;
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
