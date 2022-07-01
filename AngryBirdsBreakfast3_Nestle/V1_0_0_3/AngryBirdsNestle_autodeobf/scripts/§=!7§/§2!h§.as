package §=!7§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §2!h§ extends Sprite
   {
      
      private static const §]"&§:int = 1000;
       
      
      private var §&E§:TextField;
      
      private var §7!F§:Boolean;
      
      private var §7;§:int = 0;
      
      private var §%,§:Number = 0;
      
      private var §"D§:Array;
      
      public function §2!h§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§7!F§ = param1;
         if(param1)
         {
            this.§&E§ = new TextField();
            this.§&E§.text = "...";
            this.§&E§.textColor = 16711680;
            this.§&E§.selectable = false;
            this.§&E§.height = 40;
            this.§&E§.width = 150;
            this.§&E§.mouseEnabled = false;
            addChild(this.§&E§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§"D§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§7;§;
         this.§%,§ += param1;
         if(this.§%,§ >= §]"&§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§%,§ == 0 || this.§7;§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§%,§ * this.§7;§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§"D§.length)
         {
            if(this.§"D§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§"D§[_loc4_][0] + " = " + Math.round(this.§"D§[_loc4_][2] / this.§"D§[_loc4_][1]);
            }
            this.§"D§[_loc4_][1] = 0;
            this.§"D§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§&E§.text = _loc3_;
         this.§&E§.mouseEnabled = false;
         this.§7;§ = 0;
         this.§%,§ = 0;
      }
      
      public function §1z§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§"D§.length)
         {
            if(this.§"D§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§"D§[this.§"D§.length] = new Array();
            _loc3_ = this.§"D§.length - 1;
            this.§"D§[_loc3_][0] = param1;
            this.§"D§[_loc3_][1] = 0;
            this.§"D§[_loc3_][2] = 0;
         }
         this.§"D§[_loc3_][1] += 1;
         this.§"D§[_loc3_][2] += param2;
      }
   }
}
