package §?@§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §-&§ extends Sprite
   {
      
      private static const §&Q§:int = 1000;
       
      
      private var §6^§:TextField;
      
      private var §&a§:Boolean;
      
      private var §1!Y§:int = 0;
      
      private var §%!0§:Number = 0;
      
      private var §'!G§:Array;
      
      public function §-&§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§&a§ = param1;
         if(param1)
         {
            this.§6^§ = new TextField();
            this.§6^§.text = "...";
            this.§6^§.textColor = 16711680;
            this.§6^§.selectable = false;
            this.§6^§.height = 40;
            this.§6^§.width = 150;
            this.§6^§.mouseEnabled = false;
            addChild(this.§6^§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§'!G§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§1!Y§;
         this.§%!0§ += param1;
         if(this.§%!0§ >= §&Q§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§%!0§ == 0 || this.§1!Y§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§%!0§ * this.§1!Y§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§'!G§.length)
         {
            if(this.§'!G§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§'!G§[_loc4_][0] + " = " + Math.round(this.§'!G§[_loc4_][2] / this.§'!G§[_loc4_][1]);
            }
            this.§'!G§[_loc4_][1] = 0;
            this.§'!G§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§6^§.text = _loc3_;
         this.§6^§.mouseEnabled = false;
         this.§1!Y§ = 0;
         this.§%!0§ = 0;
      }
      
      public function §@1§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§'!G§.length)
         {
            if(this.§'!G§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§'!G§[this.§'!G§.length] = new Array();
            _loc3_ = this.§'!G§.length - 1;
            this.§'!G§[_loc3_][0] = param1;
            this.§'!G§[_loc3_][1] = 0;
            this.§'!G§[_loc3_][2] = 0;
         }
         this.§'!G§[_loc3_][1] += 1;
         this.§'!G§[_loc3_][2] += param2;
      }
   }
}
