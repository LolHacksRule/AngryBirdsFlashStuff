package § F§
{
   import §+!S§.Texture;
   import §,!Q§.*;
   import §?!Z§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §,!>§
   {
      
      private static var §4G§:Array;
      
      private static var §2X§:Program3D;
      
      private static var §?A§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var § do§:Matrix3D;
      
      private var §#[§:Matrix3D;
      
      private var §4o§:Matrix3D;
      
      private var §%!S§:Vector.<Matrix3D>;
      
      private var §&!3§:int;
      
      private var §23§:Vector.<§&U§>;
      
      private var §0!3§:int;
      
      private var § !E§:Context3D;
      
      private var §'8§:int = -1;
      
      public function §,!>§()
      {
         super();
         this.§ do§ = new Matrix3D();
         this.§#[§ = new Matrix3D();
         this.§4o§ = new Matrix3D();
         this.§%!S§ = new Vector.<Matrix3D>(0);
         this.§&!3§ = 0;
         this.§0!3§ = 0;
         this.§23§ = new Vector.<§&U§>();
         if(§4G§ == null)
         {
            §4G§ = [];
         }
         this.§"'§();
         this.§]2§(400,300);
         §3!&§.§<1§.addEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
      }
      
      public static function §?!Q§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§<H§(param1);
      }
      
      public static function §1#§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3!L§.§`K§(param2) / 255,§3!L§.§#!O§(param2) / 255,§3!L§.§4i§(param2) / 255,param3);
      }
      
      protected function get §0!Q§() : Matrix3D
      {
         return this.§#[§;
      }
      
      protected function get §`!_§() : Matrix3D
      {
         return this.§ do§;
      }
      
      public function §+!3§(param1:Context3D, param2:int) : void
      {
         this.§ !E§ = param1;
         this.§'8§ = param2;
      }
      
      public function get §7!"§() : Context3D
      {
         return this.§ !E§;
      }
      
      public function get §`#§() : int
      {
         return this.§'8§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§&U§ = null;
         for each(_loc1_ in this.§23§)
         {
            _loc1_.dispose();
         }
         if(§3!&§.§<1§)
         {
            §3!&§.§<1§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§3!L§.§`K§(param2) / 255,§3!L§.§#!O§(param2) / 255,§3!L§.§4i§(param2) / 255,param3);
      }
      
      private function §!6§(param1:Event) : void
      {
         this.§23§ = new <§&U§>[new §&U§()];
      }
      
      public function §]2§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §?A§[0] = 2 / param1;
         §?A§[1] = §?A§[2] = §?A§[3] = §?A§[4] = 0;
         §?A§[5] = -2 / param2;
         §?A§[6] = §?A§[7] = §?A§[8] = §?A§[9] = 0;
         §?A§[10] = -2 / (param4 - param3);
         §?A§[11] = 0;
         §?A§[12] = -1;
         §?A§[13] = 1;
         §?A§[14] = -(param4 + param3) / (param4 - param3);
         §?A§[15] = 1;
         this.§ do§.copyRawDataFrom(§?A§);
      }
      
      public function §"'§() : void
      {
         this.§#[§.identity();
      }
      
      public function §4!C§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§#[§.prependTranslation(param1,param2,param3);
      }
      
      public function §5k§(param1:Number, param2:Vector3D = null) : void
      {
         this.§#[§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §@!Q§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§#[§.prependScale(param1,param2,param3);
      }
      
      public function §<H§(param1:DisplayObject) : void
      {
         param1.§<H§(this.§#[§);
      }
      
      public function §?!`§() : void
      {
         if(this.§%!S§.length < this.§&!3§ + 1)
         {
            this.§%!S§.push(new Matrix3D());
         }
         this.§%!S§[this.§&!3§++].copyFrom(this.§#[§);
      }
      
      public function §6W§() : void
      {
         this.§#[§.copyFrom(this.§%!S§[--this.§&!3§]);
      }
      
      public function §<!`§() : void
      {
         this.§&!3§ = 0;
         this.§"'§();
      }
      
      public function get §0G§() : Matrix3D
      {
         this.§4o§.identity();
         this.§4o§.append(this.§#[§);
         this.§4o§.append(this.§ do§);
         return this.§4o§;
      }
      
      public function batchQuad(param1:§2P§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§5![§.§-C§(param1,param3,param4))
         {
            this.§0;§();
         }
         this.§5![§.§-i§(param1,param2,param3,param4,this.§#[§);
      }
      
      public function §0;§() : void
      {
         if(this.§5![§.§0!>§ > 0)
         {
            this.§5![§.render(this.§7!"§,this.§ do§);
            this.§5![§.reset();
            ++this.§0!3§;
            if(this.§23§.length <= this.§0!3§)
            {
               this.§23§.push(new §&U§());
            }
         }
      }
      
      public function §8!-§() : void
      {
         this.§<!`§();
         this.§0!3§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §5![§() : §&U§
      {
         return this.§23§[this.§0!3§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §4G§[param2])
         {
            §4G§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §2X§)
         {
            §2X§ = param2;
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
