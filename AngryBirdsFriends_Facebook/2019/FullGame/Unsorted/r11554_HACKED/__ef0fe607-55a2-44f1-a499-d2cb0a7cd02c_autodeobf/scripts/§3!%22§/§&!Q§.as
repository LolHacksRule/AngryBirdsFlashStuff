package §3!"§
{
   import §!#`§.Event;
   import §!6§.§9§;
   import §!6§.§9$'§;
   import §!6§.DisplayObject;
   import §!6§.Image;
   import §!6§.Stage;
   import §""'§.Texture;
   import §#"l§.§ #b§;
   import §#"l§.§0"e§;
   import §#"l§.§<#^§;
   import §#"l§.getNextPowerOfTwo;
   import §3!z§.§^!g§;
   import §3!z§.§`9§;
   import §]"P§.§4!9§;
   import §]"P§.Starling;
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
   
   public class §&!Q§
   {
      
      private static var §]!§:Rectangle = new Rectangle();
      
      private static var §^-§:Rectangle = new Rectangle();
      
      private static var §"!v§:Matrix = new Matrix();
       
      
      protected const §]1§:Boolean = true;
      
      protected const §"#>§:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2      \n";
      
      protected const §6g§:String = "tex oc, v0, fs0 <2d, clamp, linear, mipnone>";
      
      private var §!3§:int = 0;
      
      private var §]"G§:int = 2;
      
      private var §%"X§:int = 0;
      
      private var §2#g§:int = 1;
      
      private var §+"B§:int;
      
      private var §"#@§:Vector.<Texture>;
      
      private var §&!x§:String;
      
      private var §0m§:Number;
      
      private var §8"q§:Number;
      
      private var §-^§:Number;
      
      private var §if §:Number;
      
      private var §1!g§:Number;
      
      private var §[#7§:§ #b§;
      
      private var §-!C§:VertexBuffer3D;
      
      private var §>9§:VertexBuffer3D;
      
      private var §^"F§:Vector.<uint>;
      
      private var §,#c§:IndexBuffer3D;
      
      private var §"!k§:Boolean;
      
      private var §@z§:§9$'§;
      
      private var §9"X§:Texture;
      
      private var §6"J§:Matrix;
      
      public function §&!Q§(param1:int = 1, param2:Number = 1.0)
      {
         this.§6"J§ = new Matrix();
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.filters::FragmentFilter")
         {
            throw new §`9§();
         }
         if(param1 < 1)
         {
            throw new ArgumentError("At least one pass is required.");
         }
         this.§+"B§ = param1;
         this.§8"q§ = this.§-^§ = 0;
         this.§if § = this.§1!g§ = 0;
         this.§0m§ = param2;
         this.§&!x§ = §6"E§.§%"H§;
         this.§[#7§ = new § #b§(4);
         this.§[#7§.setTexCoords(0,0,0);
         this.§[#7§.setTexCoords(1,1,0);
         this.§[#7§.setTexCoords(2,0,1);
         this.§[#7§.setTexCoords(3,1,1);
         this.§^"F§ = new <uint>[0,1,2,1,3,2];
         this.§^"F§.fixed = true;
         this.createPrograms();
         Starling.§3!I§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§-s§,false,0,true);
      }
      
      public function dispose() : void
      {
         Starling.§3!I§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§-s§);
         if(this.§-!C§)
         {
            this.§-!C§.dispose();
         }
         if(this.§>9§)
         {
            this.§>9§.dispose();
         }
         if(this.§,#c§)
         {
            this.§,#c§.dispose();
         }
         this.§1"t§();
         this.§@I§();
      }
      
      private function §-s§(param1:Object) : void
      {
         this.§-!C§ = null;
         this.§>9§ = null;
         this.§,#c§ = null;
         this.§"#@§ = null;
         this.createPrograms();
      }
      
      public function render(param1:DisplayObject, param2:§4!9§, param3:Number) : void
      {
         if(this.§,"C§ == §6"E§.§=!v§)
         {
            param1.render(param2,param3);
         }
         if(this.§"!k§)
         {
            this.§"!k§ = false;
            this.§@z§ = this.§7#i§(param1,param2,1,true);
            this.§1"t§();
         }
         if(this.§@z§)
         {
            this.§@z§.render(param2,param3);
         }
         else
         {
            this.§7#i§(param1,param2,param3,false);
         }
         if(this.§,"C§ == §6"E§.§4!5§)
         {
            param1.render(param2,param3);
         }
      }
      
      protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         this.§;#&§(param1,§]!§);
         this.§7!C§(§]!§.width,§]!§.height,this.§0m§ * param2,param1);
      }
      
      protected function renderDisplayObject(param1:DisplayObject, param2:§4!9§, param3:Number) : void
      {
         var _loc4_:Context3D = param2.context;
         param2.§@!9§ = this.§"#@§[0];
         param2.clear(_loc4_);
         param2.blendMode = §9#6§.NORMAL;
         param2.§["l§(§]!§.x,§]!§.y,§]!§.width,§]!§.height);
         param1.render(param2,param3);
         param2.§%"6§();
      }
      
      protected function renderFilter(param1:DisplayObject, param2:§4!9§, param3:Boolean, param4:Number, param5:Texture) : §9$'§
      {
         var _loc9_:Texture = null;
         var _loc10_:§9$'§ = null;
         var _loc11_:Image = null;
         param2.§&!f§(this.§+"B§);
         var _loc6_:Context3D = param2.context;
         var _loc7_:Texture = Texture.§ "5§(_loc6_,§]!§.width,§]!§.height,this.§]1§,true,this.§0m§ * param4);
         §4!9§.setBlendFactors(this.§]1§);
         param2.§6#d§();
         _loc6_.setVertexBufferAt(this.§!3§,this.§-!C§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc6_.setVertexBufferAt(this.§]"G§,this.§>9§,0,Context3DVertexBufferFormat.FLOAT_2);
         var _loc8_:int = 0;
         while(_loc8_ < this.§+"B§)
         {
            if(_loc8_ < this.§+"B§ - 1)
            {
               param2.§@!9§ = this.§@!;§(_loc8_ + 1);
               param2.clear(_loc6_);
            }
            else if(param3)
            {
               param2.§@!9§ = _loc7_;
               param2.clear(_loc6_);
            }
            else
            {
               param2.§@!9§ = param5;
               param2.§0"l§.copyFrom(this.§6"J§);
               param2.§5D§(this.§if §,this.§1!g§);
               param2.blendMode = param1.blendMode;
               param2.§2$8§(this.§]1§);
            }
            _loc9_ = this.§@!;§(_loc8_);
            _loc6_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,this.§2#g§,param2.mvpMatrix3D,true);
            _loc6_.setTextureAt(this.§%"X§,_loc9_.getBase(_loc6_));
            this.activate(_loc8_,param2,_loc9_);
            _loc6_.drawTriangles(this.§,#c§,0,2);
            this.deactivate(_loc8_,param2,_loc9_);
            _loc8_++;
         }
         _loc6_.setVertexBufferAt(this.§!3§,null);
         _loc6_.setVertexBufferAt(this.§]"G§,null);
         _loc6_.setTextureAt(this.§%"X§,null);
         if(param3)
         {
            param2.§@!9§ = param5;
            param2.§0"l§.copyFrom(this.§6"J§);
            _loc10_ = new §9$'§();
            _loc11_ = new Image(_loc7_);
            param1.stage.§!"?§(param1,§"!v§);
            §<#^§.§>"o§(§"!v§,§]!§.x + this.§if §,§]!§.y + this.§1!g§);
            _loc10_.§]!A§(_loc11_,1,§"!v§);
            return _loc10_;
         }
         return null;
      }
      
      private function §7#i§(param1:DisplayObject, param2:§4!9§, param3:Number, param4:Boolean = false) : §9$'§
      {
         var _loc5_:Stage = param1.stage;
         var _loc6_:Context3D = param2.context;
         if(_loc5_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         if(_loc6_ == null)
         {
            throw new §^!g§();
         }
         this.calculateBounds(param1,_loc5_,!param4,§]!§);
         if(§]!§.isEmpty())
         {
            this.§1"t§();
            return !!param4 ? new §9$'§() : null;
         }
         param2.§%"6§();
         param2.§33§();
         var _loc7_:Number = Starling.§3!I§.§<y§;
         this.updateBuffersAndTextures(_loc6_,_loc7_);
         this.§6"J§.copyFrom(param2.§0"l§);
         var _loc8_:Texture;
         if(_loc8_ = param2.§@!9§)
         {
            throw new IllegalOperationError("It\'s currently not possible to stack filters! " + "This limitation will be removed in a future Stage3D version.");
         }
         this.renderDisplayObject(param1,param2,param3);
         var _loc9_:§9$'§ = this.renderFilter(param1,param2,param4,_loc7_,_loc8_);
         param2.§5"f§();
         return _loc9_;
      }
      
      private function §;#&§(param1:Context3D, param2:Rectangle) : void
      {
         this.§[#7§.setPosition(0,param2.x,param2.y);
         this.§[#7§.setPosition(1,param2.right,param2.y);
         this.§[#7§.setPosition(2,param2.x,param2.bottom);
         this.§[#7§.setPosition(3,param2.right,param2.bottom);
         if(this.§-!C§ == null)
         {
            this.§-!C§ = param1.createVertexBuffer(4,§ #b§.§%";§);
         }
         if(this.§>9§ == null)
         {
            this.§>9§ = param1.createVertexBuffer(4,§ #b§.§&"q§);
         }
         if(this.§,#c§ == null)
         {
            this.§,#c§ = param1.createIndexBuffer(6);
            this.§,#c§.uploadFromVector(this.§^"F§,0,6);
         }
         this.§-!C§.uploadFromVector(this.§[#7§.§>!H§,0,4);
         this.§>9§.uploadFromVector(this.§[#7§.§`#d§,0,4);
      }
      
      private function §7!C§(param1:int, param2:int, param3:Number, param4:Context3D) : void
      {
         var _loc7_:int = 0;
         var _loc5_:int = this.§+"B§ > 1 ? 2 : 1;
         if(this.§"#@§ == null || this.§"#@§.length != _loc5_ || this.§"#@§[0].width != param1 || this.§"#@§[0].height != param2)
         {
            if(this.§"#@§)
            {
               var _loc9_:int = 0;
               var _loc10_:* = this.§"#@§;
               while(§§hasnext(_loc10_,_loc9_))
               {
                  (§§nextvalue(_loc9_,_loc10_)).dispose();
               }
               this.§"#@§.length = _loc5_;
            }
            else
            {
               this.§"#@§ = new Vector.<Texture>(_loc5_);
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               this.§"#@§[_loc7_] = Texture.§ "5§(param4,param1,param2,this.§]1§,true,param3);
               _loc7_++;
            }
         }
      }
      
      private function §@!;§(param1:int) : Texture
      {
         this.§9"X§ = this.§"#@§[param1 % 2];
         return this.§9"X§;
      }
      
      protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         var _loc5_:Number = NaN;
         if(param1 == param2 || param1 == Starling.§3!I§.root)
         {
            param4.setTo(0,0,param2.stageWidth,param2.stageHeight);
         }
         else
         {
            param1.getBounds(param2,param4);
         }
         if(param3)
         {
            §^-§.setTo(0,0,param2.stageWidth,param2.stageHeight);
            §0"e§.§>#?§(param4,§^-§,param4);
         }
         if(!param4.isEmpty())
         {
            _loc5_ = this.§0m§ == 1 ? Number(0) : Number(1 / this.§0m§);
            param4.x -= this.§8"q§ + _loc5_;
            param4.y -= this.§-^§ + _loc5_;
            param4.width += 2 * (this.§8"q§ + _loc5_);
            param4.height += 2 * (this.§-^§ + _loc5_);
            param4.width = getNextPowerOfTwo(param4.width * this.§0m§) / this.§0m§;
            param4.height = getNextPowerOfTwo(param4.height * this.§0m§) / this.§0m§;
         }
      }
      
      private function §1"t§() : void
      {
         var _loc1_:Texture = null;
         for each(_loc1_ in this.§"#@§)
         {
            _loc1_.dispose();
         }
         this.§"#@§ = null;
      }
      
      private function §@I§() : void
      {
         if(this.§@z§)
         {
            if(this.§@z§.texture)
            {
               this.§@z§.texture.dispose();
            }
            this.§@z§.dispose();
            this.§@z§ = null;
         }
      }
      
      protected function createPrograms() : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function activate(param1:int, param2:§4!9§, param3:Texture) : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function deactivate(param1:int, param2:§4!9§, param3:Texture) : void
      {
      }
      
      protected function §`!Z§(param1:String = null, param2:String = null) : Program3D
      {
         if(param1 == null)
         {
            param1 = this.§6g§;
         }
         if(param2 == null)
         {
            param2 = this.§"#>§;
         }
         var _loc3_:Context3D = Starling.context;
         if(!_loc3_)
         {
            return null;
         }
         return §4!9§.§`!Z§(param2,param1);
      }
      
      public function §!7§() : void
      {
         this.§"!k§ = true;
         this.§@I§();
      }
      
      public function §&#I§() : void
      {
         this.§"!k§ = false;
         this.§@I§();
      }
      
      function §=!9§(param1:DisplayObject) : §9$'§
      {
         var _loc2_:§4!9§ = null;
         var _loc3_:Stage = null;
         if(this.§@z§)
         {
            return this.§@z§;
         }
         _loc3_ = param1.stage;
         if(_loc3_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         _loc2_ = new §4!9§();
         param1.§!"?§(_loc3_,_loc2_.§'"[§);
         return this.§7#i§(param1,_loc2_,1,true);
      }
      
      public function get §3"W§() : Boolean
      {
         return this.§@z§ != null || this.§"!k§;
      }
      
      public function get §@$!§() : Number
      {
         return this.§0m§;
      }
      
      public function set §@$!§(param1:Number) : void
      {
         if(param1 <= 0)
         {
            throw new ArgumentError("Resolution must be > 0");
         }
         this.§0m§ = param1;
      }
      
      public function get §,"C§() : String
      {
         return this.§&!x§;
      }
      
      public function set §,"C§(param1:String) : void
      {
         this.§&!x§ = param1;
      }
      
      public function get offsetX() : Number
      {
         return this.§if §;
      }
      
      public function set offsetX(param1:Number) : void
      {
         this.§if § = param1;
      }
      
      public function get offsetY() : Number
      {
         return this.§1!g§;
      }
      
      public function set offsetY(param1:Number) : void
      {
         this.§1!g§ = param1;
      }
      
      protected function get §]$ §() : Number
      {
         return this.§8"q§;
      }
      
      protected function set §]$ §(param1:Number) : void
      {
         this.§8"q§ = param1;
      }
      
      protected function get §3"4§() : Number
      {
         return this.§-^§;
      }
      
      protected function set §3"4§(param1:Number) : void
      {
         this.§-^§ = param1;
      }
      
      protected function set §8"X§(param1:int) : void
      {
         this.§+"B§ = param1;
      }
      
      protected function get §8"X§() : int
      {
         return this.§+"B§;
      }
      
      protected final function get §#$A§() : int
      {
         return this.§!3§;
      }
      
      protected final function set §#$A§(param1:int) : void
      {
         this.§!3§ = param1;
      }
      
      protected final function get §0u§() : int
      {
         return this.§]"G§;
      }
      
      protected final function set §0u§(param1:int) : void
      {
         this.§]"G§ = param1;
      }
      
      protected final function get §+#Y§() : int
      {
         return this.§%"X§;
      }
      
      protected final function set §+#Y§(param1:int) : void
      {
         this.§%"X§ = param1;
      }
      
      protected final function get §+#N§() : int
      {
         return this.§2#g§;
      }
      
      protected final function set §+#N§(param1:int) : void
      {
         this.§2#g§ = param1;
      }
      
      protected final function get §@!K§() : Texture
      {
         return this.§9"X§;
      }
   }
}
