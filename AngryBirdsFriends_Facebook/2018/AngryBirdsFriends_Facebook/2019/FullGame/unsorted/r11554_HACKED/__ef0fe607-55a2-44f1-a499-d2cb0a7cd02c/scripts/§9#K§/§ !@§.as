package §9#K§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class § !@§ extends Sprite
   {
      
      private static const §%C§:int = 1000;
       
      
      private var §]"s§:TextField;
      
      private var §]"F§:Boolean;
      
      private var §1"m§:int = 0;
      
      private var §5,§:Number = 0;
      
      private var §!#^§:Array;
      
      public function § !@§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§]"F§ = param1;
         if(param1)
         {
            this.§]"s§ = new TextField();
            this.§]"s§.text = "...";
            this.§]"s§.textColor = 16711680;
            this.§]"s§.selectable = false;
            this.§]"s§.height = 40;
            this.§]"s§.width = 150;
            this.§]"s§.mouseEnabled = false;
            addChild(this.§]"s§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§!#^§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§1"m§;
         this.§5,§ += param1;
         if(this.§5,§ >= §%C§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§5,§ == 0 || this.§1"m§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§5,§ * this.§1"m§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§!#^§.length)
         {
            if(this.§!#^§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§!#^§[_loc4_][0] + " = " + Math.round(this.§!#^§[_loc4_][2] / this.§!#^§[_loc4_][1]);
            }
            this.§!#^§[_loc4_][1] = 0;
            this.§!#^§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§]"s§.text = _loc3_;
         this.§]"s§.mouseEnabled = false;
         this.§1"m§ = 0;
         this.§5,§ = 0;
      }
      
      public function §`&§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§!#^§.length)
         {
            if(this.§!#^§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§!#^§[this.§!#^§.length] = new Array();
            _loc3_ = this.§!#^§.length - 1;
            this.§!#^§[_loc3_][0] = param1;
            this.§!#^§[_loc3_][1] = 0;
            this.§!#^§[_loc3_][2] = 0;
         }
         this.§!#^§[_loc3_][1] += 1;
         this.§!#^§[_loc3_][2] += param2;
      }
   }
}
