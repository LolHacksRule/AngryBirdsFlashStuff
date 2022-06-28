package §_-0BH§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-Pw§ extends Sprite
   {
      
      private static const §_-ci§:int = 1000;
       
      
      private var §_-z8§:TextField;
      
      private var §_-Ep§:Boolean;
      
      private var §_-08c§:int = 0;
      
      private var §_-hV§:Number = 0;
      
      private var §_-eO§:Array;
      
      public function §_-Pw§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-Ep§ = param1;
         if(param1)
         {
            this.§_-z8§ = new TextField();
            this.§_-z8§.text = "...";
            this.§_-z8§.textColor = 16711680;
            this.§_-z8§.selectable = false;
            this.§_-z8§.height = 40;
            this.§_-z8§.width = 150;
            this.§_-z8§.mouseEnabled = false;
            addChild(this.§_-z8§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-eO§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-08c§;
         this.§_-hV§ += param1;
         if(this.§_-hV§ >= §_-ci§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-hV§ == 0 || this.§_-08c§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-hV§ * this.§_-08c§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-eO§.length)
         {
            if(this.§_-eO§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-eO§[_loc4_][0] + " = " + Math.round(this.§_-eO§[_loc4_][2] / this.§_-eO§[_loc4_][1]);
            }
            this.§_-eO§[_loc4_][1] = 0;
            this.§_-eO§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-z8§.text = _loc3_;
         this.§_-z8§.mouseEnabled = false;
         this.§_-08c§ = 0;
         this.§_-hV§ = 0;
      }
      
      public function §_-3P§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-eO§.length)
         {
            if(this.§_-eO§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-eO§[this.§_-eO§.length] = new Array();
            _loc3_ = this.§_-eO§.length - 1;
            this.§_-eO§[_loc3_][0] = param1;
            this.§_-eO§[_loc3_][1] = 0;
            this.§_-eO§[_loc3_][2] = 0;
         }
         this.§_-eO§[_loc3_][1] += 1;
         this.§_-eO§[_loc3_][2] += param2;
      }
   }
}
