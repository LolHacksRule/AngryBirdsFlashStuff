package §_-ot§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-tc§ extends Sprite
   {
      
      private static const §_-0l§:int = 1000;
       
      
      private var § null§:TextField;
      
      private var §_-7w§:Boolean;
      
      private var §_-9B§:int = 0;
      
      private var §_-Rw§:Number = 0;
      
      private var §_-Im§:Array;
      
      public function §_-tc§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-7w§ = param1;
         if(param1)
         {
            this.§ null§ = new TextField();
            this.§ null§.text = "...";
            this.§ null§.textColor = 16711680;
            this.§ null§.selectable = false;
            this.§ null§.height = 40;
            this.§ null§.width = 150;
            this.§ null§.mouseEnabled = false;
            addChild(this.§ null§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-Im§ = new Array();
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-9B§;
         this.§_-Rw§ += param1;
         if(this.§_-Rw§ >= §_-0l§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-Rw§ == 0 || this.§_-9B§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-Rw§ * this.§_-9B§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-Im§.length)
         {
            if(this.§_-Im§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-Im§[_loc4_][0] + " = " + Math.round(this.§_-Im§[_loc4_][2] / this.§_-Im§[_loc4_][1]);
            }
            this.§_-Im§[_loc4_][1] = 0;
            this.§_-Im§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§ null§.text = _loc3_;
         this.§_-9B§ = 0;
         this.§_-Rw§ = 0;
      }
      
      public function §_-fx§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-Im§.length)
         {
            if(this.§_-Im§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-Im§[this.§_-Im§.length] = new Array();
            _loc3_ = this.§_-Im§.length - 1;
            this.§_-Im§[_loc3_][0] = param1;
            this.§_-Im§[_loc3_][1] = 0;
            this.§_-Im§[_loc3_][2] = 0;
         }
         this.§_-Im§[_loc3_][1] += 1;
         this.§_-Im§[_loc3_][2] += param2;
      }
   }
}
