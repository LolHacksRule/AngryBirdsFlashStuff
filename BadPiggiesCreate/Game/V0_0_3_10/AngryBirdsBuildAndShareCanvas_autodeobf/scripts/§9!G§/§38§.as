package §9!G§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §38§ extends Sprite
   {
      
      private static const §-K§:int = 1000;
       
      
      private var §`!x§:TextField;
      
      private var § §:Boolean;
      
      private var §3!q§:int = 0;
      
      private var §,!C§:Number = 0;
      
      private var §6s§:Array;
      
      public function §38§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§ § = param1;
         if(param1)
         {
            this.§`!x§ = new TextField();
            this.§`!x§.text = "...";
            this.§`!x§.textColor = 16711680;
            this.§`!x§.selectable = false;
            this.§`!x§.height = 40;
            this.§`!x§.width = 150;
            this.§`!x§.mouseEnabled = false;
            addChild(this.§`!x§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§6s§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§3!q§;
         this.§,!C§ += param1;
         if(this.§,!C§ >= §-K§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§,!C§ == 0 || this.§3!q§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§,!C§ * this.§3!q§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§6s§.length)
         {
            if(this.§6s§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§6s§[_loc4_][0] + " = " + Math.round(this.§6s§[_loc4_][2] / this.§6s§[_loc4_][1]);
            }
            this.§6s§[_loc4_][1] = 0;
            this.§6s§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§`!x§.text = _loc3_;
         this.§`!x§.mouseEnabled = false;
         this.§3!q§ = 0;
         this.§,!C§ = 0;
      }
      
      public function §2C§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§6s§.length)
         {
            if(this.§6s§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§6s§[this.§6s§.length] = new Array();
            _loc3_ = this.§6s§.length - 1;
            this.§6s§[_loc3_][0] = param1;
            this.§6s§[_loc3_][1] = 0;
            this.§6s§[_loc3_][2] = 0;
         }
         this.§6s§[_loc3_][1] += 1;
         this.§6s§[_loc3_][2] += param2;
      }
   }
}
