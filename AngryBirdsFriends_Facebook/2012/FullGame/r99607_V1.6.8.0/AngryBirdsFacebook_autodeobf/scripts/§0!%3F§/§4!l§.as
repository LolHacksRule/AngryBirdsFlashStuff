package §0!?§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §4!l§ extends Sprite
   {
      
      private static const §3!x§:int = 1000;
       
      
      private var §&T§:TextField;
      
      private var §5"$§:Boolean;
      
      private var §9H§:int = 0;
      
      private var §%9§:Number = 0;
      
      private var § !r§:Array;
      
      public function §4!l§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§5"$§ = param1;
         if(param1)
         {
            this.§&T§ = new TextField();
            this.§&T§.text = "...";
            this.§&T§.textColor = 16711680;
            this.§&T§.selectable = false;
            this.§&T§.height = 40;
            this.§&T§.width = 150;
            this.§&T§.mouseEnabled = false;
            addChild(this.§&T§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§ !r§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§9H§;
         this.§%9§ += param1;
         if(this.§%9§ >= §3!x§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§%9§ == 0 || this.§9H§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§%9§ * this.§9H§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§ !r§.length)
         {
            if(this.§ !r§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§ !r§[_loc4_][0] + " = " + Math.round(this.§ !r§[_loc4_][2] / this.§ !r§[_loc4_][1]);
            }
            this.§ !r§[_loc4_][1] = 0;
            this.§ !r§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§&T§.text = _loc3_;
         this.§&T§.mouseEnabled = false;
         this.§9H§ = 0;
         this.§%9§ = 0;
      }
      
      public function §!F§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§ !r§.length)
         {
            if(this.§ !r§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§ !r§[this.§ !r§.length] = new Array();
            _loc3_ = this.§ !r§.length - 1;
            this.§ !r§[_loc3_][0] = param1;
            this.§ !r§[_loc3_][1] = 0;
            this.§ !r§[_loc3_][2] = 0;
         }
         this.§ !r§[_loc3_][1] += 1;
         this.§ !r§[_loc3_][2] += param2;
      }
   }
}
