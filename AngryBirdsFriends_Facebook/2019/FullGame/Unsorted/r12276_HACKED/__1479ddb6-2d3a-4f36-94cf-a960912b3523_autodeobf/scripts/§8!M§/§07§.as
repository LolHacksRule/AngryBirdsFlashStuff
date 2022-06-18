package §8!M§
{
   import §""4§.Texture;
   import §#Z§.§1$§;
   import §#Z§.§6!`§;
   import §#Z§.DisplayObject;
   import §#Z§.Image;
   import §#Z§.Stage;
   import §&§.§""F§;
   import §&§.Starling;
   import §0"D§.§ #r§;
   import §0"D§.§!#S§;
   import §0"D§.§,4§;
   import §0"D§.getNextPowerOfTwo;
   import §8"'§.§1#O§;
   import §8"'§.§2!H§;
   import §<!S§.Event;
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
   
   public class §07§
   {
      
      private static var §@#J§:Rectangle = new Rectangle();
      
      private static var §-!N§:Rectangle = new Rectangle();
      
      private static var §[$4§:Matrix = new Matrix();
       
      
      protected const §1"`§:Boolean = true;
      
      protected const §'l§:String = "m44 vt1, va0, vc1 \n" + "mov op, vt1 \n" + "mov v0, va2      \n";
      
      protected const §!R§:String = "tex oc, v0, fs0 <2d, clamp, linear, mipnone>";
      
      private var §0C§:int = 0;
      
      private var §1"H§:int = 2;
      
      private var §]6§:int = 0;
      
      private var §^!a§:int = 1;
      
      private var §<$&§:int;
      
      private var §#7§:Vector.<Texture>;
      
      private var §-!L§:String;
      
      private var §^!T§:Number;
      
      private var §<N§:Number;
      
      private var §+"6§:Number;
      
      private var §#V§:Number;
      
      private var §,#r§:Number;
      
      private var §3!-§:§,4§;
      
      private var §^!3§:VertexBuffer3D;
      
      private var §`!"§:VertexBuffer3D;
      
      private var §@"K§:Vector.<uint>;
      
      private var §6#`§:IndexBuffer3D;
      
      private var §@#9§:Boolean;
      
      private var §[#E§:§6!`§;
      
      private var §,"w§:Texture;
      
      private var §8!K§:Matrix;
      
      public function §07§(param1:int = 1, param2:Number = 1.0)
      {
         this.§8!K§ = new Matrix();
         super();
         if(Capabilities.isDebugger && getQualifiedClassName(this) == "starling.filters::FragmentFilter")
         {
            throw new §2!H§();
         }
         if(param1 < 1)
         {
            throw new ArgumentError("At least one pass is required.");
         }
         this.§<$&§ = param1;
         this.§<N§ = this.§+"6§ = 0;
         this.§#V§ = this.§,#r§ = 0;
         this.§^!T§ = param2;
         this.§-!L§ = §^"D§.§^!$§;
         this.§3!-§ = new §,4§(4);
         this.§3!-§.setTexCoords(0,0,0);
         this.§3!-§.setTexCoords(1,1,0);
         this.§3!-§.setTexCoords(2,0,1);
         this.§3!-§.setTexCoords(3,1,1);
         this.§@"K§ = new <uint>[0,1,2,1,3,2];
         this.§@"K§.fixed = true;
         this.createPrograms();
         Starling.§%!q§.stage3D.addEventListener(Event.CONTEXT3D_CREATE,this.§^#e§,false,0,true);
      }
      
      public function dispose() : void
      {
         Starling.§%!q§.stage3D.removeEventListener(Event.CONTEXT3D_CREATE,this.§^#e§);
         if(this.§^!3§)
         {
            this.§^!3§.dispose();
         }
         if(this.§`!"§)
         {
            this.§`!"§.dispose();
         }
         if(this.§6#`§)
         {
            this.§6#`§.dispose();
         }
         this.§8m§();
         this.§3!D§();
      }
      
      private function §^#e§(param1:Object) : void
      {
         this.§^!3§ = null;
         this.§`!"§ = null;
         this.§6#`§ = null;
         this.§#7§ = null;
         this.createPrograms();
      }
      
      public function render(param1:DisplayObject, param2:§""F§, param3:Number) : void
      {
         if(this.§<"$§ == §^"D§.§>"1§)
         {
            param1.render(param2,param3);
         }
         if(this.§@#9§)
         {
            this.§@#9§ = false;
            this.§[#E§ = this.§=#!§(param1,param2,1,true);
            this.§8m§();
         }
         if(this.§[#E§)
         {
            this.§[#E§.render(param2,param3);
         }
         else
         {
            this.§=#!§(param1,param2,param3,false);
         }
         if(this.§<"$§ == §^"D§.§>"A§)
         {
            param1.render(param2,param3);
         }
      }
      
      protected function updateBuffersAndTextures(param1:Context3D, param2:Number) : void
      {
         this.§2`§(param1,§@#J§);
         this.§`#S§(§@#J§.width,§@#J§.height,this.§^!T§ * param2,param1);
      }
      
      protected function renderDisplayObject(param1:DisplayObject, param2:§""F§, param3:Number) : void
      {
         var _loc4_:Context3D = param2.context;
         param2.§^#+§ = this.§#7§[0];
         param2.clear(_loc4_);
         param2.blendMode = §1$§.NORMAL;
         param2.§?"P§(§@#J§.x,§@#J§.y,§@#J§.width,§@#J§.height);
         param1.render(param2,param3);
         param2.§&"!§();
      }
      
      protected function renderFilter(param1:DisplayObject, param2:§""F§, param3:Boolean, param4:Number, param5:Texture) : §6!`§
      {
         var _loc9_:Texture = null;
         var _loc10_:§6!`§ = null;
         var _loc11_:Image = null;
         param2.§?$&§(this.§<$&§);
         var _loc6_:Context3D = param2.context;
         var _loc7_:Texture = Texture.§@"o§(_loc6_,§@#J§.width,§@#J§.height,this.§1"`§,true,this.§^!T§ * param4);
         §""F§.setBlendFactors(this.§1"`§);
         param2.§[#q§();
         _loc6_.setVertexBufferAt(this.§0C§,this.§^!3§,0,Context3DVertexBufferFormat.FLOAT_2);
         _loc6_.setVertexBufferAt(this.§1"H§,this.§`!"§,0,Context3DVertexBufferFormat.FLOAT_2);
         var _loc8_:int = 0;
         while(_loc8_ < this.§<$&§)
         {
            if(_loc8_ < this.§<$&§ - 1)
            {
               param2.§^#+§ = this.§^"n§(_loc8_ + 1);
               param2.clear(_loc6_);
            }
            else if(param3)
            {
               param2.§^#+§ = _loc7_;
               param2.clear(_loc6_);
            }
            else
            {
               param2.§^#+§ = param5;
               param2.§="m§.copyFrom(this.§8!K§);
               param2.§"!t§(this.§#V§,this.§,#r§);
               param2.blendMode = param1.blendMode;
               param2.§8?§(this.§1"`§);
            }
            _loc9_ = this.§^"n§(_loc8_);
            _loc6_.setProgramConstantsFromMatrix(Context3DProgramType.VERTEX,this.§^!a§,param2.mvpMatrix3D,true);
            _loc6_.setTextureAt(this.§]6§,_loc9_.getBase(_loc6_));
            this.activate(_loc8_,param2,_loc9_);
            _loc6_.drawTriangles(this.§6#`§,0,2);
            this.deactivate(_loc8_,param2,_loc9_);
            _loc8_++;
         }
         _loc6_.setVertexBufferAt(this.§0C§,null);
         _loc6_.setVertexBufferAt(this.§1"H§,null);
         _loc6_.setTextureAt(this.§]6§,null);
         if(param3)
         {
            param2.§^#+§ = param5;
            param2.§="m§.copyFrom(this.§8!K§);
            _loc10_ = new §6!`§();
            _loc11_ = new Image(_loc7_);
            param1.stage.§?P§(param1,§[$4§);
            § #r§.§;!C§(§[$4§,§@#J§.x + this.§#V§,§@#J§.y + this.§,#r§);
            _loc10_.§6!+§(_loc11_,1,§[$4§);
            return _loc10_;
         }
         return null;
      }
      
      private function §=#!§(param1:DisplayObject, param2:§""F§, param3:Number, param4:Boolean = false) : §6!`§
      {
         var _loc5_:Stage = param1.stage;
         var _loc6_:Context3D = param2.context;
         if(_loc5_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         if(_loc6_ == null)
         {
            throw new §1#O§();
         }
         this.calculateBounds(param1,_loc5_,!param4,§@#J§);
         if(§@#J§.isEmpty())
         {
            this.§8m§();
            return !!param4 ? new §6!`§() : null;
         }
         param2.§&"!§();
         param2.§%#G§();
         var _loc7_:Number = Starling.§%!q§.§!"&§;
         this.updateBuffersAndTextures(_loc6_,_loc7_);
         this.§8!K§.copyFrom(param2.§="m§);
         var _loc8_:Texture;
         if(_loc8_ = param2.§^#+§)
         {
            throw new IllegalOperationError("It\'s currently not possible to stack filters! " + "This limitation will be removed in a future Stage3D version.");
         }
         this.renderDisplayObject(param1,param2,param3);
         var _loc9_:§6!`§ = this.renderFilter(param1,param2,param4,_loc7_,_loc8_);
         param2.§?!G§();
         return _loc9_;
      }
      
      private function §2`§(param1:Context3D, param2:Rectangle) : void
      {
         this.§3!-§.setPosition(0,param2.x,param2.y);
         this.§3!-§.setPosition(1,param2.right,param2.y);
         this.§3!-§.setPosition(2,param2.x,param2.bottom);
         this.§3!-§.setPosition(3,param2.right,param2.bottom);
         if(this.§^!3§ == null)
         {
            this.§^!3§ = param1.createVertexBuffer(4,§,4§.§1#>§);
         }
         if(this.§`!"§ == null)
         {
            this.§`!"§ = param1.createVertexBuffer(4,§,4§.§^$?§);
         }
         if(this.§6#`§ == null)
         {
            this.§6#`§ = param1.createIndexBuffer(6);
            this.§6#`§.uploadFromVector(this.§@"K§,0,6);
         }
         this.§^!3§.uploadFromVector(this.§3!-§.§^$§,0,4);
         this.§`!"§.uploadFromVector(this.§3!-§.§0"8§,0,4);
      }
      
      private function §`#S§(param1:int, param2:int, param3:Number, param4:Context3D) : void
      {
         var _loc7_:int = 0;
         var _loc5_:int = this.§<$&§ > 1 ? 2 : 1;
         if(this.§#7§ == null || this.§#7§.length != _loc5_ || this.§#7§[0].width != param1 || this.§#7§[0].height != param2)
         {
            if(this.§#7§)
            {
               var _loc9_:int = 0;
               var _loc10_:* = this.§#7§;
               while(§§hasnext(_loc10_,_loc9_))
               {
                  (§§nextvalue(_loc9_,_loc10_)).dispose();
               }
               this.§#7§.length = _loc5_;
            }
            else
            {
               this.§#7§ = new Vector.<Texture>(_loc5_);
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_)
            {
               this.§#7§[_loc7_] = Texture.§@"o§(param4,param1,param2,this.§1"`§,true,param3);
               _loc7_++;
            }
         }
      }
      
      private function §^"n§(param1:int) : Texture
      {
         this.§,"w§ = this.§#7§[param1 % 2];
         return this.§,"w§;
      }
      
      protected function calculateBounds(param1:DisplayObject, param2:Stage, param3:Boolean, param4:Rectangle) : void
      {
         var _loc5_:Number = NaN;
         if(param1 == param2 || param1 == Starling.§%!q§.root)
         {
            param4.setTo(0,0,param2.stageWidth,param2.stageHeight);
         }
         else
         {
            param1.getBounds(param2,param4);
         }
         if(param3)
         {
            §-!N§.setTo(0,0,param2.stageWidth,param2.stageHeight);
            §!#S§.§-6§(param4,§-!N§,param4);
         }
         if(!param4.isEmpty())
         {
            _loc5_ = this.§^!T§ == 1 ? Number(0) : Number(1 / this.§^!T§);
            param4.x -= this.§<N§ + _loc5_;
            param4.y -= this.§+"6§ + _loc5_;
            param4.width += 2 * (this.§<N§ + _loc5_);
            param4.height += 2 * (this.§+"6§ + _loc5_);
            param4.width = getNextPowerOfTwo(param4.width * this.§^!T§) / this.§^!T§;
            param4.height = getNextPowerOfTwo(param4.height * this.§^!T§) / this.§^!T§;
         }
      }
      
      private function §8m§() : void
      {
         var _loc1_:Texture = null;
         for each(_loc1_ in this.§#7§)
         {
            _loc1_.dispose();
         }
         this.§#7§ = null;
      }
      
      private function §3!D§() : void
      {
         if(this.§[#E§)
         {
            if(this.§[#E§.texture)
            {
               this.§[#E§.texture.dispose();
            }
            this.§[#E§.dispose();
            this.§[#E§ = null;
         }
      }
      
      protected function createPrograms() : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function activate(param1:int, param2:§""F§, param3:Texture) : void
      {
         throw new Error("Method has to be implemented in subclass!");
      }
      
      protected function deactivate(param1:int, param2:§""F§, param3:Texture) : void
      {
      }
      
      protected function §'$7§(param1:String = null, param2:String = null) : Program3D
      {
         if(param1 == null)
         {
            param1 = this.§!R§;
         }
         if(param2 == null)
         {
            param2 = this.§'l§;
         }
         var _loc3_:Context3D = Starling.context;
         if(!_loc3_)
         {
            return null;
         }
         return §""F§.§'$7§(param2,param1);
      }
      
      public function §use §() : void
      {
         this.§@#9§ = true;
         this.§3!D§();
      }
      
      public function §'!o§() : void
      {
         this.§@#9§ = false;
         this.§3!D§();
      }
      
      function §0"9§(param1:DisplayObject) : §6!`§
      {
         var _loc2_:§""F§ = null;
         var _loc3_:Stage = null;
         if(this.§[#E§)
         {
            return this.§[#E§;
         }
         _loc3_ = param1.stage;
         if(_loc3_ == null)
         {
            throw new Error("Filtered object must be on the stage.");
         }
         _loc2_ = new §""F§();
         param1.§?P§(_loc3_,_loc2_.§5P§);
         return this.§=#!§(param1,_loc2_,1,true);
      }
      
      public function get §5g§() : Boolean
      {
         return this.§[#E§ != null || this.§@#9§;
      }
      
      public function get §7!'§() : Number
      {
         return this.§^!T§;
      }
      
      public function set §7!'§(param1:Number) : void
      {
         if(param1 <= 0)
         {
            throw new ArgumentError("Resolution must be > 0");
         }
         this.§^!T§ = param1;
      }
      
      public function get §<"$§() : String
      {
         return this.§-!L§;
      }
      
      public function set §<"$§(param1:String) : void
      {
         this.§-!L§ = param1;
      }
      
      public function get offsetX() : Number
      {
         return this.§#V§;
      }
      
      public function set offsetX(param1:Number) : void
      {
         this.§#V§ = param1;
      }
      
      public function get offsetY() : Number
      {
         return this.§,#r§;
      }
      
      public function set offsetY(param1:Number) : void
      {
         this.§,#r§ = param1;
      }
      
      protected function get §^6§() : Number
      {
         return this.§<N§;
      }
      
      protected function set §^6§(param1:Number) : void
      {
         this.§<N§ = param1;
      }
      
      protected function get §1!2§() : Number
      {
         return this.§+"6§;
      }
      
      protected function set §1!2§(param1:Number) : void
      {
         this.§+"6§ = param1;
      }
      
      protected function set §1=§(param1:int) : void
      {
         this.§<$&§ = param1;
      }
      
      protected function get §1=§() : int
      {
         return this.§<$&§;
      }
      
      protected final function get §`$-§() : int
      {
         return this.§0C§;
      }
      
      protected final function set §`$-§(param1:int) : void
      {
         this.§0C§ = param1;
      }
      
      protected final function get §^"Y§() : int
      {
         return this.§1"H§;
      }
      
      protected final function set §^"Y§(param1:int) : void
      {
         this.§1"H§ = param1;
      }
      
      protected final function get §3$,§() : int
      {
         return this.§]6§;
      }
      
      protected final function set §3$,§(param1:int) : void
      {
         this.§]6§ = param1;
      }
      
      protected final function get §6#s§() : int
      {
         return this.§^!a§;
      }
      
      protected final function set §6#s§(param1:int) : void
      {
         this.§^!a§ = param1;
      }
      
      protected final function get §^!L§() : Texture
      {
         return this.§,"w§;
      }
   }
}
