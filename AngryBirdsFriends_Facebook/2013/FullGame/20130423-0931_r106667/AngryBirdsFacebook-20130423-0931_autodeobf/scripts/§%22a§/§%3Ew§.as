package §"a§
{
   import §!=§.*;
   import §'!6§.*;
   import §<5§.Texture;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §>w§
   {
      
      private static var §throw§:Array;
      
      private static var § e§:Program3D;
      
      private static var § "M§:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §'!,§:Matrix3D;
      
      private var §,n§:Matrix3D;
      
      private var §7F§:Matrix3D;
      
      private var §<A§:Vector.<Matrix3D>;
      
      private var §4_§:int;
      
      private var §^!,§:Vector.<§0!B§>;
      
      private var §8"'§:int;
      
      private var §1K§:Context3D;
      
      private var §-!J§:int = -1;
      
      public function §>w§()
      {
         super();
         this.§'!,§ = new Matrix3D();
         this.§,n§ = new Matrix3D();
         this.§7F§ = new Matrix3D();
         this.§<A§ = new Vector.<Matrix3D>(0);
         this.§4_§ = 0;
         this.§8"'§ = 0;
         this.§^!,§ = new Vector.<§0!B§>();
         if(§throw§ == null)
         {
            §throw§ = [];
         }
         this.§ !E§();
         this.§2M§(400,300);
         §!"J§.§1&§.addEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
      }
      
      public static function §%!e§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§#,§(param1);
      }
      
      public static function §+!p§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§6$§.§3!6§(param2) / 255,§6$§.§5"B§(param2) / 255,§6$§.§="=§(param2) / 255,param3);
      }
      
      protected function get §<"S§() : Matrix3D
      {
         return this.§,n§;
      }
      
      protected function get §2!e§() : Matrix3D
      {
         return this.§'!,§;
      }
      
      public function §&!-§(param1:Context3D, param2:int) : void
      {
         this.§1K§ = param1;
         this.§-!J§ = param2;
      }
      
      public function get §;"-§() : Context3D
      {
         return this.§1K§;
      }
      
      public function get §extends§() : int
      {
         return this.§-!J§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§0!B§ = null;
         for each(_loc1_ in this.§^!,§)
         {
            _loc1_.dispose();
         }
         if(§!"J§.§1&§)
         {
            §!"J§.§1&§.removeEventListener(Event.CONTEXT3D_CREATE,this.§?3§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§6$§.§3!6§(param2) / 255,§6$§.§5"B§(param2) / 255,§6$§.§="=§(param2) / 255,param3);
      }
      
      private function §?3§(param1:Event) : void
      {
         this.§^!,§ = new <§0!B§>[new §0!B§()];
      }
      
      public function §2M§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         § "M§[0] = 2 / param1;
         § "M§[1] = § "M§[2] = § "M§[3] = § "M§[4] = 0;
         § "M§[5] = -2 / param2;
         § "M§[6] = § "M§[7] = § "M§[8] = § "M§[9] = 0;
         § "M§[10] = -2 / (param4 - param3);
         § "M§[11] = 0;
         § "M§[12] = -1;
         § "M§[13] = 1;
         § "M§[14] = -(param4 + param3) / (param4 - param3);
         § "M§[15] = 1;
         this.§'!,§.copyRawDataFrom(§ "M§);
      }
      
      public function § !E§() : void
      {
         this.§,n§.identity();
      }
      
      public function § !U§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§,n§.prependTranslation(param1,param2,param3);
      }
      
      public function §8u§(param1:Number, param2:Vector3D = null) : void
      {
         this.§,n§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §]"D§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§,n§.prependScale(param1,param2,param3);
      }
      
      public function §#,§(param1:DisplayObject) : void
      {
         param1.§#,§(this.§,n§);
      }
      
      public function §1"N§() : void
      {
         if(this.§<A§.length < this.§4_§ + 1)
         {
            this.§<A§.push(new Matrix3D());
         }
         this.§<A§[this.§4_§++].copyFrom(this.§,n§);
      }
      
      public function §^!<§() : void
      {
         this.§,n§.copyFrom(this.§<A§[--this.§4_§]);
      }
      
      public function §%Y§() : void
      {
         this.§4_§ = 0;
         this.§ !E§();
      }
      
      public function get §=n§() : Matrix3D
      {
         this.§7F§.identity();
         this.§7F§.append(this.§,n§);
         this.§7F§.append(this.§'!,§);
         return this.§7F§;
      }
      
      public function batchQuad(param1:§5T§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§0"F§.§+!U§(param1,param3,param4,param2))
         {
            this.§1"U§();
         }
         this.§0"F§.§;!T§(param1,param2,param3,param4,this.§,n§);
      }
      
      public function §1"U§() : void
      {
         if(this.§0"F§.§>"G§ > 0)
         {
            this.§0"F§.render(this.§;"-§,this.§'!,§);
            this.§0"F§.reset();
            ++this.§8"'§;
            if(this.§^!,§.length <= this.§8"'§)
            {
               this.§^!,§.push(new §0!B§());
            }
         }
      }
      
      public function §@<§() : void
      {
         this.§%Y§();
         this.§8"'§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §0"F§() : §0!B§
      {
         return this.§^!,§[this.§8"'§];
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
         if(param2 != § e§)
         {
            § e§ = param2;
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
