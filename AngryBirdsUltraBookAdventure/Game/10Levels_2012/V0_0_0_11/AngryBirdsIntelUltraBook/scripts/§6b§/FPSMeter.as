package §6b§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class FPSMeter extends Sprite
   {
      
      private static const §[![§:int = 1000;
       
      
      private var §"<§:TextField;
      
      private var §,!G§:Boolean;
      
      private var §#n§:int = 0;
      
      private var §^?§:Number = 0;
      
      private var §4!U§:Array;
      
      public function FPSMeter(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§,!G§ = param1;
         if(param1)
         {
            this.§"<§ = new TextField();
            this.§"<§.text = "...";
            this.§"<§.textColor = 16711680;
            this.§"<§.selectable = false;
            this.§"<§.height = 40;
            this.§"<§.width = 150;
            this.§"<§.mouseEnabled = false;
            addChild(this.§"<§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§4!U§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§#n§;
         this.§^?§ += param1;
         if(this.§^?§ >= §[![§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§^?§ == 0 || this.§#n§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§^?§ * this.§#n§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§4!U§.length)
         {
            if(this.§4!U§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§4!U§[_loc4_][0] + " = " + Math.round(this.§4!U§[_loc4_][2] / this.§4!U§[_loc4_][1]);
            }
            this.§4!U§[_loc4_][1] = 0;
            this.§4!U§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§"<§.text = _loc3_;
         this.§"<§.mouseEnabled = false;
         this.§#n§ = 0;
         this.§^?§ = 0;
      }
      
      public function §`J§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§4!U§.length)
         {
            if(this.§4!U§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§4!U§[this.§4!U§.length] = new Array();
            _loc3_ = this.§4!U§.length - 1;
            this.§4!U§[_loc3_][0] = param1;
            this.§4!U§[_loc3_][1] = 0;
            this.§4!U§[_loc3_][2] = 0;
         }
         this.§4!U§[_loc3_][1] += 1;
         this.§4!U§[_loc3_][2] += param2;
      }
   }
}
