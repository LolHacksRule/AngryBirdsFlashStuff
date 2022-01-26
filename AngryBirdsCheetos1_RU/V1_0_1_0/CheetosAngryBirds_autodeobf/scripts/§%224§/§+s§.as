package §"4§
{
   import §%W§.*;
   import §&!5§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   import §switch§.Texture;
   
   public class §+s§
   {
      
      private static var §#,§:Array;
      
      private static var §>_§:Program3D;
      
      private static var §2F§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §'!`§:Matrix3D;
      
      private var §'2§:Matrix3D;
      
      private var §6c§:Matrix3D;
      
      private var §!#§:Vector.<Matrix3D>;
      
      private var §5!^§:int;
      
      private var §4!>§:Vector.<§ !T§>;
      
      private var §%!V§:int;
      
      private var §1!K§:Context3D;
      
      private var §[q§:int = -1;
      
      public function §+s§()
      {
         super();
         this.§'!`§ = new Matrix3D();
         this.§'2§ = new Matrix3D();
         this.§6c§ = new Matrix3D();
         this.§!#§ = new Vector.<Matrix3D>(0);
         this.§5!^§ = 0;
         this.§%!V§ = 0;
         this.§4!>§ = new Vector.<§ !T§>();
         if(§#,§ == null)
         {
            §#,§ = [];
         }
         this.§[!C§();
         this.§8!Q§(400,300);
         §<h§.§%!]§.addEventListener(Event.CONTEXT3D_CREATE,this.§=k§);
      }
      
      public static function § !K§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§-!E§(param1);
      }
      
      public static function §`?§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§1! §.§+a§(param2) / 255,§1! §.§'!5§(param2) / 255,§1! §.§6!1§(param2) / 255,param3);
      }
      
      protected function get §`k§() : Matrix3D
      {
         return this.§'2§;
      }
      
      protected function get §<P§() : Matrix3D
      {
         return this.§'!`§;
      }
      
      public function §;[§(param1:Context3D, param2:int) : void
      {
         this.§1!K§ = param1;
         this.§[q§ = param2;
      }
      
      public function get §69§() : Context3D
      {
         return this.§1!K§;
      }
      
      public function get §'!M§() : int
      {
         return this.§[q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§ !T§ = null;
         for each(_loc1_ in this.§4!>§)
         {
            _loc1_.dispose();
         }
         if(§<h§.§%!]§)
         {
            §<h§.§%!]§.removeEventListener(Event.CONTEXT3D_CREATE,this.§=k§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§1! §.§+a§(param2) / 255,§1! §.§'!5§(param2) / 255,§1! §.§6!1§(param2) / 255,param3);
      }
      
      private function §=k§(param1:Event) : void
      {
         this.§4!>§ = new <§ !T§>[new § !T§()];
      }
      
      public function §8!Q§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §2F§[0] = 2 / param1;
         §2F§[1] = §2F§[2] = §2F§[3] = §2F§[4] = 0;
         §2F§[5] = -2 / param2;
         §2F§[6] = §2F§[7] = §2F§[8] = §2F§[9] = 0;
         §2F§[10] = -2 / (param4 - param3);
         §2F§[11] = 0;
         §2F§[12] = -1;
         §2F§[13] = 1;
         §2F§[14] = -(param4 + param3) / (param4 - param3);
         §2F§[15] = 1;
         this.§'!`§.copyRawDataFrom(§2F§);
      }
      
      public function §[!C§() : void
      {
         this.§'2§.identity();
      }
      
      public function §@Q§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§'2§.prependTranslation(param1,param2,param3);
      }
      
      public function §'!B§(param1:Number, param2:Vector3D = null) : void
      {
         this.§'2§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §>!#§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§'2§.prependScale(param1,param2,param3);
      }
      
      public function §-!E§(param1:DisplayObject) : void
      {
         param1.§-!E§(this.§'2§);
      }
      
      public function §;6§() : void
      {
         if(this.§!#§.length < this.§5!^§ + 1)
         {
            this.§!#§.push(new Matrix3D());
         }
         this.§!#§[this.§5!^§++].copyFrom(this.§'2§);
      }
      
      public function §;!Z§() : void
      {
         this.§'2§.copyFrom(this.§!#§[--this.§5!^§]);
      }
      
      public function §[!§() : void
      {
         this.§5!^§ = 0;
         this.§[!C§();
      }
      
      public function get §,!Y§() : Matrix3D
      {
         this.§6c§.identity();
         this.§6c§.append(this.§'2§);
         this.§6c§.append(this.§'!`§);
         return this.§6c§;
      }
      
      public function batchQuad(param1:§2G§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§%!J§.§-!]§(param1,param3,param4))
         {
            this.§&u§();
         }
         this.§%!J§.§'a§(param1,param2,param3,param4,this.§'2§);
      }
      
      public function §&u§() : void
      {
         if(this.§%!J§.§^W§ > 0)
         {
            this.§%!J§.render(this.§69§,this.§'!`§);
            this.§%!J§.reset();
            ++this.§%!V§;
            if(this.§4!>§.length <= this.§%!V§)
            {
               this.§4!>§.push(new § !T§());
            }
         }
      }
      
      public function §`!S§() : void
      {
         this.§[!§();
         this.§%!V§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §%!J§() : § !T§
      {
         return this.§4!>§[this.§%!V§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §#,§[param2])
         {
            §#,§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §>_§)
         {
            §>_§ = param2;
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
