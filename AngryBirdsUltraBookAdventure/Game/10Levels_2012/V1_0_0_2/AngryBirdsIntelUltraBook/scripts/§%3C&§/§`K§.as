package §<&§
{
   import §'!9§.*;
   import §^!+§.Texture;
   import §`s§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §`K§
   {
      
      private static var §19§:Array;
      
      private static var §#n§:Program3D;
      
      private static var §88§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §9z§:Matrix3D;
      
      private var §8!M§:Matrix3D;
      
      private var §7K§:Matrix3D;
      
      private var §"F§:Vector.<Matrix3D>;
      
      private var §'H§:int;
      
      private var §^!r§:Vector.<§!j§>;
      
      private var §!!!§:int;
      
      private var §9"§:Context3D;
      
      private var §<Q§:int = -1;
      
      public function §`K§()
      {
         super();
         this.§9z§ = new Matrix3D();
         this.§8!M§ = new Matrix3D();
         this.§7K§ = new Matrix3D();
         this.§"F§ = new Vector.<Matrix3D>(0);
         this.§'H§ = 0;
         this.§!!!§ = 0;
         this.§^!r§ = new Vector.<§!j§>();
         if(§19§ == null)
         {
            §19§ = [];
         }
         this.§4z§();
         this.§ !T§(400,300);
         §^b§.§9E§.addEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
      }
      
      public static function §&N§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§0! §(param1);
      }
      
      public static function §&!m§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§ z§.§6!q§(param2) / 255,§ z§.§"5§(param2) / 255,§ z§.§9!,§(param2) / 255,param3);
      }
      
      protected function get §[V§() : Matrix3D
      {
         return this.§8!M§;
      }
      
      protected function get §-j§() : Matrix3D
      {
         return this.§9z§;
      }
      
      public function §6#§(param1:Context3D, param2:int) : void
      {
         this.§9"§ = param1;
         this.§<Q§ = param2;
      }
      
      public function get §8"§() : Context3D
      {
         return this.§9"§;
      }
      
      public function get §5!F§() : int
      {
         return this.§<Q§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§!j§ = null;
         for each(_loc1_ in this.§^!r§)
         {
            _loc1_.dispose();
         }
         if(§^b§.§9E§)
         {
            §^b§.§9E§.removeEventListener(Event.CONTEXT3D_CREATE,this.§!!X§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§ z§.§6!q§(param2) / 255,§ z§.§"5§(param2) / 255,§ z§.§9!,§(param2) / 255,param3);
      }
      
      private function §!!X§(param1:Event) : void
      {
         this.§^!r§ = new <§!j§>[new §!j§()];
      }
      
      public function § !T§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §88§[0] = 2 / param1;
         §88§[1] = §88§[2] = §88§[3] = §88§[4] = 0;
         §88§[5] = -2 / param2;
         §88§[6] = §88§[7] = §88§[8] = §88§[9] = 0;
         §88§[10] = -2 / (param4 - param3);
         §88§[11] = 0;
         §88§[12] = -1;
         §88§[13] = 1;
         §88§[14] = -(param4 + param3) / (param4 - param3);
         §88§[15] = 1;
         this.§9z§.copyRawDataFrom(§88§);
      }
      
      public function §4z§() : void
      {
         this.§8!M§.identity();
      }
      
      public function §-W§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§8!M§.prependTranslation(param1,param2,param3);
      }
      
      public function § !V§(param1:Number, param2:Vector3D = null) : void
      {
         this.§8!M§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §[!!§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§8!M§.prependScale(param1,param2,param3);
      }
      
      public function §0! §(param1:DisplayObject) : void
      {
         param1.§0! §(this.§8!M§);
      }
      
      public function §<!C§() : void
      {
         if(this.§"F§.length < this.§'H§ + 1)
         {
            this.§"F§.push(new Matrix3D());
         }
         this.§"F§[this.§'H§++].copyFrom(this.§8!M§);
      }
      
      public function §%!Q§() : void
      {
         this.§8!M§.copyFrom(this.§"F§[--this.§'H§]);
      }
      
      public function §=!5§() : void
      {
         this.§'H§ = 0;
         this.§4z§();
      }
      
      public function get §7!Y§() : Matrix3D
      {
         this.§7K§.identity();
         this.§7K§.append(this.§8!M§);
         this.§7K§.append(this.§9z§);
         return this.§7K§;
      }
      
      public function batchQuad(param1:§%!g§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§2!3§.§#2§(param1,param3,param4))
         {
            this.§!r§();
         }
         this.§2!3§.§ §(param1,param2,param3,param4,this.§8!M§);
      }
      
      public function §!r§() : void
      {
         if(this.§2!3§.§4!y§ > 0)
         {
            this.§2!3§.render(this.§8"§,this.§9z§);
            this.§2!3§.reset();
            ++this.§!!!§;
            if(this.§^!r§.length <= this.§!!!§)
            {
               this.§^!r§.push(new §!j§());
            }
         }
      }
      
      public function §[!P§() : void
      {
         this.§=!5§();
         this.§!!!§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §2!3§() : §!j§
      {
         return this.§^!r§[this.§!!!§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != §19§[param2])
         {
            §19§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §#n§)
         {
            §#n§ = param2;
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
