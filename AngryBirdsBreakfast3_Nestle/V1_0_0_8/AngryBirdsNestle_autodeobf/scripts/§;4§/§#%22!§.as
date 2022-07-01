package §;4§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §#"!§ extends Sprite
   {
      
      private static const §`!0§:int = 1000;
       
      
      private var §8s§:TextField;
      
      private var §'!"§:Boolean;
      
      private var §<!O§:int = 0;
      
      private var §`Y§:Number = 0;
      
      private var §3r§:Array;
      
      public function §#"!§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§'!"§ = param1;
         if(param1)
         {
            this.§8s§ = new TextField();
            this.§8s§.text = "...";
            this.§8s§.textColor = 16711680;
            this.§8s§.selectable = false;
            this.§8s§.height = 40;
            this.§8s§.width = 150;
            this.§8s§.mouseEnabled = false;
            addChild(this.§8s§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§3r§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§<!O§;
         this.§`Y§ += param1;
         if(this.§`Y§ >= §`!0§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§`Y§ == 0 || this.§<!O§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§`Y§ * this.§<!O§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§3r§.length)
         {
            if(this.§3r§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§3r§[_loc4_][0] + " = " + Math.round(this.§3r§[_loc4_][2] / this.§3r§[_loc4_][1]);
            }
            this.§3r§[_loc4_][1] = 0;
            this.§3r§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§8s§.text = _loc3_;
         this.§8s§.mouseEnabled = false;
         this.§<!O§ = 0;
         this.§`Y§ = 0;
      }
      
      public function §`!$§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§3r§.length)
         {
            if(this.§3r§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§3r§[this.§3r§.length] = new Array();
            _loc3_ = this.§3r§.length - 1;
            this.§3r§[_loc3_][0] = param1;
            this.§3r§[_loc3_][1] = 0;
            this.§3r§[_loc3_][2] = 0;
         }
         this.§3r§[_loc3_][1] += 1;
         this.§3r§[_loc3_][2] += param2;
      }
   }
}
