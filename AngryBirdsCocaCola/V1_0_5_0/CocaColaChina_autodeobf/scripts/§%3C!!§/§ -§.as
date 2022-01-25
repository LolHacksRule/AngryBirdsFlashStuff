package §<!!§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class § -§ extends Sprite
   {
      
      private static const §01§:int = 1000;
       
      
      private var §4!4§:TextField;
      
      private var §5G§:Boolean;
      
      private var §#!W§:int = 0;
      
      private var §3!Q§:Number = 0;
      
      private var §"!>§:Array;
      
      public function § -§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§5G§ = param1;
         if(param1)
         {
            this.§4!4§ = new TextField();
            this.§4!4§.text = "...";
            this.§4!4§.textColor = 16711680;
            this.§4!4§.selectable = false;
            this.§4!4§.height = 40;
            this.§4!4§.width = 150;
            this.§4!4§.mouseEnabled = false;
            addChild(this.§4!4§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§"!>§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§#!W§;
         this.§3!Q§ += param1;
         if(this.§3!Q§ >= §01§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§3!Q§ == 0 || this.§#!W§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§3!Q§ * this.§#!W§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§"!>§.length)
         {
            if(this.§"!>§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§"!>§[_loc4_][0] + " = " + Math.round(this.§"!>§[_loc4_][2] / this.§"!>§[_loc4_][1]);
            }
            this.§"!>§[_loc4_][1] = 0;
            this.§"!>§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§4!4§.text = _loc3_;
         this.§4!4§.mouseEnabled = false;
         this.§#!W§ = 0;
         this.§3!Q§ = 0;
      }
      
      public function §6!Q§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§"!>§.length)
         {
            if(this.§"!>§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§"!>§[this.§"!>§.length] = new Array();
            _loc3_ = this.§"!>§.length - 1;
            this.§"!>§[_loc3_][0] = param1;
            this.§"!>§[_loc3_][1] = 0;
            this.§"!>§[_loc3_][2] = 0;
         }
         this.§"!>§[_loc3_][1] += 1;
         this.§"!>§[_loc3_][2] += param2;
      }
   }
}
