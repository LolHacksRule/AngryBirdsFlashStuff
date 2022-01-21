package §"v§
{
   import §2!g§.*;
   import §=E§.*;
   import §@j§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §&!i§
   {
      
      private static var §@!§:Array;
      
      private static var §9!n§:Program3D;
      
      private static var §=!C§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var § !C§:Matrix3D;
      
      private var §3a§:Matrix3D;
      
      private var §;5§:Matrix3D;
      
      private var §6a§:Vector.<Matrix3D>;
      
      private var §#V§:int;
      
      private var § !O§:Vector.<§`P§>;
      
      private var §35§:int;
      
      private var §6!J§:Context3D;
      
      private var §0X§:int = -1;
      
      public function §&!i§()
      {
         super();
         this.§ !C§ = new Matrix3D();
         this.§3a§ = new Matrix3D();
         this.§;5§ = new Matrix3D();
         this.§6a§ = new Vector.<Matrix3D>(0);
         this.§#V§ = 0;
         this.§35§ = 0;
         this.§ !O§ = new Vector.<§`P§>();
         if(§@!§ == null)
         {
            §@!§ = [];
         }
         this.§&"§();
         this.§"P§(400,300);
         §5!T§.§!e§.addEventListener(Event.CONTEXT3D_CREATE,this.§0!^§);
      }
      
      public static function §%[§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§ e§(param1);
      }
      
      public static function §"!M§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§0!0§.§3!0§(param2) / 255,§0!0§.§%0§(param2) / 255,§0!0§.§"!m§(param2) / 255,param3);
      }
      
      protected function get §"e§() : Matrix3D
      {
         return this.§3a§;
      }
      
      protected function get §,g§() : Matrix3D
      {
         return this.§ !C§;
      }
      
      public function §[!F§(param1:Context3D, param2:int) : void
      {
         this.§6!J§ = param1;
         this.§0X§ = param2;
      }
      
      public function get §+=§() : Context3D
      {
         return this.§6!J§;
      }
      
      public function get §%-§() : int
      {
         return this.§0X§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§`P§ = null;
         for each(_loc1_ in this.§ !O§)
         {
            _loc1_.dispose();
         }
         if(§5!T§.§!e§)
         {
            §5!T§.§!e§.removeEventListener(Event.CONTEXT3D_CREATE,this.§0!^§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§0!0§.§3!0§(param2) / 255,§0!0§.§%0§(param2) / 255,§0!0§.§"!m§(param2) / 255,param3);
      }
      
      private function §0!^§(param1:Event) : void
      {
         this.§ !O§ = new <§`P§>[new §`P§()];
      }
      
      public function §"P§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §=!C§[0] = 2 / param1;
         §=!C§[1] = §=!C§[2] = §=!C§[3] = §=!C§[4] = 0;
         §=!C§[5] = -2 / param2;
         §=!C§[6] = §=!C§[7] = §=!C§[8] = §=!C§[9] = 0;
         §=!C§[10] = -2 / (param4 - param3);
         §=!C§[11] = 0;
         §=!C§[12] = -1;
         §=!C§[13] = 1;
         §=!C§[14] = -(param4 + param3) / (param4 - param3);
         §=!C§[15] = 1;
         this.§ !C§.copyRawDataFrom(§=!C§);
      }
      
      public function §&"§() : void
      {
         this.§3a§.identity();
      }
      
      public function §=t§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§3a§.prependTranslation(param1,param2,param3);
      }
      
      public function §`t§(param1:Number, param2:Vector3D = null) : void
      {
         this.§3a§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §2w§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§3a§.prependScale(param1,param2,param3);
      }
      
      public function § e§(param1:DisplayObject) : void
      {
         param1.§ e§(this.§3a§);
      }
      
      public function §=L§() : void
      {
         if(this.§6a§.length < this.§#V§ + 1)
         {
            this.§6a§.push(new Matrix3D());
         }
         this.§6a§[this.§#V§++].copyFrom(this.§3a§);
      }
      
      public function §<t§() : void
      {
         this.§3a§.copyFrom(this.§6a§[--this.§#V§]);
      }
      
      public function §8!h§() : void
      {
         this.§#V§ = 0;
         this.§&"§();
      }
      
      public function get §+E§() : Matrix3D
      {
         this.§;5§.identity();
         this.§;5§.append(this.§3a§);
         this.§;5§.append(this.§ !C§);
         return this.§;5§;
      }
      
      public function batchQuad(param1:§2c§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§]!"§.§!!B§(param1,param3,param4))
         {
            this.§^§();
         }
         this.§]!"§.§^V§(param1,param2,param3,param4,this.§3a§);
      }
      
      public function §^§() : void
      {
         if(this.§]!"§.§%1§ > 0)
         {
            this.§]!"§.render(this.§+=§,this.§ !C§);
            this.§]!"§.reset();
            ++this.§35§;
            if(this.§ !O§.length <= this.§35§)
            {
               this.§ !O§.push(new §`P§());
            }
         }
      }
      
      public function §&B§() : void
      {
         this.§8!h§();
         this.§35§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §]!"§() : §`P§
      {
         return this.§ !O§[this.§35§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §@!§[param2])
         {
            §@!§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §9!n§)
         {
            §9!n§ = param2;
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
