package §@!;§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §@N§ extends Sprite
   {
      
      private static const §8w§:int = 1000;
       
      
      private var §<"8§:TextField;
      
      private var §!I§:Boolean;
      
      private var §+E§:int = 0;
      
      private var §<!E§:Number = 0;
      
      private var §3I§:Array;
      
      public function §@N§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§!I§ = param1;
         if(param1)
         {
            this.§<"8§ = new TextField();
            this.§<"8§.text = "...";
            this.§<"8§.textColor = 16711680;
            this.§<"8§.selectable = false;
            this.§<"8§.height = 40;
            this.§<"8§.width = 150;
            this.§<"8§.mouseEnabled = false;
            addChild(this.§<"8§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§3I§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§+E§;
         this.§<!E§ += param1;
         if(this.§<!E§ >= §8w§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§<!E§ == 0 || this.§+E§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§<!E§ * this.§+E§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§3I§.length)
         {
            if(this.§3I§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§3I§[_loc4_][0] + " = " + Math.round(this.§3I§[_loc4_][2] / this.§3I§[_loc4_][1]);
            }
            this.§3I§[_loc4_][1] = 0;
            this.§3I§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§<"8§.text = _loc3_;
         this.§<"8§.mouseEnabled = false;
         this.§+E§ = 0;
         this.§<!E§ = 0;
      }
      
      public function §?v§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§3I§.length)
         {
            if(this.§3I§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§3I§[this.§3I§.length] = new Array();
            _loc3_ = this.§3I§.length - 1;
            this.§3I§[_loc3_][0] = param1;
            this.§3I§[_loc3_][1] = 0;
            this.§3I§[_loc3_][2] = 0;
         }
         this.§3I§[_loc3_][1] += 1;
         this.§3I§[_loc3_][2] += param2;
      }
   }
}
