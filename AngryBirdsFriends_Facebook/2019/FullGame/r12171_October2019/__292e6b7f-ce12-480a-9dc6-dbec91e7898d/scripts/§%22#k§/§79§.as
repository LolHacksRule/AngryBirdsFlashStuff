package §"#k§
{
   import §'"T§.§^G§;
   import §,#e§.§4!_§;
   import §,#e§.§;!`§;
   import §,#e§.DisplayObject;
   import §,#e§.§^n§;
   import §-#]§.Texture;
   import §0U§.AGALMiniAssembler;
   import §8#p§.§"_§;
   import §8#p§.Color;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §79§
   {
      
      public static const §0#s§:int = 0;
      
      public static const §[!X§:int = 1;
      
      public static const §9$2§:int = 2;
      
      private static var §4g§:Point = new Point();
      
      private static var §9#p§:Rectangle = new Rectangle();
      
      private static var §+#e§:AGALMiniAssembler = new AGALMiniAssembler();
       
      
      private var §4!I§:Matrix;
      
      private var §8k§:Matrix;
      
      private var §@#3§:Matrix;
      
      private var mMvpMatrix3D:Matrix3D;
      
      private var §0"z§:Vector.<Matrix>;
      
      private var §+!E§:int;
      
      private var §!#X§:int;
      
      private var §06§:int;
      
      private var §!"I§:Texture;
      
      private var §^&§:int;
      
      private var §2#O§:int;
      
      private var §"!L§:Rectangle;
      
      private var §&!P§:Vector.<§^n§>;
      
      private var §,""§:int;
      
      private var § each§:Context3D;
      
      private var §6s§:int = -1;
      
      private var §#"!§:Program3D = null;
      
      private var §<!k§:Boolean = false;
      
      private var §7e§:Boolean = false;
      
      private var §0#p§:Vector.<§8"3§>;
      
      private var §>"O§:int = 0;
      
      public function §79§()
      {
         this.§0#p§ = new Vector.<§8"3§>();
         super();
         this.§4!I§ = new Matrix();
         this.§8k§ = new Matrix();
         this.§@#3§ = new Matrix();
         this.mMvpMatrix3D = new Matrix3D();
         this.§0"z§ = new Vector.<Matrix>(0);
         this.§+!E§ = 0;
         this.§!#X§ = 0;
         this.§!"I§ = null;
         this.§06§ = §4!_§.NORMAL;
         this.§"!L§ = new Rectangle();
         this.§,""§ = 0;
         this.§&!P§ = new <§^n§>[new §^n§()];
         this.§?!m§();
         this.§0c§(0,0,400,300);
      }
      
      public static function §]"v§(param1:Matrix, param2:DisplayObject) : void
      {
         §"_§.§5"m§(param1,param2.§'"A§);
      }
      
      public static function §`!F§(param1:Boolean) : void
      {
         setBlendFactors(param1);
      }
      
      public static function setBlendFactors(param1:Boolean, param2:int = 0) : void
      {
         var _loc3_:Array = §4!_§.§?"%§(param2,param1);
         Starling.context.setBlendFactors(_loc3_[0],_loc3_[1]);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(Color.§!!F§(param2) / 255,Color.§<!n§(param2) / 255,Color.§,=§(param2) / 255,param3);
      }
      
      public static function §[!U§(param1:String, param2:String, param3:Program3D = null) : Program3D
      {
         var _loc4_:Context3D = null;
         if(param3 == null)
         {
            if((_loc4_ = Starling.context) == null)
            {
               throw new §^G§();
            }
            param3 = _loc4_.createProgram();
         }
         param3.upload(§+#e§.§,#q§(Context3DProgramType.VERTEX,param1),§+#e§.§,#q§(Context3DProgramType.FRAGMENT,param2));
         return param3;
      }
      
      public function §&"8§(param1:Context3D, param2:int) : void
      {
         this.§ each§ = param1;
         this.§6s§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§ each§;
      }
      
      public function get §``§() : int
      {
         return this.§6s§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§^n§ = null;
         for each(_loc1_ in this.§&!P§)
         {
            _loc1_.dispose();
         }
      }
      
      public function §0c§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§4!I§.setTo(2 / param3,0,0,-2 / param4,-(2 * param1 + param3) / param3,(2 * param2 + param4) / param4);
      }
      
      public function §?!m§() : void
      {
         this.§8k§.identity();
      }
      
      public function §8""§(param1:Number, param2:Number) : void
      {
         §"_§.§3Q§(this.§8k§,param1,param2);
      }
      
      public function §?"R§(param1:Number) : void
      {
         §"_§.§2"[§(this.§8k§,param1);
      }
      
      public function §]'§(param1:Number, param2:Number) : void
      {
         §"_§.§<@§(this.§8k§,param1,param2);
      }
      
      public function §5"m§(param1:Matrix) : void
      {
         §"_§.§5"m§(this.§8k§,param1);
      }
      
      public function §"#N§(param1:DisplayObject) : void
      {
         §"_§.§5"m§(this.§8k§,param1.§'"A§);
      }
      
      public function §!!&§() : void
      {
         if(this.§0"z§.length < this.§+!E§ + 1)
         {
            this.§0"z§.push(new Matrix());
         }
         this.§0"z§[int(this.§+!E§++)].copyFrom(this.§8k§);
      }
      
      public function §&M§() : void
      {
         this.§8k§.copyFrom(this.§0"z§[int(--this.§+!E§)]);
      }
      
      public function §!!G§() : void
      {
         this.§+!E§ = 0;
         this.§?!m§();
      }
      
      public function get §9!§() : Matrix
      {
         this.§@#3§.copyFrom(this.§8k§);
         this.§@#3§.concat(this.§4!I§);
         return this.§@#3§;
      }
      
      public function get mvpMatrix3D() : Matrix3D
      {
         return §"_§.§"r§(this.§9!§,this.mMvpMatrix3D);
      }
      
      public function get §4"b§() : Matrix
      {
         return this.§8k§;
      }
      
      public function get §[8§() : Matrix
      {
         return this.§4!I§;
      }
      
      public function §%#a§(param1:Boolean) : void
      {
         setBlendFactors(param1,this.§06§);
      }
      
      public function get blendMode() : int
      {
         return this.§06§;
      }
      
      public function set blendMode(param1:int) : void
      {
         if(param1 != §4!_§.AUTO)
         {
            this.§06§ = param1;
         }
      }
      
      public function get §5L§() : Texture
      {
         return this.§!"I§;
      }
      
      public function set §5L§(param1:Texture) : void
      {
         this.§!"I§ = param1;
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
         this.§^&§ = param1;
         this.§2#O§ = param2;
         Starling.context.configureBackBuffer(param1,param2,param3,param4);
      }
      
      public function get §3!x§() : int
      {
         return this.§^&§;
      }
      
      public function set §3!x§(param1:int) : void
      {
         this.§^&§ = param1;
      }
      
      public function get § !O§() : int
      {
         return this.§2#O§;
      }
      
      public function set § !O§(param1:int) : void
      {
         this.§2#O§ = param1;
      }
      
      public function get §="_§() : Rectangle
      {
         return !!this.§"!L§.isEmpty() ? null : this.§"!L§;
      }
      
      public function set §="_§(param1:Rectangle) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1)
         {
            this.§"!L§.setTo(param1.x,param1.y,param1.width,param1.height);
            _loc2_ = !!this.§!"I§ ? int(this.§!"I§.root.nativeWidth) : int(this.§^&§);
            _loc3_ = !!this.§!"I§ ? int(this.§!"I§.root.nativeHeight) : int(this.§2#O§);
            §"_§.§>U§(this.§4!I§,param1.x,param1.y,§4g§);
            §9#p§.x = Math.max(0,(§4g§.x + 1) / 2) * _loc2_;
            §9#p§.y = Math.max(0,(-§4g§.y + 1) / 2) * _loc3_;
            §"_§.§>U§(this.§4!I§,param1.right,param1.bottom,§4g§);
            §9#p§.right = Math.min(1,(§4g§.x + 1) / 2) * _loc2_;
            §9#p§.bottom = Math.min(1,(-§4g§.y + 1) / 2) * _loc3_;
            Starling.context.setScissorRectangle(§9#p§);
         }
         else
         {
            this.§"!L§.setEmpty();
            Starling.context.setScissorRectangle(null);
         }
      }
      
      public function batchQuad(param1:§;!`§, param2:Number, param3:Texture = null, param4:int = 1) : void
      {
         if(!this.§7e§ || param1.sortValue == 0)
         {
            this.§##r§(param1,param2,param3,param4,this.§8k§,this.§06§);
         }
         else
         {
            this.§2!q§(param1,param2,param3,param4,this.§8k§,this.§06§);
         }
      }
      
      private function §##r§(param1:§;!`§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§&!P§[this.§,""§].isStateChange(param1.tinted,param2,param3,param4,param6,param1.§ w§))
         {
            this.§6@§();
         }
         this.§&!P§[this.§,""§].addQuad(param1,param2,param3,param4,param5,param6);
      }
      
      private function §2!q§(param1:§;!`§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§>"O§ >= this.§0#p§.length)
         {
            this.§0#p§.push(new §8"3§());
         }
         var _loc7_:§8"3§;
         (_loc7_ = this.§0#p§[this.§>"O§]).§!!5§(param1,param2,param3,param4,param5,param6);
         ++this.§>"O§;
      }
      
      public function set §4!C§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§8"3§ = null;
         if(this.§7e§ && !param1)
         {
            this.§7e§ = false;
            _loc2_ = [];
            _loc3_ = 0;
            while(_loc3_ < this.§>"O§)
            {
               _loc2_.push(this.§0#p§[_loc3_]);
               _loc3_++;
            }
            _loc2_.sortOn("sortValue",Array.NUMERIC | Array.DESCENDING);
            _loc4_ = 0;
            while(_loc4_ < this.§>"O§)
            {
               _loc5_ = _loc2_[_loc4_];
               this.§##r§(_loc5_.§9,§,_loc5_.§#!F§,_loc5_.texture,_loc5_.smoothing,_loc5_.§4"b§,_loc5_.blendMode);
               _loc4_++;
            }
            this.§>"O§ = 0;
         }
         else
         {
            this.§7e§ = param1;
         }
      }
      
      public function §6@§() : void
      {
         if(this.§7e§)
         {
            this.§4!C§ = false;
         }
         var _loc1_:§^n§ = this.§&!P§[this.§,""§];
         if(_loc1_.§+E§ != 0)
         {
            if(this.context == null)
            {
               return;
            }
            if(this.context.driverInfo == "Disposed")
            {
               return;
            }
            _loc1_.§4"V§(this,this.§4!I§);
            _loc1_.reset();
            ++this.§,""§;
            ++this.§!#X§;
            if(this.§&!P§.length <= this.§,""§)
            {
               this.§&!P§.push(new §^n§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§!!G§();
         this.§06§ = §4!_§.NORMAL;
         this.§,""§ = 0;
         this.§!#X§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         §79§.clear(param1,param2,param3);
      }
      
      public function § "4§(param1:uint = 1) : void
      {
         this.§!#X§ += param1;
      }
      
      public function get §!"c§() : int
      {
         return this.§!#X§;
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
      
      public function set §9w§(param1:Boolean) : void
      {
         this.§<!k§ = param1;
      }
      
      public function get §9w§() : Boolean
      {
         return this.§<!k§;
      }
      
      public function §"!§(param1:Program3D) : void
      {
         if(!this.§<!k§)
         {
            this.§#"!§ = param1;
            this.context.setProgram(this.§#"!§);
         }
      }
   }
}
