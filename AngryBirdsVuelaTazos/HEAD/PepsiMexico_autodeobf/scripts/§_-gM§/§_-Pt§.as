package §_-gM§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-Pt§ extends Sprite
   {
      
      private static const §_-dj§:int = 1000;
       
      
      private var §_-VK§:TextField;
      
      private var §_-W6§:Boolean;
      
      private var §_-Qc§:int = 0;
      
      private var §_-YK§:Number = 0;
      
      private var §_-ed§:Array;
      
      public function §_-Pt§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-W6§ = param1;
         if(param1)
         {
            this.§_-VK§ = new TextField();
            this.§_-VK§.text = "...";
            this.§_-VK§.textColor = 16711680;
            this.§_-VK§.selectable = false;
            this.§_-VK§.height = 40;
            this.§_-VK§.width = 150;
            this.§_-VK§.mouseEnabled = false;
            addChild(this.§_-VK§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-ed§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-Qc§;
         this.§_-YK§ += param1;
         if(this.§_-YK§ >= §_-dj§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-YK§ == 0 || this.§_-Qc§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-YK§ * this.§_-Qc§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-ed§.length)
         {
            if(this.§_-ed§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-ed§[_loc4_][0] + " = " + Math.round(this.§_-ed§[_loc4_][2] / this.§_-ed§[_loc4_][1]);
            }
            this.§_-ed§[_loc4_][1] = 0;
            this.§_-ed§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-VK§.text = _loc3_;
         this.§_-VK§.mouseEnabled = false;
         this.§_-Qc§ = 0;
         this.§_-YK§ = 0;
      }
      
      public function §_-ZQ§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-ed§.length)
         {
            if(this.§_-ed§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-ed§[this.§_-ed§.length] = new Array();
            _loc3_ = this.§_-ed§.length - 1;
            this.§_-ed§[_loc3_][0] = param1;
            this.§_-ed§[_loc3_][1] = 0;
            this.§_-ed§[_loc3_][2] = 0;
         }
         this.§_-ed§[_loc3_][1] += 1;
         this.§_-ed§[_loc3_][2] += param2;
      }
   }
}
