package §!6§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §[e§ extends Sprite
   {
      
      private static const §+J§:int = 1000;
       
      
      private var §8Y§:TextField;
      
      private var §9!E§:Boolean;
      
      private var §0d§:int = 0;
      
      private var §0!=§:Number = 0;
      
      private var §5V§:Array;
      
      public function §[e§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§9!E§ = param1;
         if(param1)
         {
            this.§8Y§ = new TextField();
            this.§8Y§.text = "...";
            this.§8Y§.textColor = 16711680;
            this.§8Y§.selectable = false;
            this.§8Y§.height = 40;
            this.§8Y§.width = 150;
            this.§8Y§.mouseEnabled = false;
            addChild(this.§8Y§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§5V§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§0d§;
         this.§0!=§ += param1;
         if(this.§0!=§ >= §+J§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§0!=§ == 0 || this.§0d§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§0!=§ * this.§0d§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§5V§.length)
         {
            if(this.§5V§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§5V§[_loc4_][0] + " = " + Math.round(this.§5V§[_loc4_][2] / this.§5V§[_loc4_][1]);
            }
            this.§5V§[_loc4_][1] = 0;
            this.§5V§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§8Y§.text = _loc3_;
         this.§8Y§.mouseEnabled = false;
         this.§0d§ = 0;
         this.§0!=§ = 0;
      }
      
      public function §71§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§5V§.length)
         {
            if(this.§5V§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§5V§[this.§5V§.length] = new Array();
            _loc3_ = this.§5V§.length - 1;
            this.§5V§[_loc3_][0] = param1;
            this.§5V§[_loc3_][1] = 0;
            this.§5V§[_loc3_][2] = 0;
         }
         this.§5V§[_loc3_][1] += 1;
         this.§5V§[_loc3_][2] += param2;
      }
   }
}
