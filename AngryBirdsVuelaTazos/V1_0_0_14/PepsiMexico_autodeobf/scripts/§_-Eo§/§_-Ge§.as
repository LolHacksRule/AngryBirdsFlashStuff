package §_-Eo§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-Ge§ extends Sprite
   {
      
      private static const §_-PX§:int = 1000;
       
      
      private var §_-uc§:TextField;
      
      private var §_-Rz§:Boolean;
      
      private var §_-f2§:int = 0;
      
      private var §_-wW§:Number = 0;
      
      private var §_-Ud§:Array;
      
      public function §_-Ge§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-Rz§ = param1;
         if(param1)
         {
            this.§_-uc§ = new TextField();
            this.§_-uc§.text = "...";
            this.§_-uc§.textColor = 16711680;
            this.§_-uc§.selectable = false;
            this.§_-uc§.height = 40;
            this.§_-uc§.width = 150;
            this.§_-uc§.mouseEnabled = false;
            addChild(this.§_-uc§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-Ud§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-f2§;
         this.§_-wW§ += param1;
         if(this.§_-wW§ >= §_-PX§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-wW§ == 0 || this.§_-f2§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-wW§ * this.§_-f2§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-Ud§.length)
         {
            if(this.§_-Ud§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-Ud§[_loc4_][0] + " = " + Math.round(this.§_-Ud§[_loc4_][2] / this.§_-Ud§[_loc4_][1]);
            }
            this.§_-Ud§[_loc4_][1] = 0;
            this.§_-Ud§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-uc§.text = _loc3_;
         this.§_-uc§.mouseEnabled = false;
         this.§_-f2§ = 0;
         this.§_-wW§ = 0;
      }
      
      public function §_-mN§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-Ud§.length)
         {
            if(this.§_-Ud§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-Ud§[this.§_-Ud§.length] = new Array();
            _loc3_ = this.§_-Ud§.length - 1;
            this.§_-Ud§[_loc3_][0] = param1;
            this.§_-Ud§[_loc3_][1] = 0;
            this.§_-Ud§[_loc3_][2] = 0;
         }
         this.§_-Ud§[_loc3_][1] += 1;
         this.§_-Ud§[_loc3_][2] += param2;
      }
   }
}
