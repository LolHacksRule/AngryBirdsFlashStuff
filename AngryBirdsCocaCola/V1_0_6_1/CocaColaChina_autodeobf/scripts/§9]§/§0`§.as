package §9]§
{
   import §%Q§.*;
   import §<!$§.*;
   import §@'§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §0`§
   {
      
      private static var §7!"§:Array;
      
      private static var §6n§:Program3D;
      
      private static var §5g§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §?U§:Matrix3D;
      
      private var §3!P§:Matrix3D;
      
      private var §'!`§:Matrix3D;
      
      private var §>9§:Vector.<Matrix3D>;
      
      private var §8v§:int;
      
      private var §5!K§:Vector.<§!!P§>;
      
      private var §8<§:int;
      
      private var §`!Y§:Context3D;
      
      private var §>X§:int = -1;
      
      public function §0`§()
      {
         super();
         this.§?U§ = new Matrix3D();
         this.§3!P§ = new Matrix3D();
         this.§'!`§ = new Matrix3D();
         this.§>9§ = new Vector.<Matrix3D>(0);
         this.§8v§ = 0;
         this.§8<§ = 0;
         this.§5!K§ = new Vector.<§!!P§>();
         if(§7!"§ == null)
         {
            §7!"§ = [];
         }
         this.§ !B§();
         this.§!!2§(400,300);
         §9J§.§?X§.addEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
      }
      
      public static function §'v§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§9G§(param1);
      }
      
      public static function § !8§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§`!C§.§,!"§(param2) / 255,§`!C§.§1f§(param2) / 255,§`!C§.§]!Y§(param2) / 255,param3);
      }
      
      protected function get §1Y§() : Matrix3D
      {
         return this.§3!P§;
      }
      
      protected function get §1!P§() : Matrix3D
      {
         return this.§?U§;
      }
      
      public function §4_§(param1:Context3D, param2:int) : void
      {
         this.§`!Y§ = param1;
         this.§>X§ = param2;
      }
      
      public function get §;!Z§() : Context3D
      {
         return this.§`!Y§;
      }
      
      public function get §[!A§() : int
      {
         return this.§>X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!!P§ = null;
         for each(_loc1_ in this.§5!K§)
         {
            _loc1_.dispose();
         }
         if(§9J§.§?X§)
         {
            §9J§.§?X§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!G§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§`!C§.§,!"§(param2) / 255,§`!C§.§1f§(param2) / 255,§`!C§.§]!Y§(param2) / 255,param3);
      }
      
      private function §!G§(param1:Event) : void
      {
         this.§5!K§ = new <§!!P§>[new §!!P§()];
      }
      
      public function §!!2§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §5g§[0] = 2 / param1;
         §5g§[1] = §5g§[2] = §5g§[3] = §5g§[4] = 0;
         §5g§[5] = -2 / param2;
         §5g§[6] = §5g§[7] = §5g§[8] = §5g§[9] = 0;
         §5g§[10] = -2 / (param4 - param3);
         §5g§[11] = 0;
         §5g§[12] = -1;
         §5g§[13] = 1;
         §5g§[14] = -(param4 + param3) / (param4 - param3);
         §5g§[15] = 1;
         this.§?U§.copyRawDataFrom(§5g§);
      }
      
      public function § !B§() : void
      {
         this.§3!P§.identity();
      }
      
      public function §8!N§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§3!P§.prependTranslation(param1,param2,param3);
      }
      
      public function §=!0§(param1:Number, param2:Vector3D = null) : void
      {
         this.§3!P§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §^!J§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§3!P§.prependScale(param1,param2,param3);
      }
      
      public function §9G§(param1:DisplayObject) : void
      {
         param1.§9G§(this.§3!P§);
      }
      
      public function §^J§() : void
      {
         if(this.§>9§.length < this.§8v§ + 1)
         {
            this.§>9§.push(new Matrix3D());
         }
         this.§>9§[this.§8v§++].copyFrom(this.§3!P§);
      }
      
      public function §?!-§() : void
      {
         this.§3!P§.copyFrom(this.§>9§[--this.§8v§]);
      }
      
      public function §22§() : void
      {
         this.§8v§ = 0;
         this.§ !B§();
      }
      
      public function get §-3§() : Matrix3D
      {
         this.§'!`§.identity();
         this.§'!`§.append(this.§3!P§);
         this.§'!`§.append(this.§?U§);
         return this.§'!`§;
      }
      
      public function batchQuad(param1:§6f§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§`5§.§#! §(param1,param3,param4))
         {
            this.§"!6§();
         }
         this.§`5§.§-h§(param1,param2,param3,param4,this.§3!P§);
      }
      
      public function §"!6§() : void
      {
         if(this.§`5§.§^K§ > 0)
         {
            this.§`5§.render(this.§;!Z§,this.§?U§);
            this.§`5§.reset();
            ++this.§8<§;
            if(this.§5!K§.length <= this.§8<§)
            {
               this.§5!K§.push(new §!!P§());
            }
         }
      }
      
      public function §%X§() : void
      {
         this.§22§();
         this.§8<§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §`5§() : §!!P§
      {
         return this.§5!K§[this.§8<§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §7!"§[param2])
         {
            §7!"§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §6n§)
         {
            §6n§ = param2;
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
