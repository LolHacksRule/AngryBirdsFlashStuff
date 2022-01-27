package § "-§
{
   import §&"s§.Texture;
   import §7"G§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   import §use§.*;
   
   public class §"!_§
   {
      
      private static var §5+§:Array;
      
      private static var §;!!§:Program3D;
      
      private static var §!!J§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §3!!§:Matrix3D;
      
      private var §0"_§:Matrix3D;
      
      private var §'e§:Matrix3D;
      
      private var §+!r§:Vector.<Matrix3D>;
      
      private var §^![§:int;
      
      private var §5!§:Vector.<§7"n§>;
      
      private var §!!F§:int;
      
      private var §<"K§:Context3D;
      
      private var §@!E§:int = -1;
      
      public function §"!_§()
      {
         super();
         this.§3!!§ = new Matrix3D();
         this.§0"_§ = new Matrix3D();
         this.§'e§ = new Matrix3D();
         this.§+!r§ = new Vector.<Matrix3D>(0);
         this.§^![§ = 0;
         this.§!!F§ = 0;
         this.§5!§ = new Vector.<§7"n§>();
         if(§5+§ == null)
         {
            §5+§ = [];
         }
         this.§?"9§();
         this.§#"<§(400,300);
         §6!R§.§+!d§.addEventListener(Event.CONTEXT3D_CREATE,this.§&"O§);
      }
      
      public static function §#"3§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§!!a§(param1);
      }
      
      public static function §3g§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§5D§.§>!s§(param2) / 255,§5D§.§7r§(param2) / 255,§5D§.§;E§(param2) / 255,param3);
      }
      
      protected function get §2!`§() : Matrix3D
      {
         return this.§0"_§;
      }
      
      protected function get §'^§() : Matrix3D
      {
         return this.§3!!§;
      }
      
      public function §4O§(param1:Context3D, param2:int) : void
      {
         this.§<"K§ = param1;
         this.§@!E§ = param2;
      }
      
      public function get §8D§() : Context3D
      {
         return this.§<"K§;
      }
      
      public function get §1!p§() : int
      {
         return this.§@!E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§7"n§ = null;
         for each(_loc1_ in this.§5!§)
         {
            _loc1_.dispose();
         }
         if(§6!R§.§+!d§)
         {
            §6!R§.§+!d§.removeEventListener(Event.CONTEXT3D_CREATE,this.§&"O§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§5D§.§>!s§(param2) / 255,§5D§.§7r§(param2) / 255,§5D§.§;E§(param2) / 255,param3);
      }
      
      private function §&"O§(param1:Event) : void
      {
         this.§5!§ = new <§7"n§>[new §7"n§()];
      }
      
      public function §#"<§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §!!J§[0] = 2 / param1;
         §!!J§[1] = §!!J§[2] = §!!J§[3] = §!!J§[4] = 0;
         §!!J§[5] = -2 / param2;
         §!!J§[6] = §!!J§[7] = §!!J§[8] = §!!J§[9] = 0;
         §!!J§[10] = -2 / (param4 - param3);
         §!!J§[11] = 0;
         §!!J§[12] = -1;
         §!!J§[13] = 1;
         §!!J§[14] = -(param4 + param3) / (param4 - param3);
         §!!J§[15] = 1;
         this.§3!!§.copyRawDataFrom(§!!J§);
      }
      
      public function §?"9§() : void
      {
         this.§0"_§.identity();
      }
      
      public function §9!J§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§0"_§.prependTranslation(param1,param2,param3);
      }
      
      public function §+!>§(param1:Number, param2:Vector3D = null) : void
      {
         this.§0"_§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §;§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§0"_§.prependScale(param1,param2,param3);
      }
      
      public function §!!a§(param1:DisplayObject) : void
      {
         param1.§!!a§(this.§0"_§);
      }
      
      public function §""?§() : void
      {
         if(this.§+!r§.length < this.§^![§ + 1)
         {
            this.§+!r§.push(new Matrix3D());
         }
         this.§+!r§[this.§^![§++].copyFrom(this.§0"_§);
      }
      
      public function §3!D§() : void
      {
         this.§0"_§.copyFrom(this.§+!r§[--this.§^![§]);
      }
      
      public function §?!t§() : void
      {
         this.§^![§ = 0;
         this.§?"9§();
      }
      
      public function get §,"f§() : Matrix3D
      {
         this.§'e§.identity();
         this.§'e§.append(this.§0"_§);
         this.§'e§.append(this.§3!!§);
         return this.§'e§;
      }
      
      public function batchQuad(param1:§-"z§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§@!7§.§'"!§(param1,param3,param4,param2))
         {
            this.§5"=§();
         }
         this.§@!7§.§,"F§(param1,param2,param3,param4,this.§0"_§);
      }
      
      public function §5"=§() : void
      {
         if(this.§@!7§.§`"k§ > 0)
         {
            this.§@!7§.render(this.§8D§,this.§3!!§);
            this.§@!7§.reset();
            ++this.§!!F§;
            if(this.§5!§.length <= this.§!!F§)
            {
               this.§5!§.push(new §7"n§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§?!t§();
         this.§!!F§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §@!7§() : §7"n§
      {
         return this.§5!§[this.§!!F§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §5+§[param2])
         {
            §5+§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §;!!§)
         {
            §;!!§ = param2;
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
