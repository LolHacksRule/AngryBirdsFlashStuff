package §?$%§
{
   import §!$;§.Event;
   import §"#z§.Texture;
   import §'!j§.Starling;
   import §'!j§.§^$$§;
   import §,#=§.§0C§;
   import §,#=§.§=t§;
   import §,#=§.§>V§;
   import §,#=§.getNextPowerOfTwo;
   import §6#H§.§+!'§;
   import §6#H§.§<O§;
   import §6#H§.DisplayObject;
   import §6#H§.Image;
   import §6#H§.Stage;
   import §]#a§.§;L§;
   import §]#a§.§]$5§;
   import flash.display3D.Context3D;
   import flash.display3D.Context3DProgramType;
   import flash.display3D.Context3DVertexBufferFormat;
   import flash.display3D.IndexBuffer3D;
   import flash.display3D.Program3D;
   import flash.display3D.VertexBuffer3D;
   import flash.errors.IllegalOperationError;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.system.Capabilities;
   import flash.utils.getQualifiedClassName;
   
   public class §&"@§
   {
      
      private static var §`1§:Rectangle = new Rectangle();
      
      private static var §[!8§:Rectangle = new Rectangle();
      
      private static var §8#T§:Matrix = new Matrix();
       
      
      protected const §5"M§:Boolean = true;
      
      protected const §?$=§:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2      \n";
      
      protected const §&!S§:String = "tex oc, v0, fs0 <2d, clamp, linear, mipnone>";
      
      private var §%]§:int = 0;
      
      private var § "-§:int = 2;
      
      private var §8#[§:int = 0;
      
      private var §8o§:int = 1;
      
      private var §+#w§:int;
      
      private var §3#`§:Vector.<Texture>;
      
      private var §7#m§:String;
      
      private var §#"$§:Number;
      
      private var §9"J§:Number;
      
      private var §3!9§:Number;
      
      private var §<#C§:Number;
      
      private var §""a§:Number;
      
      private var §0$9§:§0C§;
      
      private var §"$<§:VertexBuffer3D;
      
      private var §9#r§:VertexBuffer3D;
      
      private var §[V§:Vector.<uint>;
      
      private var § #+§:IndexBuffer3D;
      
      private var §^"f§:Boolean;
      
      private var §=!]§:§<O§;
      
      private var §+$=§:Texture;
      
      private var §9&§:Matrix;
      
      public function §&"@§(param1:int = 1, param2:Number = 1.0)
      {
         this.§9&§ = new Matrix();
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.filters::FragmentFilter")
         {
            throw new §]$5§();
         }
         if(param1 < 1)
         {
            throw new ArgumentError("At least one pass is required.");
         }
         this.§+#w§ = param1;
         this.§9"J§ = this.§3!9§ = 0;
         this.§<#C§ = this.§""a§ = 0;
         this.§#"$§ = param2;
         this.§7#m§ = §-#C§.§&T§;
         this.§0$9§ = new §0C§(4);
         this.§0$9§.setTexCoords(0,0,0);
         this.§0$9§.setTexCoords(1,1,0);
         this.§0$9§.setTexCoords(2,0,1);
         this.§0$9§.setTexCoords(3,1,1);
         this.§[V§ = new <uint>[0,1,2,1,3,2];
         this.§[V§.fixed = true;
         this.createPrograms();
         Starling.§>x§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§%"]§,false,0,true);
      }
      
      public function dispose() : void
      {
         Starling.§>x§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§%"]§);
         if(this.§"$<§)
         {
            this.§"$<§.dispose();
         }
         if(this.§9#r§)
         {
            this.§9#r§.dispose();
         }
         if(this.§ #+§)
         {
            this.§ #+§.dispose();
         }
         this.§+h§();
         this.§75§();
      }
      
      private function §%"]§(param1:Object) : void
      {
         this.§"$<§ = null;
         this.§9#r§ = null;
         this.§ #+§ = null;
         this.§3#`§ = null;
         this.createPrograms();
      }
      
      public function render(param1:DisplayObject, param2:§^$$§, param3:Number) : void
      {
         if(this.§+1§ == §-#C§.§;!1§)
         {
            param1.render(param2,param3);
         }
         if(this.§^"f§)
         {
            this.§^"f§ = false;
            this.§=!]§ = this.§6z§(param1,param2,1,true);
            this.§+h§();
         }
         if(this.§=!]§)
         {
            this.§=!]§.render(param2,param3);
         }
         else
         {
            this.§6z§(param1,param2,param3,false);
         }
         if(this.§+1§ == §-#C§.§6!&§)
         {
            param1.render(param2,param3);
         }
      }
      
      protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         this.§>!b§(param1,§`1§);
         this.§,"G§(§`1§.width,§`1§.height,this.§#"$§ * param2,param1);
      }
      
      protected function renderDisplayObject(param1:DisplayObject, param2:§^$$§, param3:Number) : void
      {
         var _loc4_:Context3D = param2.context;
         param2.§""u§ = this.§3#`§[0];
         param2.clear(_loc4_);
         param2.blendMode = §+!'§.NORMAL;
         param2.§`!w§(§`1§.x,§`1§.y,§`1§.width,§`1§.height);
         param1.render(param2,param3);
         param2.§5!#§();
      }
      
      protected function renderFilter(param1:DisplayObject, param2:§^$$§, param3:Boolean, param4:Number, param5:Texture) : §<O§
      {
         var _loc9_:Texture = null;
         var _loc10_:§<O§ = null;
         var _loc11_:Image = null;
         var _loc12_:Stage = null;
         param2.§0!g§(this.§+#w§);
         var _loc6_:Context3D = param2.context;
         var _loc7_:Texture = Texture.§-R§(_loc6_,§`1§.width,§`1§.height,this.§5"M§,true,this.§#"$§ * param4);
         §^$$§.setBlendFactors(this.§5"M§);
         param2.§8""§();
         _loc6_.setVertexBufferAt(this.§%]§,this.§"$<§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc6_.setVertexBufferAt(this.§ "-§,this.§9#r§,0,Context3DVertexBufferFormat.FLOAT_2);
         var _loc8_:int = 0;
         while(_loc8_ < this.§+#w§)
         {
            if(_loc8_ < this.§+#w§ - 1)
            {
               param2.§""u§ = this.§=$$§(_loc8_ + 1);
               param2.clear(_loc6_);
            }
            else if(param3)
            {
               param2.§""u§ = _loc7_;
               param2.clear(_loc6_);
            }
            else
            {
               param2.§""u§ = param5;
               param2.§"!L§.copyFrom(this.§9&§);
               param2.§'#0§(this.§<#C§,this.§""a§);
               param2.blendMode = param1.blendMode;
               param2.§,#o§(this.§5"M§);
            }
            _loc9_ = this.§=$$§(_loc8_);
            _loc6_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,this.§8o§,param2.mvpMatrix3D,true);
            _loc6_.setTextureAt(this.§8#[§,_loc9_.getBase(_loc6_));
            this.activate(_loc8_,param2,_loc9_);
            _loc6_.drawTriangles(this.§ #+§,0,2);
            this.deactivate(_loc8_,param2,_loc9_);
            _loc8_++;
         }
         _loc6_.setVertexBufferAt(this.§%]§,null);
         _loc6_.setVertexBufferAt(this.§ "-§,null);
         _loc6_.setTextureAt(this.§8#[§,null);
         if(param3)
         {
            param2.§""u§ = param5;
            param2.§"!L§.copyFrom(this.§9&§);
            _loc10_ = new §<O§();
            _loc11_ = new Image(_loc7_);
            (_loc12_ = param1.stage).§+#W§(param1,§8#T§);
            §>V§.§[@§(§8#T§,§`1§.x + this.§<#C§,§`1§.y + this.§""a§);
            _loc10_.§6#o§(_loc11_,1,§8#T§);
            return _loc10_;
         }
         return null;
      }
      
      private function §6z§(param1:DisplayObject, param2:§^$$§, param3:Number, param4:Boolean = false) : §<O§
      {
         var _loc5_:Stage = param1.stage;
         var _loc6_:Context3D = param2.context;
         if(_loc5_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         if(_loc6_ == null)
         {
            throw new §;L§();
         }
         this.calculateBounds(param1,_loc5_,!param4,§`1§);
         if(§`1§.isEmpty())
         {
            this.§+h§();
            return !!param4 ? new §<O§() : null;
         }
         param2.§5!#§();
         param2.§ "t§();
         var _loc7_:Number = Starling.§>x§.§&C§;
         this.updateBuffersAndTextures(_loc6_,_loc7_);
         this.§9&§.copyFrom(param2.§"!L§);
         var _loc8_:Texture;
         if(_loc8_ = param2.§""u§)
         {
            throw new IllegalOperationError("It\'s currently not possible to stack filters! " + "This limitation will be removed in a future Stage3D version.");
         }
         this.renderDisplayObject(param1,param2,param3);
         var _loc9_:§<O§ = this.renderFilter(param1,param2,param4,_loc7_,_loc8_);
         param2.§;!?§();
         return _loc9_;
      }
      
      private function §>!b§(param1:Context3D, param2:Rectangle) : void
      {
         this.§0$9§.setPosition(0,param2.x,param2.y);
         this.§0$9§.setPosition(1,param2.right,param2.y);
         this.§0$9§.setPosition(2,param2.x,param2.bottom);
         this.§0$9§.setPosition(3,param2.right,param2.bottom);
         if(this.§"$<§ == null)
         {
            this.§"$<§ = param1.createVertexBuffer(4,§0C§.§&#Y§);
         }
         if(this.§9#r§ == null)
         {
            this.§9#r§ = param1.createVertexBuffer(4,§0C§.§<!2§);
         }
         if(this.§ #+§ == null)
         {
            this.§ #+§ = param1.createIndexBuffer(6);
            this.§ #+§.uploadFromVector(this.§[V§,0,6);
         }
         this.§"$<§.uploadFromVector(this.§0$9§.§8"B§,0,4);
         this.§9#r§.uploadFromVector(this.§0$9§.§3#3§,0,4);
      }
      
      private function §,"G§(param1:int, param2:int, param3:Number, param4:Context3D) : void
      {
         var _loc7_:int = 0;
         var _loc8_:Texture = null;
         var _loc5_:int = this.§+#w§ > 1 ? 2 : 1;
         var _loc6_:Boolean;
         if(_loc6_ = this.§3#`§ == null || this.§3#`§.length != _loc5_ || this.§3#`§[0].width != param1 || this.§3#`§[0].height != param2)
         {
            if(this.§3#`§)
            {
               for each(_loc8_ in this.§3#`§)
               {
                  _loc8_.dispose();
               }
               this.§3#`§.length = _loc5_;
            }
            else
            {
               this.§3#`§ = new Vector.<Texture>(_loc5_);
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               this.§3#`§[_loc7_] = Texture.§-R§(param4,param1,param2,this.§5"M§,true,param3);
               _loc7_++;
            }
         }
      }
      
      private function §=$$§(param1:int) : Texture
      {
         this.§+$=§ = this.§3#`§[param1 % 2];
         return this.§+$=§;
      }
      
      protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         var _loc5_:Number = NaN;
         if(param1 == param2 || param1 == Starling.§>x§.root)
         {
            param4.setTo(0,0,param2.stageWidth,param2.stageHeight);
         }
         else
         {
            param1.getBounds(param2,param4);
         }
         if(param3)
         {
            §[!8§.setTo(0,0,param2.stageWidth,param2.stageHeight);
            §=t§.§3"@§(param4,§[!8§,param4);
         }
         if(!param4.isEmpty())
         {
            _loc5_ = this.§#"$§ == 1 ? Number(0) : Number(1 / this.§#"$§);
            param4.x -= this.§9"J§ + _loc5_;
            param4.y -= this.§3!9§ + _loc5_;
            param4.width += 2 * (this.§9"J§ + _loc5_);
            param4.height += 2 * (this.§3!9§ + _loc5_);
            param4.width = getNextPowerOfTwo(param4.width * this.§#"$§) / this.§#"$§;
            param4.height = getNextPowerOfTwo(param4.height * this.§#"$§) / this.§#"$§;
         }
      }
      
      private function §+h§() : void
      {
         var _loc1_:Texture = null;
         for each(_loc1_ in this.§3#`§)
         {
            _loc1_.dispose();
         }
         this.§3#`§ = null;
      }
      
      private function §75§() : void
      {
         if(this.§=!]§)
         {
            if(this.§=!]§.texture)
            {
               this.§=!]§.texture.dispose();
            }
            this.§=!]§.dispose();
            this.§=!]§ = null;
         }
      }
      
      protected function createPrograms() : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function activate(param1:int, param2:§^$$§, param3:Texture) : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function deactivate(param1:int, param2:§^$$§, param3:Texture) : void
      {
      }
      
      protected function §1"T§(param1:String = null, param2:String = null) : Program3D
      {
         if(param1 == null)
         {
            param1 = this.§&!S§;
         }
         if(param2 == null)
         {
            param2 = this.§?$=§;
         }
         var _loc3_:Context3D = Starling.context;
         if(!_loc3_)
         {
            return null;
         }
         return §^$$§.§1"T§(param2,param1);
      }
      
      public function §%"0§() : void
      {
         this.§^"f§ = true;
         this.§75§();
      }
      
      public function §5"R§() : void
      {
         this.§^"f§ = false;
         this.§75§();
      }
      
      function §9#K§(param1:DisplayObject) : §<O§
      {
         var _loc2_:§^$$§ = null;
         var _loc3_:Stage = null;
         if(this.§=!]§)
         {
            return this.§=!]§;
         }
         _loc3_ = param1.stage;
         if(_loc3_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         _loc2_ = new §^$$§();
         param1.§+#W§(_loc3_,_loc2_.§1$%§);
         return this.§6z§(param1,_loc2_,1,true);
      }
      
      public function get §%!E§() : Boolean
      {
         return this.§=!]§ != null || this.§^"f§;
      }
      
      public function get §6!v§() : Number
      {
         return this.§#"$§;
      }
      
      public function set §6!v§(param1:Number) : void
      {
         if(param1 <= 0)
         {
            throw new ArgumentError("Resolution must be > 0");
         }
         this.§#"$§ = param1;
      }
      
      public function get §+1§() : String
      {
         return this.§7#m§;
      }
      
      public function set §+1§(param1:String) : void
      {
         this.§7#m§ = param1;
      }
      
      public function get offsetX() : Number
      {
         return this.§<#C§;
      }
      
      public function set offsetX(param1:Number) : void
      {
         this.§<#C§ = param1;
      }
      
      public function get offsetY() : Number
      {
         return this.§""a§;
      }
      
      public function set offsetY(param1:Number) : void
      {
         this.§""a§ = param1;
      }
      
      protected function get §,#N§() : Number
      {
         return this.§9"J§;
      }
      
      protected function set §,#N§(param1:Number) : void
      {
         this.§9"J§ = param1;
      }
      
      protected function get §3o§() : Number
      {
         return this.§3!9§;
      }
      
      protected function set §3o§(param1:Number) : void
      {
         this.§3!9§ = param1;
      }
      
      protected function set §@#W§(param1:int) : void
      {
         this.§+#w§ = param1;
      }
      
      protected function get §@#W§() : int
      {
         return this.§+#w§;
      }
      
      protected final function get §+!e§() : int
      {
         return this.§%]§;
      }
      
      protected final function set §+!e§(param1:int) : void
      {
         this.§%]§ = param1;
      }
      
      protected final function get §4"Z§() : int
      {
         return this.§ "-§;
      }
      
      protected final function set §4"Z§(param1:int) : void
      {
         this.§ "-§ = param1;
      }
      
      protected final function get §@#2§() : int
      {
         return this.§8#[§;
      }
      
      protected final function set §@#2§(param1:int) : void
      {
         this.§8#[§ = param1;
      }
      
      protected final function get §>"h§() : int
      {
         return this.§8o§;
      }
      
      protected final function set §>"h§(param1:int) : void
      {
         this.§8o§ = param1;
      }
      
      protected final function get §<"a§() : Texture
      {
         return this.§+$=§;
      }
   }
}
