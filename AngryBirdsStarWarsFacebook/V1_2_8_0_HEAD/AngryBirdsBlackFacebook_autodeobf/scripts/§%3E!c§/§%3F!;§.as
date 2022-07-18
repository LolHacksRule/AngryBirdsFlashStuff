package §>!c§
{
   import com.furusystems.dconsole2.DConsole;
   import com.furusystems.dconsole2.core.style.§>"!§;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   
   public class §?!;§
   {
       
      
      private var §#3§:SharedObject;
      
      private var §#L§:DConsole;
      
      public const §"!H§:int = 10;
      
      public var verticalSplitRatio:§@f§;
      
      public var dockState:§@f§;
      
      public var previousCommands:§@f§;
      
      private var §%!t§:§@f§;
      
      private var _height:§@f§;
      
      private var _x:§@f§;
      
      private var _y:§@f§;
      
      private var §+#H§:int = 0;
      
      public function §?!;§(param1:DConsole)
      {
         super();
         this.§#L§ = param1;
         this.§#3§ = SharedObject.getLocal("consoleHistory");
         this.verticalSplitRatio = new §@f§(this.§#3§,"verticalSplitRatio",0.25);
         this.dockState = new §@f§(this.§#3§,"dockState",0);
         this.previousCommands = new §@f§(this.§#3§,"previousCommands",[]);
         this.§%!t§ = new §@f§(this.§#3§,"width",800);
         this._height = new §@f§(this.§#3§,"height",13 * §>"!§.§6R§);
         this._x = new §@f§(this.§#3§,"xPosition",0);
         this._y = new §@f§(this.§#3§,"yPosition",0);
         this.§+#H§ = this.previousCommands.value.length;
      }
      
      public function toString() : String
      {
         var _loc1_:String = "Persistence:\n";
         _loc1_ += "\t" + this.verticalSplitRatio + "\n";
         _loc1_ += "\t" + this.dockState + "\n";
         _loc1_ += "\t" + this.previousCommands + "\n";
         _loc1_ += "\t" + this._x + "\n";
         _loc1_ += "\t" + this._y + "\n";
         _loc1_ += "\t" + this.§%!t§ + "\n";
         return _loc1_ + ("\t" + this._height + "\n");
      }
      
      public function get §?"i§() : Number
      {
         return this._x.value;
      }
      
      public function set §?"i§(param1:Number) : void
      {
         this._x.value = param1;
      }
      
      public function get §^Q§() : Number
      {
         return this._y.value;
      }
      
      public function set §^Q§(param1:Number) : void
      {
         this._y.value = param1;
      }
      
      public function get §6#>§() : Number
      {
         return this.§%!t§.value;
      }
      
      public function set §6#>§(param1:Number) : void
      {
         this.§%!t§.value = param1;
      }
      
      public function get §-1§() : Number
      {
         return this._height.value;
      }
      
      public function set §-1§(param1:Number) : void
      {
         this._height.value = param1;
      }
      
      public function get rect() : Rectangle
      {
         return new Rectangle(this.§?"i§,this.§^Q§,this.§6#>§,this.§-1§);
      }
      
      public function §&#<§() : void
      {
         this.previousCommands.§0!t§();
      }
      
      public function clearAll() : void
      {
         this._x.§0!t§();
         this._y.§0!t§();
         this.previousCommands.§0!t§();
         this.dockState.§0!t§();
         this.verticalSplitRatio.§0!t§();
         this.§%!t§.§0!t§();
         this._height.§0!t§();
         this.§+#H§ = 0;
      }
      
      public function §-#8§() : String
      {
         var _loc1_:Array = this.previousCommands.value;
         if(_loc1_.length > 0)
         {
            this.§+#H§ = Math.max(this.§+#H§ = this.§+#H§ - 1,0);
            return _loc1_[this.§+#H§];
         }
         return "";
      }
      
      public function §set §() : String
      {
         var _loc1_:Array = this.previousCommands.value;
         if(this.§+#H§ < _loc1_.length - 1)
         {
            this.§+#H§ = Math.min(this.§+#H§ = this.§+#H§ + 1,_loc1_.length - 1);
            return _loc1_[this.§+#H§];
         }
         this.§+#H§ = _loc1_.length;
         return "";
      }
      
      public function §&!4§(param1:String) : Boolean
      {
         var _loc2_:Array = this.previousCommands.value;
         if(_loc2_[_loc2_.length - 1] != param1)
         {
            _loc2_.push(param1);
            if(_loc2_.length > this.§"!H§)
            {
               _loc2_.shift();
            }
         }
         this.§+#H§ = _loc2_.length;
         return true;
      }
   }
}
