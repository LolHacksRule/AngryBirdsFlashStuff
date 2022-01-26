package §'m§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §]y§ extends Sprite
   {
      
      private static const §`B§:int = 1000;
       
      
      private var §"!,§:TextField;
      
      private var §-%§:Boolean;
      
      private var §"f§:int = 0;
      
      private var §;!8§:Number = 0;
      
      private var §0s§:Array;
      
      public function §]y§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§-%§ = param1;
         if(param1)
         {
            this.§"!,§ = new TextField();
            this.§"!,§.text = "...";
            this.§"!,§.textColor = 16711680;
            this.§"!,§.selectable = false;
            this.§"!,§.height = 40;
            this.§"!,§.width = 150;
            this.§"!,§.mouseEnabled = false;
            addChild(this.§"!,§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§0s§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§"f§;
         this.§;!8§ += param1;
         if(this.§;!8§ >= §`B§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§;!8§ == 0 || this.§"f§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§;!8§ * this.§"f§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§0s§.length)
         {
            if(this.§0s§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§0s§[_loc4_][0] + " = " + Math.round(this.§0s§[_loc4_][2] / this.§0s§[_loc4_][1]);
            }
            this.§0s§[_loc4_][1] = 0;
            this.§0s§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§"!,§.text = _loc3_;
         this.§"!,§.mouseEnabled = false;
         this.§"f§ = 0;
         this.§;!8§ = 0;
      }
      
      public function §4D§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§0s§.length)
         {
            if(this.§0s§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§0s§[this.§0s§.length] = new Array();
            _loc3_ = this.§0s§.length - 1;
            this.§0s§[_loc3_][0] = param1;
            this.§0s§[_loc3_][1] = 0;
            this.§0s§[_loc3_][2] = 0;
         }
         this.§0s§[_loc3_][1] += 1;
         this.§0s§[_loc3_][2] += param2;
      }
   }
}
