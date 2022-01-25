package §6l§
{
   import § !K§.*;
   import §"![§.Texture;
   import §9!^§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §23§
   {
      
      private static var §;!Y§:Array;
      
      private static var §]!'§:Program3D;
      
      private static var §-!;§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §0!3§:Matrix3D;
      
      private var § !E§:Matrix3D;
      
      private var §'8§:Matrix3D;
      
      private var §0!Q§:Vector.<Matrix3D>;
      
      private var §`!_§:int;
      
      private var §+!3§:Vector.<§9d§>;
      
      private var §7!"§:int;
      
      private var §`#§:Context3D;
      
      private var §]2§:int = -1;
      
      public function §23§()
      {
         super();
         this.§0!3§ = new Matrix3D();
         this.§ !E§ = new Matrix3D();
         this.§'8§ = new Matrix3D();
         this.§0!Q§ = new Vector.<Matrix3D>(0);
         this.§`!_§ = 0;
         this.§7!"§ = 0;
         this.§+!3§ = new Vector.<§9d§>();
         if(§;!Y§ == null)
         {
            §;!Y§ = [];
         }
         this.§6W§();
         this.§?!`§(400,300);
         §79§.§#[§.addEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
      }
      
      public static function §+Y§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§8!-§(param1);
      }
      
      public static function §"!]§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§83§.§4i§(param2) / 255,§83§.§use§(param2) / 255,§83§.§3Q§(param2) / 255,param3);
      }
      
      protected function get §"'§() : Matrix3D
      {
         return this.§ !E§;
      }
      
      protected function get §4!C§() : Matrix3D
      {
         return this.§0!3§;
      }
      
      public function §5k§(param1:Context3D, param2:int) : void
      {
         this.§`#§ = param1;
         this.§]2§ = param2;
      }
      
      public function get §@!Q§() : Context3D
      {
         return this.§`#§;
      }
      
      public function get §<H§() : int
      {
         return this.§]2§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§9d§ = null;
         for each(_loc1_ in this.§+!3§)
         {
            _loc1_.dispose();
         }
         if(§79§.§#[§)
         {
            §79§.§#[§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!6§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§83§.§4i§(param2) / 255,§83§.§use§(param2) / 255,§83§.§3Q§(param2) / 255,param3);
      }
      
      private function §!6§(param1:Event) : void
      {
         this.§+!3§ = new <§9d§>[new §9d§()];
      }
      
      public function §?!`§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §-!;§[0] = 2 / param1;
         §-!;§[1] = §-!;§[2] = §-!;§[3] = §-!;§[4] = 0;
         §-!;§[5] = -2 / param2;
         §-!;§[6] = §-!;§[7] = §-!;§[8] = §-!;§[9] = 0;
         §-!;§[10] = -2 / (param4 - param3);
         §-!;§[11] = 0;
         §-!;§[12] = -1;
         §-!;§[13] = 1;
         §-!;§[14] = -(param4 + param3) / (param4 - param3);
         §-!;§[15] = 1;
         this.§0!3§.copyRawDataFrom(§-!;§);
      }
      
      public function §6W§() : void
      {
         this.§ !E§.identity();
      }
      
      public function §<!`§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§ !E§.prependTranslation(param1,param2,param3);
      }
      
      public function §0G§(param1:Number, param2:Vector3D = null) : void
      {
         this.§ !E§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §0;§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§ !E§.prependScale(param1,param2,param3);
      }
      
      public function §8!-§(param1:DisplayObject) : void
      {
         param1.§8!-§(this.§ !E§);
      }
      
      public function §5![§() : void
      {
         if(this.§0!Q§.length < this.§`!_§ + 1)
         {
            this.§0!Q§.push(new Matrix3D());
         }
         this.§0!Q§[this.§`!_§++].copyFrom(this.§ !E§);
      }
      
      public function §4G§() : void
      {
         this.§ !E§.copyFrom(this.§0!Q§[--this.§`!_§]);
      }
      
      public function §2X§() : void
      {
         this.§`!_§ = 0;
         this.§6W§();
      }
      
      public function get §?A§() : Matrix3D
      {
         this.§'8§.identity();
         this.§'8§.append(this.§ !E§);
         this.§'8§.append(this.§0!3§);
         return this.§'8§;
      }
      
      public function batchQuad(param1:§&&§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§,!F§.§'!W§(param1,param3,param4))
         {
            this.§?!Q§();
         }
         this.§,!F§.§<$§(param1,param2,param3,param4,this.§ !E§);
      }
      
      public function §?!Q§() : void
      {
         if(this.§,!F§.§1d§ > 0)
         {
            this.§,!F§.render(this.§@!Q§,this.§0!3§);
            this.§,!F§.reset();
            ++this.§7!"§;
            if(this.§+!3§.length <= this.§7!"§)
            {
               this.§+!3§.push(new §9d§());
            }
         }
      }
      
      public function §1#§() : void
      {
         this.§2X§();
         this.§7!"§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §,!F§() : §9d§
      {
         return this.§+!3§[this.§7!"§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §;!Y§[param2])
         {
            §;!Y§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §]!'§)
         {
            §]!'§ = param2;
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
