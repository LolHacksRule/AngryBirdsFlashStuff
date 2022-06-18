package §^!&§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §4u§ extends Sprite
   {
      
      private static const §3!'§:int = 1000;
       
      
      private var §'7§:TextField;
      
      private var §91§:Boolean;
      
      private var §'m§:int = 0;
      
      private var §3j§:Number = 0;
      
      private var §=8§:Array;
      
      public function §4u§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§91§ = param1;
         if(param1)
         {
            this.§'7§ = new TextField();
            this.§'7§.text = "...";
            this.§'7§.textColor = 16711680;
            this.§'7§.selectable = false;
            this.§'7§.height = 40;
            this.§'7§.width = 150;
            this.§'7§.mouseEnabled = false;
            addChild(this.§'7§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§=8§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§'m§;
         this.§3j§ += param1;
         if(this.§3j§ >= §3!'§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§3j§ == 0 || this.§'m§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§3j§ * this.§'m§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§=8§.length)
         {
            if(this.§=8§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§=8§[_loc4_][0] + " = " + Math.round(this.§=8§[_loc4_][2] / this.§=8§[_loc4_][1]);
            }
            this.§=8§[_loc4_][1] = 0;
            this.§=8§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§'7§.text = _loc3_;
         this.§'7§.mouseEnabled = false;
         this.§'m§ = 0;
         this.§3j§ = 0;
      }
      
      public function §4B§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§=8§.length)
         {
            if(this.§=8§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§=8§[this.§=8§.length] = new Array();
            _loc3_ = this.§=8§.length - 1;
            this.§=8§[_loc3_][0] = param1;
            this.§=8§[_loc3_][1] = 0;
            this.§=8§[_loc3_][2] = 0;
         }
         this.§=8§[_loc3_][1] += 1;
         this.§=8§[_loc3_][2] += param2;
      }
   }
}
