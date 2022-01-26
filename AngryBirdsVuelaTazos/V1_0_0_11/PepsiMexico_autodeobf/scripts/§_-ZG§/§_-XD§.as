package §_-ZG§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-XD§ extends Sprite
   {
      
      private static const §_-WR§:int = 1000;
       
      
      private var §_-Dg§:TextField;
      
      private var §_-PJ§:Boolean;
      
      private var §_-9F§:int = 0;
      
      private var §_-VQ§:Number = 0;
      
      private var §_-px§:Array;
      
      public function §_-XD§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-PJ§ = param1;
         if(param1)
         {
            this.§_-Dg§ = new TextField();
            this.§_-Dg§.text = "...";
            this.§_-Dg§.textColor = 16711680;
            this.§_-Dg§.selectable = false;
            this.§_-Dg§.height = 40;
            this.§_-Dg§.width = 150;
            this.§_-Dg§.mouseEnabled = false;
            addChild(this.§_-Dg§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-px§ = new Array();
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-9F§;
         this.§_-VQ§ += param1;
         if(this.§_-VQ§ >= §_-WR§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-VQ§ == 0 || this.§_-9F§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-VQ§ * this.§_-9F§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-px§.length)
         {
            if(this.§_-px§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-px§[_loc4_][0] + " = " + Math.round(this.§_-px§[_loc4_][2] / this.§_-px§[_loc4_][1]);
            }
            this.§_-px§[_loc4_][1] = 0;
            this.§_-px§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-Dg§.text = _loc3_;
         this.§_-9F§ = 0;
         this.§_-VQ§ = 0;
      }
      
      public function §_-8T§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-px§.length)
         {
            if(this.§_-px§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-px§[this.§_-px§.length] = new Array();
            _loc3_ = this.§_-px§.length - 1;
            this.§_-px§[_loc3_][0] = param1;
            this.§_-px§[_loc3_][1] = 0;
            this.§_-px§[_loc3_][2] = 0;
         }
         this.§_-px§[_loc3_][1] += 1;
         this.§_-px§[_loc3_][2] += param2;
      }
   }
}
