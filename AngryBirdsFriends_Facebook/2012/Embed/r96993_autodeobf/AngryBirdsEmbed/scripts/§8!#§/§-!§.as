package §8!#§
{
   import §8j§.*;
   import §>u§.Texture;
   import §]!6§.*;
   import flash.display.BitmapData;
   import flash.display3D.*;
   import flash.display3D.textures.TextureBase;
   import flash.geom.*;
   import starling.events.Event;
   
   public class §-!§
   {
      
      private static var § !§:Array;
      
      private static var §?x§:Program3D;
      
      private static var §&! §:Vector.<Number> = new Vector.<Number>(16,true);
       
      
      private var §[8§:Matrix3D;
      
      private var §1J§:Matrix3D;
      
      private var §9&§:Matrix3D;
      
      private var §+c§:Vector.<Matrix3D>;
      
      private var §1!2§:int;
      
      private var §9!4§:Vector.<§,8§>;
      
      private var §90§:int;
      
      private var §0-§:Context3D;
      
      private var §6!E§:int = -1;
      
      public function §-!§()
      {
         super();
         this.§[8§ = new Matrix3D();
         this.§1J§ = new Matrix3D();
         this.§9&§ = new Matrix3D();
         this.§+c§ = new Vector.<Matrix3D>(0);
         this.§1!2§ = 0;
         this.§90§ = 0;
         this.§9!4§ = new Vector.<§,8§>();
         if(§ !§ == null)
         {
            § !§ = [];
         }
         this.§2@§();
         this.§"V§(400,300);
         §<n§.§?@§.addEventListener(Event.CONTEXT3D_CREATE,this.§80§);
      }
      
      public static function §6$§(param1:Matrix3D, param2:DisplayObject) : void
      {
         param2.§-4§(param1);
      }
      
      public static function §45§(param1:Context3D, param2:Boolean) : void
      {
         var _loc3_:String = Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA;
         var _loc4_:String = !!param2 ? Context3DBlendFactor.ONE : Context3DBlendFactor.SOURCE_ALPHA;
         param1.setBlendFactors(_loc4_,_loc3_);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§7f§.§[H§(param2) / 255,§7f§.§'X§(param2) / 255,§7f§.§"?§(param2) / 255,param3);
      }
      
      protected function get §,!F§() : Matrix3D
      {
         return this.§1J§;
      }
      
      protected function get §&E§() : Matrix3D
      {
         return this.§[8§;
      }
      
      public function §^R§(param1:Context3D, param2:int) : void
      {
         this.§0-§ = param1;
         this.§6!E§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§0-§;
      }
      
      public function get §@c§() : int
      {
         return this.§6!E§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§,8§ = null;
         for each(_loc1_ in this.§9!4§)
         {
            _loc1_.dispose();
         }
         if(§<n§.§?@§)
         {
            §<n§.§?@§.removeEventListener(Event.CONTEXT3D_CREATE,this.§80§);
         }
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(§7f§.§[H§(param2) / 255,§7f§.§'X§(param2) / 255,§7f§.§"?§(param2) / 255,param3);
      }
      
      private function §80§(param1:Event) : void
      {
         this.§9!4§ = new <§,8§>[new §,8§()];
      }
      
      public function §"V§(param1:Number, param2:Number, param3:Number = -1.0, param4:Number = 1.0) : void
      {
         §&! §[0] = 2 / param1;
         §&! §[1] = §&! §[2] = §&! §[3] = §&! §[4] = 0;
         §&! §[5] = -2 / param2;
         §&! §[6] = §&! §[7] = §&! §[8] = §&! §[9] = 0;
         §&! §[10] = -2 / (param4 - param3);
         §&! §[11] = 0;
         §&! §[12] = -1;
         §&! §[13] = 1;
         §&! §[14] = -(param4 + param3) / (param4 - param3);
         §&! §[15] = 1;
         this.§[8§.copyRawDataFrom(§&! §);
      }
      
      public function §2@§() : void
      {
         this.§1J§.identity();
      }
      
      public function §,]§(param1:Number, param2:Number, param3:Number = 0) : void
      {
         this.§1J§.prependTranslation(param1,param2,param3);
      }
      
      public function §?2§(param1:Number, param2:Vector3D = null) : void
      {
         this.§1J§.prependRotation(param1 / Math.PI * 180,param2 == null ? Vector3D.Z_AXIS : param2);
      }
      
      public function §^d§(param1:Number, param2:Number, param3:Number = 1.0) : void
      {
         this.§1J§.prependScale(param1,param2,param3);
      }
      
      public function §-4§(param1:DisplayObject) : void
      {
         param1.§-4§(this.§1J§);
      }
      
      public function §7! §() : void
      {
         if(this.§+c§.length < this.§1!2§ + 1)
         {
            this.§+c§.push(new Matrix3D());
         }
         this.§+c§[this.§1!2§++].copyFrom(this.§1J§);
      }
      
      public function §'#§() : void
      {
         this.§1J§.copyFrom(this.§+c§[--this.§1!2§]);
      }
      
      public function §!!G§() : void
      {
         this.§1!2§ = 0;
         this.§2@§();
      }
      
      public function get §3C§() : Matrix3D
      {
         this.§9&§.identity();
         this.§9&§.append(this.§1J§);
         this.§9&§.append(this.§[8§);
         return this.§9&§;
      }
      
      public function batchQuad(param1:§8D§, param2:Number, param3:Texture = null, param4:String = null) : void
      {
         if(this.§3!$§.§2n§(param1,param3,param4))
         {
            this.§+y§();
         }
         this.§3!$§.§;`§(param1,param2,param3,param4,this.§1J§);
      }
      
      public function §+y§() : void
      {
         if(this.§3!$§.§?-§ > 0)
         {
            this.§3!$§.render(this.context,this.§[8§);
            this.§3!$§.reset();
            ++this.§90§;
            if(this.§9!4§.length <= this.§90§)
            {
               this.§9!4§.push(new §,8§());
            }
         }
      }
      
      public function §'Q§() : void
      {
         this.§!!G§();
         this.§90§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      private function get §3!$§() : §,8§
      {
         return this.§9!4§[this.§90§];
      }
      
      public function setTextureAt(param1:Context3D, param2:int, param3:TextureBase) : void
      {
         if(param3 != § !§[param2])
         {
            § !§[param2] = param3;
            param1.setTextureAt(param2,param3);
         }
      }
      
      public function setProgram(param1:Context3D, param2:Program3D) : void
      {
         if(param2 != §?x§)
         {
            §?x§ = param2;
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
