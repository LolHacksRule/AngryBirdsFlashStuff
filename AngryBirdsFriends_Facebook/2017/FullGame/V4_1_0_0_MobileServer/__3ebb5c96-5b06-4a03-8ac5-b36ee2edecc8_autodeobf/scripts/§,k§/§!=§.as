package §,k§
{
   import §&!v§.§1i§;
   import §&!v§.DisplayObject;
   import §&!v§.Image;
   import §&!v§.Stage;
   import §&!v§.§^"L§;
   import §-"+§.Texture;
   import §1P§.Event;
   import §7v§.§-D§;
   import §7v§.§7!W§;
   import §9+§.Starling;
   import §9+§.§]"+§;
   import §>l§.§%"O§;
   import §>l§.§+!Y§;
   import §>l§.§^!Q§;
   import §>l§.getNextPowerOfTwo;
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
   
   public class §!=§
   {
      
      private static var §7#Z§:Rectangle = new Rectangle();
      
      private static var §3"@§:Rectangle = new Rectangle();
      
      private static var §9#]§:Matrix = new Matrix();
       
      
      protected const §0";§:Boolean = true;
      
      protected const §#"J§:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2      \n";
      
      protected const §]W§:String = "tex oc, v0, fs0 <2d, clamp, linear, mipnone>";
      
      private var §9[§:int = 0;
      
      private var §5]§:int = 2;
      
      private var §7!7§:int = 0;
      
      private var §;"u§:int = 1;
      
      private var §8#;§:int;
      
      private var §#!x§:Vector.<Texture>;
      
      private var §+#n§:String;
      
      private var §?$"§:Number;
      
      private var §1"H§:Number;
      
      private var §7#z§:Number;
      
      private var §+I§:Number;
      
      private var §8q§:Number;
      
      private var §4Z§:§%"O§;
      
      private var §^"+§:VertexBuffer3D;
      
      private var §0!s§:VertexBuffer3D;
      
      private var §^$$§:Vector.<uint>;
      
      private var §,#O§:IndexBuffer3D;
      
      private var §4"&§:Boolean;
      
      private var §&#Y§:§^"L§;
      
      private var §<$>§:Texture;
      
      private var §,#`§:Matrix;
      
      public function §!=§(param1:int = 1, param2:Number = 1.0)
      {
         this.§,#`§ = new Matrix();
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.filters::FragmentFilter")
         {
            throw new §7!W§();
         }
         if(param1 < 1)
         {
            throw new ArgumentError("At least one pass is required.");
         }
         this.§8#;§ = param1;
         this.§1"H§ = this.§7#z§ = 0;
         this.§+I§ = this.§8q§ = 0;
         this.§?$"§ = param2;
         this.§+#n§ = §'#e§.§%L§;
         this.§4Z§ = new §%"O§(4);
         this.§4Z§.setTexCoords(0,0,0);
         this.§4Z§.setTexCoords(1,1,0);
         this.§4Z§.setTexCoords(2,0,1);
         this.§4Z§.setTexCoords(3,1,1);
         this.§^$$§ = new <uint>[0,1,2,1,3,2];
         this.§^$$§.fixed = true;
         this.createPrograms();
         Starling.§?$#§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§`",§,false,0,true);
      }
      
      public function dispose() : void
      {
         Starling.§?$#§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§`",§);
         if(this.§^"+§)
         {
            this.§^"+§.dispose();
         }
         if(this.§0!s§)
         {
            this.§0!s§.dispose();
         }
         if(this.§,#O§)
         {
            this.§,#O§.dispose();
         }
         this.§9a§();
         this.§[#N§();
      }
      
      private function §`",§(param1:Object) : void
      {
         this.§^"+§ = null;
         this.§0!s§ = null;
         this.§,#O§ = null;
         this.§#!x§ = null;
         this.createPrograms();
      }
      
      public function render(param1:DisplayObject, param2:§]"+§, param3:Number) : void
      {
         if(this.§["_§ == §'#e§.§>#R§)
         {
            param1.render(param2,param3);
         }
         if(this.§4"&§)
         {
            this.§4"&§ = false;
            this.§&#Y§ = this.§=y§(param1,param2,1,true);
            this.§9a§();
         }
         if(this.§&#Y§)
         {
            this.§&#Y§.render(param2,param3);
         }
         else
         {
            this.§=y§(param1,param2,param3,false);
         }
         if(this.§["_§ == §'#e§.§0#D§)
         {
            param1.render(param2,param3);
         }
      }
      
      protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         this.§var §(param1,§7#Z§);
         this.§1#"§(§7#Z§.width,§7#Z§.height,this.§?$"§ * param2,param1);
      }
      
      protected function renderDisplayObject(param1:DisplayObject, param2:§]"+§, param3:Number) : void
      {
         var _loc4_:Context3D = param2.context;
         param2.§0$9§ = this.§#!x§[0];
         param2.clear(_loc4_);
         param2.blendMode = §1i§.NORMAL;
         param2.§>" §(§7#Z§.x,§7#Z§.y,§7#Z§.width,§7#Z§.height);
         param1.render(param2,param3);
         param2.§&!K§();
      }
      
      protected function renderFilter(param1:DisplayObject, param2:§]"+§, param3:Boolean, param4:Number, param5:Texture) : §^"L§
      {
         var _loc9_:Texture = null;
         var _loc10_:§^"L§ = null;
         var _loc11_:Image = null;
         var _loc12_:Stage = null;
         param2.§[a§(this.§8#;§);
         var _loc6_:Context3D = param2.context;
         var _loc7_:Texture = Texture.§[V§(_loc6_,§7#Z§.width,§7#Z§.height,this.§0";§,true,this.§?$"§ * param4);
         §]"+§.setBlendFactors(this.§0";§);
         param2.§`#R§();
         _loc6_.setVertexBufferAt(this.§9[§,this.§^"+§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc6_.setVertexBufferAt(this.§5]§,this.§0!s§,0,Context3DVertexBufferFormat.FLOAT_2);
         var _loc8_:int = 0;
         while(_loc8_ < this.§8#;§)
         {
            if(_loc8_ < this.§8#;§ - 1)
            {
               param2.§0$9§ = this.§;#B§(_loc8_ + 1);
               param2.clear(_loc6_);
            }
            else if(param3)
            {
               param2.§0$9§ = _loc7_;
               param2.clear(_loc6_);
            }
            else
            {
               param2.§0$9§ = param5;
               param2.§3#q§.copyFrom(this.§,#`§);
               param2.§&"U§(this.§+I§,this.§8q§);
               param2.blendMode = param1.blendMode;
               param2.§@q§(this.§0";§);
            }
            _loc9_ = this.§;#B§(_loc8_);
            _loc6_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,this.§;"u§,param2.mvpMatrix3D,true);
            _loc6_.setTextureAt(this.§7!7§,_loc9_.getBase(_loc6_));
            this.activate(_loc8_,param2,_loc9_);
            _loc6_.drawTriangles(this.§,#O§,0,2);
            this.deactivate(_loc8_,param2,_loc9_);
            _loc8_++;
         }
         _loc6_.setVertexBufferAt(this.§9[§,null);
         _loc6_.setVertexBufferAt(this.§5]§,null);
         _loc6_.setTextureAt(this.§7!7§,null);
         if(param3)
         {
            param2.§0$9§ = param5;
            param2.§3#q§.copyFrom(this.§,#`§);
            _loc10_ = new §^"L§();
            _loc11_ = new Image(_loc7_);
            (_loc12_ = param1.stage).§='§(param1,§9#]§);
            §+!Y§.§-!i§(§9#]§,§7#Z§.x + this.§+I§,§7#Z§.y + this.§8q§);
            _loc10_.§!"q§(_loc11_,1,§9#]§);
            return _loc10_;
         }
         return null;
      }
      
      private function §=y§(param1:DisplayObject, param2:§]"+§, param3:Number, param4:Boolean = false) : §^"L§
      {
         var _loc5_:Stage = param1.stage;
         var _loc6_:Context3D = param2.context;
         if(_loc5_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         if(_loc6_ == null)
         {
            throw new §-D§();
         }
         this.calculateBounds(param1,_loc5_,!param4,§7#Z§);
         if(§7#Z§.isEmpty())
         {
            this.§9a§();
            return !!param4 ? new §^"L§() : null;
         }
         param2.§&!K§();
         param2.§>!G§();
         var _loc7_:Number = Starling.§?$#§.§7O§;
         this.updateBuffersAndTextures(_loc6_,_loc7_);
         this.§,#`§.copyFrom(param2.§3#q§);
         var _loc8_:Texture;
         if(_loc8_ = param2.§0$9§)
         {
            throw new IllegalOperationError("It\'s currently not possible to stack filters! " + "This limitation will be removed in a future Stage3D version.");
         }
         this.renderDisplayObject(param1,param2,param3);
         var _loc9_:§^"L§ = this.renderFilter(param1,param2,param4,_loc7_,_loc8_);
         param2.§`!5§();
         return _loc9_;
      }
      
      private function §var §(param1:Context3D, param2:Rectangle) : void
      {
         this.§4Z§.setPosition(0,param2.x,param2.y);
         this.§4Z§.setPosition(1,param2.right,param2.y);
         this.§4Z§.setPosition(2,param2.x,param2.bottom);
         this.§4Z§.setPosition(3,param2.right,param2.bottom);
         if(this.§^"+§ == null)
         {
            this.§^"+§ = param1.createVertexBuffer(4,§%"O§.§"#l§);
         }
         if(this.§0!s§ == null)
         {
            this.§0!s§ = param1.createVertexBuffer(4,§%"O§.§1-§);
         }
         if(this.§,#O§ == null)
         {
            this.§,#O§ = param1.createIndexBuffer(6);
            this.§,#O§.uploadFromVector(this.§^$$§,0,6);
         }
         this.§^"+§.uploadFromVector(this.§4Z§.§@"d§,0,4);
         this.§0!s§.uploadFromVector(this.§4Z§.§@8§,0,4);
      }
      
      private function §1#"§(param1:int, param2:int, param3:Number, param4:Context3D) : void
      {
         var _loc7_:int = 0;
         var _loc8_:Texture = null;
         var _loc5_:int = this.§8#;§ > 1 ? 2 : 1;
         var _loc6_:Boolean;
         if(_loc6_ = this.§#!x§ == null || this.§#!x§.length != _loc5_ || this.§#!x§[0].width != param1 || this.§#!x§[0].height != param2)
         {
            if(this.§#!x§)
            {
               for each(_loc8_ in this.§#!x§)
               {
                  _loc8_.dispose();
               }
               this.§#!x§.length = _loc5_;
            }
            else
            {
               this.§#!x§ = new Vector.<Texture>(_loc5_);
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               this.§#!x§[_loc7_] = Texture.§[V§(param4,param1,param2,this.§0";§,true,param3);
               _loc7_++;
            }
         }
      }
      
      private function §;#B§(param1:int) : Texture
      {
         this.§<$>§ = this.§#!x§[param1 % 2];
         return this.§<$>§;
      }
      
      protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         var _loc5_:Number = NaN;
         if(param1 == param2 || param1 == Starling.§?$#§.root)
         {
            param4.setTo(0,0,param2.stageWidth,param2.stageHeight);
         }
         else
         {
            param1.getBounds(param2,param4);
         }
         if(param3)
         {
            §3"@§.setTo(0,0,param2.stageWidth,param2.stageHeight);
            §^!Q§.§["]§(param4,§3"@§,param4);
         }
         if(!param4.isEmpty())
         {
            _loc5_ = this.§?$"§ == 1 ? Number(0) : Number(1 / this.§?$"§);
            param4.x -= this.§1"H§ + _loc5_;
            param4.y -= this.§7#z§ + _loc5_;
            param4.width += 2 * (this.§1"H§ + _loc5_);
            param4.height += 2 * (this.§7#z§ + _loc5_);
            param4.width = getNextPowerOfTwo(param4.width * this.§?$"§) / this.§?$"§;
            param4.height = getNextPowerOfTwo(param4.height * this.§?$"§) / this.§?$"§;
         }
      }
      
      private function §9a§() : void
      {
         var _loc1_:Texture = null;
         for each(_loc1_ in this.§#!x§)
         {
            _loc1_.dispose();
         }
         this.§#!x§ = null;
      }
      
      private function §[#N§() : void
      {
         if(this.§&#Y§)
         {
            if(this.§&#Y§.texture)
            {
               this.§&#Y§.texture.dispose();
            }
            this.§&#Y§.dispose();
            this.§&#Y§ = null;
         }
      }
      
      protected function createPrograms() : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function activate(param1:int, param2:§]"+§, param3:Texture) : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function deactivate(param1:int, param2:§]"+§, param3:Texture) : void
      {
      }
      
      protected function §5!6§(param1:String = null, param2:String = null) : Program3D
      {
         if(param1 == null)
         {
            param1 = this.§]W§;
         }
         if(param2 == null)
         {
            param2 = this.§#"J§;
         }
         var _loc3_:Context3D = Starling.context;
         if(!_loc3_)
         {
            return null;
         }
         return §]"+§.§5!6§(param2,param1);
      }
      
      public function §6!b§() : void
      {
         this.§4"&§ = true;
         this.§[#N§();
      }
      
      public function §1"E§() : void
      {
         this.§4"&§ = false;
         this.§[#N§();
      }
      
      function §""f§(param1:DisplayObject) : §^"L§
      {
         var _loc2_:§]"+§ = null;
         var _loc3_:Stage = null;
         if(this.§&#Y§)
         {
            return this.§&#Y§;
         }
         _loc3_ = param1.stage;
         if(_loc3_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         _loc2_ = new §]"+§();
         param1.§='§(_loc3_,_loc2_.§]!l§);
         return this.§=y§(param1,_loc2_,1,true);
      }
      
      public function get §^#-§() : Boolean
      {
         return this.§&#Y§ != null || this.§4"&§;
      }
      
      public function get §>#@§() : Number
      {
         return this.§?$"§;
      }
      
      public function set §>#@§(param1:Number) : void
      {
         if(param1 <= 0)
         {
            throw new ArgumentError("Resolution must be > 0");
         }
         this.§?$"§ = param1;
      }
      
      public function get §["_§() : String
      {
         return this.§+#n§;
      }
      
      public function set §["_§(param1:String) : void
      {
         this.§+#n§ = param1;
      }
      
      public function get offsetX() : Number
      {
         return this.§+I§;
      }
      
      public function set offsetX(param1:Number) : void
      {
         this.§+I§ = param1;
      }
      
      public function get offsetY() : Number
      {
         return this.§8q§;
      }
      
      public function set offsetY(param1:Number) : void
      {
         this.§8q§ = param1;
      }
      
      protected function get §9o§() : Number
      {
         return this.§1"H§;
      }
      
      protected function set §9o§(param1:Number) : void
      {
         this.§1"H§ = param1;
      }
      
      protected function get §##4§() : Number
      {
         return this.§7#z§;
      }
      
      protected function set §##4§(param1:Number) : void
      {
         this.§7#z§ = param1;
      }
      
      protected function set §>!x§(param1:int) : void
      {
         this.§8#;§ = param1;
      }
      
      protected function get §>!x§() : int
      {
         return this.§8#;§;
      }
      
      protected final function get §case §() : int
      {
         return this.§9[§;
      }
      
      protected final function set §case §(param1:int) : void
      {
         this.§9[§ = param1;
      }
      
      protected final function get §'"-§() : int
      {
         return this.§5]§;
      }
      
      protected final function set §'"-§(param1:int) : void
      {
         this.§5]§ = param1;
      }
      
      protected final function get §#!A§() : int
      {
         return this.§7!7§;
      }
      
      protected final function set §#!A§(param1:int) : void
      {
         this.§7!7§ = param1;
      }
      
      protected final function get §9$§() : int
      {
         return this.§;"u§;
      }
      
      protected final function set §9$§(param1:int) : void
      {
         this.§;"u§ = param1;
      }
      
      protected final function get §?"o§() : Texture
      {
         return this.§<$>§;
      }
   }
}
