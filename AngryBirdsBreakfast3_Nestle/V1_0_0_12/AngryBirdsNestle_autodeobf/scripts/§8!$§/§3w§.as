package §8!$§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §3w§ extends Sprite
   {
      
      private static const §["!§:int = 1000;
       
      
      private var §6!v§:TextField;
      
      private var §>!]§:Boolean;
      
      private var §'",§:int = 0;
      
      private var §8!T§:Number = 0;
      
      private var §=-§:Array;
      
      public function §3w§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§>!]§ = param1;
         if(param1)
         {
            this.§6!v§ = new TextField();
            this.§6!v§.text = "...";
            this.§6!v§.textColor = 16711680;
            this.§6!v§.selectable = false;
            this.§6!v§.height = 40;
            this.§6!v§.width = 150;
            this.§6!v§.mouseEnabled = false;
            addChild(this.§6!v§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§=-§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§'",§;
         this.§8!T§ += param1;
         if(this.§8!T§ >= §["!§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§8!T§ == 0 || this.§'",§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§8!T§ * this.§'",§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§=-§.length)
         {
            if(this.§=-§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§=-§[_loc4_][0] + " = " + Math.round(this.§=-§[_loc4_][2] / this.§=-§[_loc4_][1]);
            }
            this.§=-§[_loc4_][1] = 0;
            this.§=-§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§6!v§.text = _loc3_;
         this.§6!v§.mouseEnabled = false;
         this.§'",§ = 0;
         this.§8!T§ = 0;
      }
      
      public function §8"+§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§=-§.length)
         {
            if(this.§=-§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§=-§[this.§=-§.length] = new Array();
            _loc3_ = this.§=-§.length - 1;
            this.§=-§[_loc3_][0] = param1;
            this.§=-§[_loc3_][1] = 0;
            this.§=-§[_loc3_][2] = 0;
         }
         this.§=-§[_loc3_][1] += 1;
         this.§=-§[_loc3_][2] += param2;
      }
   }
}
