package §3!4§
{
   import §!!a§.*;
   import §'!&§.*;
   import §3"$§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §3=§
   {
      
      private static var §;^§:Array;
      
      private static var §"!8§:Program3D;
      
      private static var §8A§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §"A§:Matrix3D;
      
      private var §@!E§:Matrix3D;
      
      private var §use §:Matrix3D;
      
      private var §@;§:Vector.<Matrix3D>;
      
      private var §8"?§:int;
      
      private var §=l§:Vector.<§,$§>;
      
      private var §5B§:int;
      
      private var §`-§:Context3D;
      
      private var §[!t§:int = -1;
      
      public function §3=§()
      {
         super();
         this.§"A§ = new Matrix3D();
         this.§@!E§ = new Matrix3D();
         this.§use § = new Matrix3D();
         this.§@;§ = new Vector.<Matrix3D>(0);
         this.§8"?§ = 0;
         this.§5B§ = 0;
         this.§=l§ = new Vector.<§,$§>();
         if(§;^§ == null)
         {
            §;^§ = [];
         }
         this.§[V§();
         this.§3!o§(400,300);
         § ![§.§!G§.addEventListener(Event.CONTEXT3D_CREATE,this.§+!0§);
      }
      
      public static function §"r§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§!r§(param1);
      }
      
      public static function §=m§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§<"%§.§]%§(param2) / 255,§<"%§.§!!&§(param2) / 255,§<"%§.§>C§(param2) / 255,param3);
      }
      
      protected function get §[n§() : Matrix3D
      {
         return this.§@!E§;
      }
      
      protected function get §8!@§() : Matrix3D
      {
         return this.§"A§;
      }
      
      public function §1E§(param1:Context3D, param2:int) : void
      {
         this.§`-§ = param1;
         this.§[!t§ = param2;
      }
      
      public function get §"!!§() : Context3D
      {
         return this.§`-§;
      }
      
      public function get §90§() : int
      {
         return this.§[!t§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,$§ = null;
         for each(_loc1_ in this.§=l§)
         {
            _loc1_.dispose();
         }
         if(§ ![§.§!G§)
         {
            § ![§.§!G§.removeEventListener(Event.CONTEXT3D_CREATE,this.§+!0§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§<"%§.§]%§(param2) / 255,§<"%§.§!!&§(param2) / 255,§<"%§.§>C§(param2) / 255,param3);
      }
      
      private function §+!0§(param1:Event) : void
      {
         this.§=l§ = new <§,$§>[new §,$§()];
      }
      
      public function §3!o§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §8A§[0] = 2 / param1;
         §8A§[1] = §8A§[2] = §8A§[3] = §8A§[4] = 0;
         §8A§[5] = -2 / param2;
         §8A§[6] = §8A§[7] = §8A§[8] = §8A§[9] = 0;
         §8A§[10] = -2 / (param4 - param3);
         §8A§[11] = 0;
         §8A§[12] = -1;
         §8A§[13] = 1;
         §8A§[14] = -(param4 + param3) / (param4 - param3);
         §8A§[15] = 1;
         this.§"A§.copyRawDataFrom(§8A§);
      }
      
      public function §[V§() : void
      {
         this.§@!E§.identity();
      }
      
      public function §<!Z§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§@!E§.prependTranslation(param1,param2,param3);
      }
      
      public function §5!5§(param1:Number, param2:Vector3D = null) : void
      {
         this.§@!E§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §6!]§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§@!E§.prependScale(param1,param2,param3);
      }
      
      public function §!r§(param1:DisplayObject) : void
      {
         param1.§!r§(this.§@!E§);
      }
      
      public function §<!m§() : void
      {
         if(this.§@;§.length < this.§8"?§ + 1)
         {
            this.§@;§.push(new Matrix3D());
         }
         this.§@;§[this.§8"?§++].copyFrom(this.§@!E§);
      }
      
      public function §1c§() : void
      {
         this.§@!E§.copyFrom(this.§@;§[--this.§8"?§]);
      }
      
      public function §="=§() : void
      {
         this.§8"?§ = 0;
         this.§[V§();
      }
      
      public function get §-";§() : Matrix3D
      {
         this.§use §.identity();
         this.§use §.append(this.§@!E§);
         this.§use §.append(this.§"A§);
         return this.§use §;
      }
      
      public function batchQuad(param1:§ "E§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§2"<§.§4!%§(param1,param3,param4,param2))
         {
            this.§7§();
         }
         this.§2"<§.§3!U§(param1,param2,param3,param4,this.§@!E§);
      }
      
      public function §7§() : void
      {
         if(this.§2"<§.§?G§ > 0)
         {
            this.§2"<§.render(this.§"!!§,this.§"A§);
            this.§2"<§.reset();
            ++this.§5B§;
            if(this.§=l§.length <= this.§5B§)
            {
               this.§=l§.push(new §,$§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§="=§();
         this.§5B§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §2"<§() : §,$§
      {
         return this.§=l§[this.§5B§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §;^§[param2])
         {
            §;^§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §"!8§)
         {
            §"!8§ = param2;
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
