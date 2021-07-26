package §'!j§
{
   import §"#z§.Texture;
   import §,#=§.§>V§;
   import §,#=§.Color;
   import §6#H§.§+!'§;
   import §6#H§.§,"$§;
   import §6#H§.§<O§;
   import §6#H§.DisplayObject;
   import §]"Q§.AGALMiniAssembler;
   import §]#a§.§;L§;
   import flash.display.BitmapData;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Program3D;
   import flash.geom.Matrix;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class §^$$§
   {
      
      public static const §]X§:int = 0;
      
      public static const §6!4§:int = 1;
      
      public static const §>#z§:int = 2;
      
      private static var §3#§:Point = new Point();
      
      private static var §8e§:Rectangle = new Rectangle();
      
      private static var §]"D§:AGALMiniAssembler = new AGALMiniAssembler();
       
      
      private var §]H§:Matrix;
      
      private var §"!Y§:Matrix;
      
      private var §+$4§:Matrix;
      
      private var mMvpMatrix3D:Matrix3D;
      
      private var §2B§:Vector.<Matrix>;
      
      private var §`"c§:int;
      
      private var §4#&§:int;
      
      private var §]L§:int;
      
      private var §5"e§:Texture;
      
      private var §!G§:int;
      
      private var §]!;§:int;
      
      private var §9o§:Rectangle;
      
      private var §7#K§:Vector.<§<O§>;
      
      private var §9#"§:int;
      
      private var §"""§:Context3D;
      
      private var §`m§:int = -1;
      
      private var §&"e§:Program3D = null;
      
      private var §8T§:Boolean = false;
      
      private var §9y§:Boolean = false;
      
      private var §8#s§:Vector.<§%!x§>;
      
      private var §+"F§:int = 0;
      
      public function §^$$§()
      {
         this.§8#s§ = new Vector.<§%!x§>();
         super();
         this.§]H§ = new Matrix();
         this.§"!Y§ = new Matrix();
         this.§+$4§ = new Matrix();
         this.mMvpMatrix3D = new Matrix3D();
         this.§2B§ = new Vector.<Matrix>(0);
         this.§`"c§ = 0;
         this.§4#&§ = 0;
         this.§5"e§ = null;
         this.§]L§ = §+!'§.NORMAL;
         this.§9o§ = new Rectangle();
         this.§9#"§ = 0;
         this.§7#K§ = new <§<O§>[new §<O§()];
         this.§8""§();
         this.§`!w§(0,0,400,300);
      }
      
      public static function §,#e§(param1:Matrix, param2:DisplayObject) : void
      {
         §>V§.§@!3§(param1,param2.§0"R§);
      }
      
      public static function §9n§(param1:Boolean) : void
      {
         setBlendFactors(param1);
      }
      
      public static function setBlendFactors(param1:Boolean, param2:int = 0) : void
      {
         var _loc3_:Array = §+!'§.§[#3§(param2,param1);
         Starling.context.setBlendFactors(_loc3_[0],_loc3_[1]);
      }
      
      public static function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         param1.clear(Color.§7!L§(param2) / 255,Color.§1[§(param2) / 255,Color.§["U§(param2) / 255,param3);
      }
      
      public static function §1"T§(param1:String, param2:String, param3:Program3D = null) : Program3D
      {
         var _loc4_:Context3D = null;
         if(param3 == null)
         {
            if((_loc4_ = Starling.context) == null)
            {
               throw new §;L§();
            }
            param3 = _loc4_.createProgram();
         }
         param3.upload(§]"D§.§5#?§(Context3DProgramType.VERTEX,param1),§]"D§.§5#?§(Context3DProgramType.FRAGMENT,param2));
         return param3;
      }
      
      public function §&#h§(param1:Context3D, param2:int) : void
      {
         this.§"""§ = param1;
         this.§`m§ = param2;
      }
      
      public function get context() : Context3D
      {
         return this.§"""§;
      }
      
      public function get §9"N§() : int
      {
         return this.§`m§;
      }
      
      public function dispose() : void
      {
         var _loc1_:§<O§ = null;
         for each(_loc1_ in this.§7#K§)
         {
            _loc1_.dispose();
         }
      }
      
      public function §`!w§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         this.§]H§.setTo(2 / param3,0,0,-2 / param4,-(2 * param1 + param3) / param3,(2 * param2 + param4) / param4);
      }
      
      public function §8""§() : void
      {
         this.§"!Y§.identity();
      }
      
      public function §'#0§(param1:Number, param2:Number) : void
      {
         §>V§.§[@§(this.§"!Y§,param1,param2);
      }
      
      public function §;B§(param1:Number) : void
      {
         §>V§.§8$!§(this.§"!Y§,param1);
      }
      
      public function §,#1§(param1:Number, param2:Number) : void
      {
         §>V§.§?#K§(this.§"!Y§,param1,param2);
      }
      
      public function §@!3§(param1:Matrix) : void
      {
         §>V§.§@!3§(this.§"!Y§,param1);
      }
      
      public function §@"L§(param1:DisplayObject) : void
      {
         §>V§.§@!3§(this.§"!Y§,param1.§0"R§);
      }
      
      public function § "t§() : void
      {
         if(this.§2B§.length < this.§`"c§ + 1)
         {
            this.§2B§.push(new Matrix());
         }
         this.§2B§[int(this.§`"c§++)].copyFrom(this.§"!Y§);
      }
      
      public function §;!?§() : void
      {
         this.§"!Y§.copyFrom(this.§2B§[int(--this.§`"c§)]);
      }
      
      public function §9#h§() : void
      {
         this.§`"c§ = 0;
         this.§8""§();
      }
      
      public function get §7"g§() : Matrix
      {
         this.§+$4§.copyFrom(this.§"!Y§);
         this.§+$4§.concat(this.§]H§);
         return this.§+$4§;
      }
      
      public function get mvpMatrix3D() : Matrix3D
      {
         return §>V§.§!$3§(this.§7"g§,this.mMvpMatrix3D);
      }
      
      public function get §1$%§() : Matrix
      {
         return this.§"!Y§;
      }
      
      public function get §"!L§() : Matrix
      {
         return this.§]H§;
      }
      
      public function §,#o§(param1:Boolean) : void
      {
         setBlendFactors(param1,this.§]L§);
      }
      
      public function get blendMode() : int
      {
         return this.§]L§;
      }
      
      public function set blendMode(param1:int) : void
      {
         if(param1 != §+!'§.AUTO)
         {
            this.§]L§ = param1;
         }
      }
      
      public function get §""u§() : Texture
      {
         return this.§5"e§;
      }
      
      public function set §""u§(param1:Texture) : void
      {
         this.§5"e§ = param1;
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
         this.§!G§ = param1;
         this.§]!;§ = param2;
         Starling.context.configureBackBuffer(param1,param2,param3,param4);
      }
      
      public function get §2D§() : int
      {
         return this.§!G§;
      }
      
      public function set §2D§(param1:int) : void
      {
         this.§!G§ = param1;
      }
      
      public function get §,P§() : int
      {
         return this.§]!;§;
      }
      
      public function set §,P§(param1:int) : void
      {
         this.§]!;§ = param1;
      }
      
      public function get §9!F§() : Rectangle
      {
         return !!this.§9o§.isEmpty() ? null : this.§9o§;
      }
      
      public function set §9!F§(param1:Rectangle) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(param1)
         {
            this.§9o§.setTo(param1.x,param1.y,param1.width,param1.height);
            _loc2_ = !!this.§5"e§ ? int(this.§5"e§.root.nativeWidth) : int(this.§!G§);
            _loc3_ = !!this.§5"e§ ? int(this.§5"e§.root.nativeHeight) : int(this.§]!;§);
            §>V§.§2>§(this.§]H§,param1.x,param1.y,§3#§);
            §8e§.x = Math.max(0,(§3#§.x + 1) / 2) * _loc2_;
            §8e§.y = Math.max(0,(-§3#§.y + 1) / 2) * _loc3_;
            §>V§.§2>§(this.§]H§,param1.right,param1.bottom,§3#§);
            §8e§.right = Math.min(1,(§3#§.x + 1) / 2) * _loc2_;
            §8e§.bottom = Math.min(1,(-§3#§.y + 1) / 2) * _loc3_;
            Starling.context.setScissorRectangle(§8e§);
         }
         else
         {
            this.§9o§.setEmpty();
            Starling.context.setScissorRectangle(null);
         }
      }
      
      public function batchQuad(param1:§,"$§, param2:Number, param3:Texture = null, param4:int = 1) : void
      {
         if(!this.§9y§ || param1.sortValue == 0)
         {
            this.§6#6§(param1,param2,param3,param4,this.§"!Y§,this.§]L§);
         }
         else
         {
            this.§4"9§(param1,param2,param3,param4,this.§"!Y§,this.§]L§);
         }
      }
      
      private function §6#6§(param1:§,"$§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§7#K§[this.§9#"§].isStateChange(param1.tinted,param2,param3,param4,param6,param1.§1U§))
         {
            this.§5!#§();
         }
         this.§7#K§[this.§9#"§].addQuad(param1,param2,param3,param4,param5,param6);
      }
      
      private function §4"9§(param1:§,"$§, param2:Number, param3:Texture, param4:int, param5:Matrix, param6:int) : void
      {
         if(this.§+"F§ >= this.§8#s§.length)
         {
            this.§8#s§.push(new §%!x§());
         }
         var _loc7_:§%!x§;
         (_loc7_ = this.§8#s§[this.§+"F§]).§@&§(param1,param2,param3,param4,param5,param6);
         ++this.§+"F§;
      }
      
      public function set § "l§(param1:Boolean) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:§%!x§ = null;
         if(this.§9y§ && !param1)
         {
            this.§9y§ = false;
            _loc2_ = [];
            _loc3_ = 0;
            while(_loc3_ < this.§+"F§)
            {
               _loc2_.push(this.§8#s§[_loc3_]);
               _loc3_++;
            }
            _loc2_.sortOn("sortValue",Array.NUMERIC | Array.DESCENDING);
            _loc4_ = 0;
            while(_loc4_ < this.§+"F§)
            {
               _loc5_ = _loc2_[_loc4_];
               this.§6#6§(_loc5_.§#I§,_loc5_.§-#c§,_loc5_.texture,_loc5_.smoothing,_loc5_.§1$%§,_loc5_.blendMode);
               _loc4_++;
            }
            this.§+"F§ = 0;
         }
         else
         {
            this.§9y§ = param1;
         }
      }
      
      public function §5!#§() : void
      {
         if(this.§9y§)
         {
            this.§ "l§ = false;
         }
         var _loc1_:§<O§ = this.§7#K§[this.§9#"§];
         if(_loc1_.§-",§ != 0)
         {
            if(this.context == null)
            {
               return;
            }
            if(this.context.driverInfo == "Disposed")
            {
               return;
            }
            _loc1_.§?"@§(this,this.§]H§);
            _loc1_.reset();
            ++this.§9#"§;
            ++this.§4#&§;
            if(this.§7#K§.length <= this.§9#"§)
            {
               this.§7#K§.push(new §<O§());
            }
         }
      }
      
      public function nextFrame() : void
      {
         this.§9#h§();
         this.§]L§ = §+!'§.NORMAL;
         this.§9#"§ = 0;
         this.§4#&§ = 0;
      }
      
      public function finishRendering(param1:Context3D) : void
      {
         param1.present();
      }
      
      public function clear(param1:Context3D, param2:uint = 0, param3:Number = 0.0) : void
      {
         §^$$§.clear(param1,param2,param3);
      }
      
      public function §0!g§(param1:uint = 1) : void
      {
         this.§4#&§ += param1;
      }
      
      public function get §6#n§() : int
      {
         return this.§4#&§;
      }
      
      public function setCanvasSize(param1:int, param2:int, param3:Number, param4:Number) : void
      {
      }
      
      public function get canvas() : BitmapData
      {
         return null;
      }
      
      public function set §@!$§(param1:Boolean) : void
      {
         this.§8T§ = param1;
      }
      
      public function get §@!$§() : Boolean
      {
         return this.§8T§;
      }
      
      public function §8$C§(param1:Program3D) : void
      {
         if(!this.§8T§)
         {
            this.§&"e§ = param1;
            this.context.setProgram(this.§&"e§);
         }
      }
   }
}
