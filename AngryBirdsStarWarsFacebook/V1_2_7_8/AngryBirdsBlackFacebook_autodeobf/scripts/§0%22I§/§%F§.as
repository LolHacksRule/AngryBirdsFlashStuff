package §0"I§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §%F§ extends Sprite
   {
      
      private static const §0"f§:int = 1000;
       
      
      private var §4"y§:TextField;
      
      private var §2f§:Boolean;
      
      private var §="i§:int = 0;
      
      private var §0w§:Number = 0;
      
      private var §-%§:Array;
      
      public function §%F§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§2f§ = param1;
         if(param1)
         {
            this.§4"y§ = new TextField();
            this.§4"y§.text = "...";
            this.§4"y§.textColor = 16711680;
            this.§4"y§.selectable = false;
            this.§4"y§.height = 40;
            this.§4"y§.width = 150;
            this.§4"y§.mouseEnabled = false;
            addChild(this.§4"y§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§-%§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§="i§;
         this.§0w§ += param1;
         if(this.§0w§ >= §0"f§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§0w§ == 0 || this.§="i§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§0w§ * this.§="i§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§-%§.length)
         {
            if(this.§-%§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§-%§[_loc4_][0] + " = " + Math.round(this.§-%§[_loc4_][2] / this.§-%§[_loc4_][1]);
            }
            this.§-%§[_loc4_][1] = 0;
            this.§-%§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§4"y§.text = _loc3_;
         this.§4"y§.mouseEnabled = false;
         this.§="i§ = 0;
         this.§0w§ = 0;
      }
      
      public function §^!m§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§-%§.length)
         {
            if(this.§-%§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§-%§[this.§-%§.length] = new Array();
            _loc3_ = this.§-%§.length - 1;
            this.§-%§[_loc3_][0] = param1;
            this.§-%§[_loc3_][1] = 0;
            this.§-%§[_loc3_][2] = 0;
         }
         this.§-%§[_loc3_][1] += 1;
         this.§-%§[_loc3_][2] += param2;
      }
   }
}
