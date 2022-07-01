package §4u§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §26§ extends Sprite
   {
      
      private static const §'V§:int = 1000;
       
      
      private var §5!0§:TextField;
      
      private var §@#§:Boolean;
      
      private var §7",§:int = 0;
      
      private var §5"2§:Number = 0;
      
      private var §;'§:Array;
      
      public function §26§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§@#§ = param1;
         if(param1)
         {
            this.§5!0§ = new TextField();
            this.§5!0§.text = "...";
            this.§5!0§.textColor = 16711680;
            this.§5!0§.selectable = false;
            this.§5!0§.height = 40;
            this.§5!0§.width = 150;
            this.§5!0§.mouseEnabled = false;
            addChild(this.§5!0§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§;'§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§7",§;
         this.§5"2§ += param1;
         if(this.§5"2§ >= §'V§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§5"2§ == 0 || this.§7",§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§5"2§ * this.§7",§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§;'§.length)
         {
            if(this.§;'§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§;'§[_loc4_][0] + " = " + Math.round(this.§;'§[_loc4_][2] / this.§;'§[_loc4_][1]);
            }
            this.§;'§[_loc4_][1] = 0;
            this.§;'§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§5!0§.text = _loc3_;
         this.§5!0§.mouseEnabled = false;
         this.§7",§ = 0;
         this.§5"2§ = 0;
      }
      
      public function §-!x§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§;'§.length)
         {
            if(this.§;'§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§;'§[this.§;'§.length] = new Array();
            _loc3_ = this.§;'§.length - 1;
            this.§;'§[_loc3_][0] = param1;
            this.§;'§[_loc3_][1] = 0;
            this.§;'§[_loc3_][2] = 0;
         }
         this.§;'§[_loc3_][1] += 1;
         this.§;'§[_loc3_][2] += param2;
      }
   }
}
