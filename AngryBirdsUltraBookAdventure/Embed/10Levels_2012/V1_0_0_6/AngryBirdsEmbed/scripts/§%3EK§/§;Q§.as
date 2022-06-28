package §>K§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §;Q§ extends Sprite
   {
      
      private static const §%H§:int = 1000;
       
      
      private var §3Y§:TextField;
      
      private var §<7§:Boolean;
      
      private var §+!<§:int = 0;
      
      private var §#c§:Number = 0;
      
      private var §?-§:Array;
      
      public function §;Q§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§<7§ = param1;
         if(param1)
         {
            this.§3Y§ = new TextField();
            this.§3Y§.text = "...";
            this.§3Y§.textColor = 16711680;
            this.§3Y§.selectable = false;
            this.§3Y§.height = 40;
            this.§3Y§.width = 150;
            this.§3Y§.mouseEnabled = false;
            addChild(this.§3Y§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§?-§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§+!<§;
         this.§#c§ += param1;
         if(this.§#c§ >= §%H§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§#c§ == 0 || this.§+!<§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§#c§ * this.§+!<§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§?-§.length)
         {
            if(this.§?-§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§?-§[_loc4_][0] + " = " + Math.round(this.§?-§[_loc4_][2] / this.§?-§[_loc4_][1]);
            }
            this.§?-§[_loc4_][1] = 0;
            this.§?-§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§3Y§.text = _loc3_;
         this.§3Y§.mouseEnabled = false;
         this.§+!<§ = 0;
         this.§#c§ = 0;
      }
      
      public function §false§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§?-§.length)
         {
            if(this.§?-§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§?-§[this.§?-§.length] = new Array();
            _loc3_ = this.§?-§.length - 1;
            this.§?-§[_loc3_][0] = param1;
            this.§?-§[_loc3_][1] = 0;
            this.§?-§[_loc3_][2] = 0;
         }
         this.§?-§[_loc3_][1] += 1;
         this.§?-§[_loc3_][2] += param2;
      }
   }
}
