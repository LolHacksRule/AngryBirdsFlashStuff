package §&§#8
{
   import § G§.AGALMiniAssembler;
   import §""4§.Texture;
   import §#Z§.§1$§;
   import §#Z§.§6!`§;
   import §#Z§.§6J§;
   import §#Z§.DisplayObject;
   import §0"D§.§ #r§;
   import §0"D§.Color;
   import §8"'§.§1#O§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §""F§
   {
      
      public static const §"m§:int = 0;
      
      public static const §3"6§:int = 1;
      
      public static const §=o§:int = 2;
      
      private static var §=#2§:Point = new Point();
      
      private static var §"#h§:Rectangle = new Rectangle();
      
      private static var §]#@§:AGALMiniAssembler = new AGALMiniAssembler();
       
      
      private var §%!§:Matrix;
      
      private var §0#`§:Matrix;
      
      private var §]#3§:Matrix;
      
      private var mMvpMatrix3D:Matrix3D;
      
      private var §%"L§:Vector.<Matrix>;
      
      private var §<"H§:int;
      
      private var §;T§:int;
      
      private var §2O§:int;
      
      private var §2"2§:Texture;
      
      private var §4#M§:int;
      
      private var §0""§:int;
      
      private var §##V§:Rectangle;
      
      private var §5!<§:Vector.<§6!`§>;
      
      private var §00§:int;
      
      private var §'X§:Context3D;
      
      private var §=g§:int = -1;
      
      private var §+#C§:Program3D = null;
      
      private var § "r§:Boolean = false;
      
      private var §`#4§:Boolean = false;
      
      private var §["w§:Vector.<§=#$§>;
      
      private var §5"p§:int = 0;
      
      public function §""F§()
      {
         this.§["w§ = new Vector.<§=#$§>();
         super();
         this.§%!§ = new Matrix();
         this.§0#`§ = new Matrix();
         this.§]#3§ = new Matrix();
         this.mMvpMatrix3D = new Matrix3D();
         this.§%"L§ = new Vector.<Matrix>(0);
         this.§<"H§ = 0;
         this.§;T§ = 0;
         this.§2"2§ = null;
         this.§2O§ = §1$§.NORMAL;
         this.§##V§ = new Rectangle();
         this.§00§ = 0;
         this.§5!<§ = new <§6!`§>[new §6!`§()];
         this.§[#q§();
         this.§?"P§(0,0,400,300);
      }
      
      public static function §#!%§(param1:Matrix, param2:DisplayObject) : void
      {
         § #r§.§0# §(param1,param2.§9!5§);
      }
      
      public static function §+v§(param1:Boolean) : void
      {
         setBlendFactors(param1);
      }
      
      public static function setBlendFactors(param1:Boolean, param2:int = 0) : void
      {
         var _loc3_:Array = §1$§.§'"]§(param2,param1);
         Starling.context.setBlendFactors(_loc3_[0],_loc3_[1]);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(Color.§0"3§(param2) / 255,Color.§-"]§(param2) / 255,Color.§ "x§(param2) / 255,param3);
      }
      
      public static function §'$7§(param1:String, param2:String, param3:Program3D = null) : Program3D
      {
         var _loc4_:Context3D = null;
         if(param3 == null)
         {
            if((_loc4_ = Starling.context) == null)
            {
               throw new §1#O§();
            }
            param3 = _loc4_.createProgram();
         }
         param3.upload(§]#@§.§6$!§(Context3DProgramType.VERTEX,param1),§]#@§.§6$!§(Context3DProgramType.FRAGMENT,param2));
         return param3;
      }
      
      public function §1"W§(param1:Context3D, param2:int) : void
      {
         this.§'X§ = param1;
         this.§=g§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§'X§;
      }
      
      public function get §'4§() : int
      {
         return this.§=g§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§6!`§ = null;
         for each(_loc1_ in this.§5!<§)
         {
            _loc1_.dispose();
         }
      }
      
      public function §?"P§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§%!§.setTo(2 / param3,0,0,-2 / param4,-(2 * param1 + param3) / param3,(2 * param2 + param4) / param4);
      }
      
      public function §[#q§() : void
      {
         this.§0#`§.identity();
      }
      
      public function §"!t§(param1:Number, param2:Number) : void
      {
         § #r§.§;!C§(this.§0#`§,param1,param2);
      }
      
      public function §%##§(param1:Number) : void
      {
         § #r§.§0"c§(this.§0#`§,param1);
      }
      
      public function §#$A§(param1:Number, param2:Number) : void
      {
         § #r§.§=!r§(this.§0#`§,param1,param2);
      }
      
      public function §0# §(param1:Matrix) : void
      {
         § #r§.§0# §(this.§0#`§,param1);
      }
      
      public function §0"7§(param1:DisplayObject) : void
      {
         § #r§.§0# §(this.§0#`§,param1.§9!5§);
      }
      
      public function §%#G§() : void
      {
         if(this.§%"L§.length < this.§<"H§ + 1)
         {
            this.§%"L§.push(new Matrix());
         }
         this.§%"L§[int(this.§<"H§++)].copyFrom(this.§0#`§);
      }
      
      public function §?!G§() : void
      {
         this.§0#`§.copyFrom(this.§%"L§[int(--this.§<"H§)]);
      }
      
      public function §`#r§() : void
      {
         this.§<"H§ = 0;
         this.§[#q§();
      }
      
      public function get §-A§() : Matrix
      {
         this.§]#3§.copyFrom(this.§0#`§);
         this.§]#3§.concat(this.§%!§);
         return this.§]#3§;
      }
      
      public function get mvpMatrix3D() : Matrix3D
      {
         return § #r§.§+"O§(this.§-A§,this.mMvpMatrix3D);
      }
      
      public function get §5P§() : Matrix
      {
         return this.§0#`§;
      }
      
      public function get §="m§() : Matrix
      {
         return this.§%!§;
      }
      
      public function §8?§(param1:Boolean) : void
      {
         setBlendFactors(param1,this.§2O§);
      }
      
      public function get blendMode() : int
      {
         return this.§2O§;
      }
      
      public function set blendMode(param1:int) : void
      {
         if(param1 != §1$§.AUTO)
         {
            this.§2O§ = param1;
         }
      }
      
      public function get §^#+§() : Texture
      {
         return this.§2"2§;
      }
      
      public function set §^#+§(param1:Texture) : void
      {
         this.§2"2§ = param1;
         if(param1)
         {
            Starling.context.setRenderToTexture(param1.getBase(this.context));
         }
         else
         {
            Starling.context.setRenderToBackBuffer();
         }
      }
      
      public function configureBackBuffer(param1:int, param2:int, param3:int, param4:Boolean) : void
      {
         if(Starling.context == null)
         {
            return;
         }
         if(Starling.context.driverInfo == "Disposed")
         {
            return;
         }
         this.§4#M§ = param1;
         this.§0""§ = param2;
         Starling.context.configureBackBuffer(param1,param2,param3,param4);
      }
      
      public function get §9I§() : int
      {
         return this.§4#M§;
      }
      
      public function set §9I§(param1:int) : void
      {
         this.§4#M§ = param1;
      }
      
      public function get §6!"§() : int
      {
         return this.§0""§;
      }
      
      public function set §6!"§(param1:int) : void
      {
         this.§0""§ = param1;
      }
      
      public function get §2F§() : Rectangle
      {
         return !!this.§##V§.isEmpty() ? null : this.§##V§;
      }
      
      public function set §2F§(param1:Rectangle) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1)
         {
            this.§##V§.setTo(param1.x,param1.y,param1.width,param1.height);
            _loc2_ = !!this.§2"2§ ? int(this.§2"2§.root.nativeWidth) : int(this.§4#M§);
            _loc3_ = !!this.§2"2§ ? int(this.§2"2§.root.nativeHeight) : int(this.§0""§);
            § #r§.§7t§(this.§%!§,param1.x,param1.y,§=#2§);
            §"#h§.x = Math.max(0,(§=#2§.x + 1) / 2) * _loc2_;
            §"#h§.y = Math.max(0,(-§=#2§.y + 1) / 2) * _loc3_;
            § #r§.§7t§(this.§%!§,param1.right,param1.bottom,§=#2§);
            §"#h§.right = Math.min(1,(§=#2§.x + 1) / 2) * _loc2_;
            §"#h§.bottom = Math.min(1,(-§=#2§.y + 1) / 2) * _loc3_;
            Starling.context.setScissorRectangle(§"#h§);
         }
         else
         {
            this.§##V§.setEmpty();
            Starling.context.setScissorRectangle(null);
         }
      }
      
      public function batchQuad(param1:§6J§, param2:Number, param3:Texture = null, param4:int = 1) : void
      {
         if(!this.§`#4§ || param1.sortValue == 0)
         {
            this.§;#p§(param1,param2,param3,param4,this.§0#`§,this.§2O§);
         }
         else
         {
            this.§?"Y§(param1,param2,param3,param4,this.§0#`§,this.§2O§);
         }
      }
      
      private function §;#p§(param1:§6J§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§5!<§[this.§00§].isStateChange(param1.tinted,param2,param3,param4,param6,param1.§"#7§))
         {
            this.§&"!§();
         }
         this.§5!<§[this.§00§].addQuad(param1,param2,param3,param4,param5,param6);
      }
      
      private function §?"Y§(param1:§6J§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§5"p§ >= this.§["w§.length)
         {
            this.§["w§.push(new §=#$§());
         }
         this.§["w§[this.§5"p§].§,#T§(param1,param2,param3,param4,param5,param6);
         ++this.§5"p§;
      }
      
      public function set §,#N§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§=#$§ = null;
         if(this.§`#4§ && !param1)
         {
            this.§`#4§ = false;
            _loc2_ = [];
            _loc3_ = 0;
            while(_loc3_ < this.§5"p§)
            {
               _loc2_.push(this.§["w§[_loc3_]);
               _loc3_++;
            }
            _loc2_.sortOn("sortValue",Array.NUMERIC | Array.DESCENDING);
            _loc4_ = 0;
            while(_loc4_ < this.§5"p§)
            {
               _loc5_ = _loc2_[_loc4_];
               this.§;#p§(_loc5_.§"K§,_loc5_.§,"s§,_loc5_.texture,_loc5_.smoothing,_loc5_.§5P§,_loc5_.blendMode);
               _loc4_++;
            }
            this.§5"p§ = 0;
         }
         else
         {
            this.§`#4§ = param1;
         }
      }
      
      public function §&"!§() : void
      {
         if(this.§`#4§)
         {
            this.§,#N§ = false;
         }
         var _loc1_:§6!`§ = this.§5!<§[this.§00§];
         if(_loc1_.§3#R§ != 0)
         {
            if(this.context == null)
            {
               return;
            }
            if(this.context.driverInfo == "Disposed")
            {
               return;
            }
            _loc1_.§%O§(this,this.§%!§);
            _loc1_.reset();
            ++this.§00§;
            ++this.§;T§;
            if(this.§5!<§.length <= this.§00§)
            {
               this.§5!<§.push(new §6!`§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§`#r§();
         this.§2O§ = §1$§.NORMAL;
         this.§00§ = 0;
         this.§;T§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         §""F§.clear(param1,param2,param3);
      }
      
      public function §?$&§(param1:uint = 1) : void
      {
         this.§;T§ += param1;
      }
      
      public function get §;4§() : int
      {
         return this.§;T§;
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
      
      public function set §]y§(param1:Boolean) : void
      {
         this.§ "r§ = param1;
      }
      
      public function get §]y§() : Boolean
      {
         return this.§ "r§;
      }
      
      public function §?#5§(param1:Program3D) : void
      {
         if(!this.§ "r§)
         {
            this.§+#C§ = param1;
            this.context.setProgram(this.§+#C§);
         }
      }
   }
}
