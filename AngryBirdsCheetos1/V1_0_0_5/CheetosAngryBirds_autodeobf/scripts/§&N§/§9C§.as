package §&N§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §9C§ extends Sprite
   {
      
      private static const §+<§:int = 1000;
       
      
      private var §+D§:TextField;
      
      private var §1!L§:Boolean;
      
      private var §5!1§:int = 0;
      
      private var §;!$§:Number = 0;
      
      private var §>U§:Array;
      
      public function §9C§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§1!L§ = param1;
         if(param1)
         {
            this.§+D§ = new TextField();
            this.§+D§.text = "...";
            this.§+D§.textColor = 16711680;
            this.§+D§.selectable = false;
            this.§+D§.height = 40;
            this.§+D§.width = 150;
            this.§+D§.mouseEnabled = false;
            addChild(this.§+D§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§>U§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§5!1§;
         this.§;!$§ += param1;
         if(this.§;!$§ >= §+<§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§;!$§ == 0 || this.§5!1§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§;!$§ * this.§5!1§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§>U§.length)
         {
            if(this.§>U§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§>U§[_loc4_][0] + " = " + Math.round(this.§>U§[_loc4_][2] / this.§>U§[_loc4_][1]);
            }
            this.§>U§[_loc4_][1] = 0;
            this.§>U§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§+D§.text = _loc3_;
         this.§+D§.mouseEnabled = false;
         this.§5!1§ = 0;
         this.§;!$§ = 0;
      }
      
      public function §>n§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§>U§.length)
         {
            if(this.§>U§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§>U§[this.§>U§.length] = new Array();
            _loc3_ = this.§>U§.length - 1;
            this.§>U§[_loc3_][0] = param1;
            this.§>U§[_loc3_][1] = 0;
            this.§>U§[_loc3_][2] = 0;
         }
         this.§>U§[_loc3_][1] += 1;
         this.§>U§[_loc3_][2] += param2;
      }
   }
}
