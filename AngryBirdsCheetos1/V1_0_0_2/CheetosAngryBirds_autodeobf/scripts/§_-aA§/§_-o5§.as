package §_-aA§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §_-o5§ extends Sprite
   {
      
      private static const §_-fg§:int = 1000;
       
      
      private var §_-Qs§:TextField;
      
      private var §_-KK§:Boolean;
      
      private var §_-kH§:int = 0;
      
      private var §else §:Number = 0;
      
      private var §_-qG§:Array;
      
      public function §_-o5§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§_-KK§ = param1;
         if(param1)
         {
            this.§_-Qs§ = new TextField();
            this.§_-Qs§.text = "...";
            this.§_-Qs§.textColor = 16711680;
            this.§_-Qs§.selectable = false;
            this.§_-Qs§.height = 40;
            this.§_-Qs§.width = 150;
            this.§_-Qs§.mouseEnabled = false;
            addChild(this.§_-Qs§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§_-qG§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§_-kH§;
         this.§else § += param1;
         if(this.§else § >= §_-fg§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§else § == 0 || this.§_-kH§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§else § * this.§_-kH§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-qG§.length)
         {
            if(this.§_-qG§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§_-qG§[_loc4_][0] + " = " + Math.round(this.§_-qG§[_loc4_][2] / this.§_-qG§[_loc4_][1]);
            }
            this.§_-qG§[_loc4_][1] = 0;
            this.§_-qG§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§_-Qs§.text = _loc3_;
         this.§_-Qs§.mouseEnabled = false;
         this.§_-kH§ = 0;
         this.§else § = 0;
      }
      
      public function §_-tG§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§_-qG§.length)
         {
            if(this.§_-qG§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§_-qG§[this.§_-qG§.length] = new Array();
            _loc3_ = this.§_-qG§.length - 1;
            this.§_-qG§[_loc3_][0] = param1;
            this.§_-qG§[_loc3_][1] = 0;
            this.§_-qG§[_loc3_][2] = 0;
         }
         this.§_-qG§[_loc3_][1] += 1;
         this.§_-qG§[_loc3_][2] += param2;
      }
   }
}
