package §+!"§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §3<§ extends Sprite
   {
      
      private static const §-G§:int = 1000;
       
      
      private var §"!%§:TextField;
      
      private var §<Q§:Boolean;
      
      private var §0K§:int = 0;
      
      private var §98§:Number = 0;
      
      private var §"m§:Array;
      
      public function §3<§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§<Q§ = param1;
         if(param1)
         {
            this.§"!%§ = new TextField();
            this.§"!%§.text = "...";
            this.§"!%§.textColor = 16711680;
            this.§"!%§.selectable = false;
            this.§"!%§.height = 40;
            this.§"!%§.width = 150;
            this.§"!%§.mouseEnabled = false;
            addChild(this.§"!%§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§"m§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§0K§;
         this.§98§ += param1;
         if(this.§98§ >= §-G§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§98§ == 0 || this.§0K§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§98§ * this.§0K§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§"m§.length)
         {
            if(this.§"m§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§"m§[_loc4_][0] + " = " + Math.round(this.§"m§[_loc4_][2] / this.§"m§[_loc4_][1]);
            }
            this.§"m§[_loc4_][1] = 0;
            this.§"m§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§"!%§.text = _loc3_;
         this.§"!%§.mouseEnabled = false;
         this.§0K§ = 0;
         this.§98§ = 0;
      }
      
      public function §8!+§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§"m§.length)
         {
            if(this.§"m§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§"m§[this.§"m§.length] = new Array();
            _loc3_ = this.§"m§.length - 1;
            this.§"m§[_loc3_][0] = param1;
            this.§"m§[_loc3_][1] = 0;
            this.§"m§[_loc3_][2] = 0;
         }
         this.§"m§[_loc3_][1] += 1;
         this.§"m§[_loc3_][2] += param2;
      }
   }
}
