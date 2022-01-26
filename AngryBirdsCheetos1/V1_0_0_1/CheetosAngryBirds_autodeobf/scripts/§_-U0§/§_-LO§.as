package §_-U0§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-LO§ extends Sprite
   {
      
      private static const §_-2f§:int = 1000;
       
      
      private var §_-hw§:TextField;
      
      private var §_-Vy§:Boolean;
      
      private var §_-3i§:int = 0;
      
      private var §_-x8§:Number = 0;
      
      private var §_-Q4§:Array;
      
      public function §_-LO§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-Vy§ = param1;
         if(param1)
         {
            this.§_-hw§ = new TextField();
            this.§_-hw§.text = "...";
            this.§_-hw§.textColor = 16711680;
            this.§_-hw§.selectable = false;
            this.§_-hw§.height = 40;
            this.§_-hw§.width = 150;
            this.§_-hw§.mouseEnabled = false;
            addChild(this.§_-hw§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-Q4§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-3i§;
         this.§_-x8§ += param1;
         if(this.§_-x8§ >= §_-2f§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-x8§ == 0 || this.§_-3i§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-x8§ * this.§_-3i§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-Q4§.length)
         {
            if(this.§_-Q4§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-Q4§[_loc4_][0] + " = " + Math.round(this.§_-Q4§[_loc4_][2] / this.§_-Q4§[_loc4_][1]);
            }
            this.§_-Q4§[_loc4_][1] = 0;
            this.§_-Q4§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-hw§.text = _loc3_;
         this.§_-hw§.mouseEnabled = false;
         this.§_-3i§ = 0;
         this.§_-x8§ = 0;
      }
      
      public function §_-fh§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-Q4§.length)
         {
            if(this.§_-Q4§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-Q4§[this.§_-Q4§.length] = new Array();
            _loc3_ = this.§_-Q4§.length - 1;
            this.§_-Q4§[_loc3_][0] = param1;
            this.§_-Q4§[_loc3_][1] = 0;
            this.§_-Q4§[_loc3_][2] = 0;
         }
         this.§_-Q4§[_loc3_][1] += 1;
         this.§_-Q4§[_loc3_][2] += param2;
      }
   }
}
