package §5t§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §##?§ extends Sprite
   {
      
      private static const §4"2§:int = 1000;
       
      
      private var §+!%§:TextField;
      
      private var §>"7§:Boolean;
      
      private var §?o§:int = 0;
      
      private var §0"=§:Number = 0;
      
      private var §2"X§:Array;
      
      public function §##?§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§>"7§ = param1;
         if(param1)
         {
            this.§+!%§ = new TextField();
            this.§+!%§.text = "...";
            this.§+!%§.textColor = 16711680;
            this.§+!%§.selectable = false;
            this.§+!%§.height = 40;
            this.§+!%§.width = 150;
            this.§+!%§.mouseEnabled = false;
            addChild(this.§+!%§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§2"X§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§?o§;
         this.§0"=§ += param1;
         if(this.§0"=§ >= §4"2§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§0"=§ == 0 || this.§?o§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§0"=§ * this.§?o§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§2"X§.length)
         {
            if(this.§2"X§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§2"X§[_loc4_][0] + " = " + Math.round(this.§2"X§[_loc4_][2] / this.§2"X§[_loc4_][1]);
            }
            this.§2"X§[_loc4_][1] = 0;
            this.§2"X§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§+!%§.text = _loc3_;
         this.§+!%§.mouseEnabled = false;
         this.§?o§ = 0;
         this.§0"=§ = 0;
      }
      
      public function §""F§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§2"X§.length)
         {
            if(this.§2"X§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§2"X§[this.§2"X§.length] = new Array();
            _loc3_ = this.§2"X§.length - 1;
            this.§2"X§[_loc3_][0] = param1;
            this.§2"X§[_loc3_][1] = 0;
            this.§2"X§[_loc3_][2] = 0;
         }
         this.§2"X§[_loc3_][1] += 1;
         this.§2"X§[_loc3_][2] += param2;
      }
   }
}
