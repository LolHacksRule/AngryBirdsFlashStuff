package §_-r6§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-v0§ extends Sprite
   {
      
      private static const §_-E7§:int = 1000;
       
      
      private var §_-fI§:TextField;
      
      private var §_-7U§:Boolean;
      
      private var §_-jG§:int = 0;
      
      private var §_-0-W§:Number = 0;
      
      private var §_-HD§:Array;
      
      public function §_-v0§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-7U§ = param1;
         if(param1)
         {
            this.§_-fI§ = new TextField();
            this.§_-fI§.text = "...";
            this.§_-fI§.textColor = 16711680;
            this.§_-fI§.selectable = false;
            this.§_-fI§.height = 40;
            this.§_-fI§.width = 150;
            this.§_-fI§.mouseEnabled = false;
            addChild(this.§_-fI§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-HD§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-jG§;
         this.§_-0-W§ += param1;
         if(this.§_-0-W§ >= §_-E7§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-0-W§ == 0 || this.§_-jG§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-0-W§ * this.§_-jG§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-HD§.length)
         {
            if(this.§_-HD§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-HD§[_loc4_][0] + " = " + Math.round(this.§_-HD§[_loc4_][2] / this.§_-HD§[_loc4_][1]);
            }
            this.§_-HD§[_loc4_][1] = 0;
            this.§_-HD§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-fI§.text = _loc3_;
         this.§_-fI§.mouseEnabled = false;
         this.§_-jG§ = 0;
         this.§_-0-W§ = 0;
      }
      
      public function §_-92§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-HD§.length)
         {
            if(this.§_-HD§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-HD§[this.§_-HD§.length] = new Array();
            _loc3_ = this.§_-HD§.length - 1;
            this.§_-HD§[_loc3_][0] = param1;
            this.§_-HD§[_loc3_][1] = 0;
            this.§_-HD§[_loc3_][2] = 0;
         }
         this.§_-HD§[_loc3_][1] += 1;
         this.§_-HD§[_loc3_][2] += param2;
      }
   }
}
