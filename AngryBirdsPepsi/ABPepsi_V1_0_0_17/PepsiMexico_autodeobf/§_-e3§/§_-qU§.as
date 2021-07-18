package §_-e3§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-qU§ extends Sprite
   {
      
      private static const §_-Th§:int = 1000;
       
      
      private var §_-3e§:TextField;
      
      private var §_-Wn§:Boolean;
      
      private var §_-uE§:int = 0;
      
      private var §_-tw§:Number = 0;
      
      private var §_-pq§:Array;
      
      public function §_-qU§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-Wn§ = param1;
         if(param1)
         {
            this.§_-3e§ = new TextField();
            this.§_-3e§.text = "...";
            this.§_-3e§.textColor = 16711680;
            this.§_-3e§.selectable = false;
            this.§_-3e§.height = 40;
            this.§_-3e§.width = 150;
            this.§_-3e§.mouseEnabled = false;
            addChild(this.§_-3e§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-pq§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-uE§;
         this.§_-tw§ += param1;
         if(this.§_-tw§ >= §_-Th§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§_-tw§ == 0 || this.§_-uE§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§_-tw§ * this.§_-uE§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-pq§.length)
         {
            if(this.§_-pq§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-pq§[_loc4_][0] + " = " + Math.round(this.§_-pq§[_loc4_][2] / this.§_-pq§[_loc4_][1]);
            }
            this.§_-pq§[_loc4_][1] = 0;
            this.§_-pq§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-3e§.text = _loc3_;
         this.§_-3e§.mouseEnabled = false;
         this.§_-uE§ = 0;
         this.§_-tw§ = 0;
      }
      
      public function §_-LC§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-pq§.length)
         {
            if(this.§_-pq§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-pq§[this.§_-pq§.length] = new Array();
            _loc3_ = this.§_-pq§.length - 1;
            this.§_-pq§[_loc3_][0] = param1;
            this.§_-pq§[_loc3_][1] = 0;
            this.§_-pq§[_loc3_][2] = 0;
         }
         this.§_-pq§[_loc3_][1] += 1;
         this.§_-pq§[_loc3_][2] += param2;
      }
   }
}
