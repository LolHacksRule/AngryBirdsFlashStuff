package §'!G§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §@1§ extends Sprite
   {
      
      private static const §>U§:int = 1000;
       
      
      private var §&Q§:TextField;
      
      private var §"]§:Boolean;
      
      private var §1!V§:int = 0;
      
      private var §,d§:Number = 0;
      
      private var §9O§:Array;
      
      public function §@1§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§"]§ = param1;
         if(param1)
         {
            this.§&Q§ = new TextField();
            this.§&Q§.text = "...";
            this.§&Q§.textColor = 16711680;
            this.§&Q§.selectable = false;
            this.§&Q§.height = 40;
            this.§&Q§.width = 150;
            this.§&Q§.mouseEnabled = false;
            addChild(this.§&Q§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§9O§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§1!V§;
         this.§,d§ += param1;
         if(this.§,d§ >= §>U§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§,d§ == 0 || this.§1!V§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§,d§ * this.§1!V§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§9O§.length)
         {
            if(this.§9O§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§9O§[_loc4_][0] + " = " + Math.round(this.§9O§[_loc4_][2] / this.§9O§[_loc4_][1]);
            }
            this.§9O§[_loc4_][1] = 0;
            this.§9O§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§&Q§.text = _loc3_;
         this.§&Q§.mouseEnabled = false;
         this.§1!V§ = 0;
         this.§,d§ = 0;
      }
      
      public function §<!B§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§9O§.length)
         {
            if(this.§9O§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§9O§[this.§9O§.length] = new Array();
            _loc3_ = this.§9O§.length - 1;
            this.§9O§[_loc3_][0] = param1;
            this.§9O§[_loc3_][1] = 0;
            this.§9O§[_loc3_][2] = 0;
         }
         this.§9O§[_loc3_][1] += 1;
         this.§9O§[_loc3_][2] += param2;
      }
   }
}
