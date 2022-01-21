package §=<§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §>d§ extends Sprite
   {
      
      private static const §"b§:int = 1000;
       
      
      private var §[U§:TextField;
      
      private var §4!'§:Boolean;
      
      private var §]y§:int = 0;
      
      private var §0o§:Number = 0;
      
      private var §-![§:Array;
      
      public function §>d§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§4!'§ = param1;
         if(param1)
         {
            this.§[U§ = new TextField();
            this.§[U§.text = "...";
            this.§[U§.textColor = 16711680;
            this.§[U§.selectable = false;
            this.§[U§.height = 40;
            this.§[U§.width = 150;
            this.§[U§.mouseEnabled = false;
            addChild(this.§[U§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§-![§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§]y§;
         this.§0o§ += param1;
         if(this.§0o§ >= §"b§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§0o§ == 0 || this.§]y§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§0o§ * this.§]y§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§-![§.length)
         {
            if(this.§-![§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§-![§[_loc4_][0] + " = " + Math.round(this.§-![§[_loc4_][2] / this.§-![§[_loc4_][1]);
            }
            this.§-![§[_loc4_][1] = 0;
            this.§-![§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§[U§.text = _loc3_;
         this.§[U§.mouseEnabled = false;
         this.§]y§ = 0;
         this.§0o§ = 0;
      }
      
      public function § m§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§-![§.length)
         {
            if(this.§-![§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§-![§[this.§-![§.length] = new Array();
            _loc3_ = this.§-![§.length - 1;
            this.§-![§[_loc3_][0] = param1;
            this.§-![§[_loc3_][1] = 0;
            this.§-![§[_loc3_][2] = 0;
         }
         this.§-![§[_loc3_][1] += 1;
         this.§-![§[_loc3_][2] += param2;
      }
   }
}
