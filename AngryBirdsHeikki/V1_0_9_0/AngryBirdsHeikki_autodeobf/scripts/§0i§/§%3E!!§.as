package §0i§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §>!!§ extends Sprite
   {
      
      private static const §3!T§:int = 1000;
       
      
      private var §?!§:TextField;
      
      private var §8!X§:Boolean;
      
      private var § =§:int = 0;
      
      private var §@!E§:Number = 0;
      
      private var §>!a§:Array;
      
      public function §>!!§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§8!X§ = param1;
         if(param1)
         {
            this.§?!§ = new TextField();
            this.§?!§.text = "...";
            this.§?!§.textColor = 16711680;
            this.§?!§.selectable = false;
            this.§?!§.height = 40;
            this.§?!§.width = 150;
            this.§?!§.mouseEnabled = false;
            addChild(this.§?!§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§>!a§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§ =§;
         this.§@!E§ += param1;
         if(this.§@!E§ >= §3!T§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§@!E§ == 0 || this.§ =§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§@!E§ * this.§ =§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§>!a§.length)
         {
            if(this.§>!a§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§>!a§[_loc4_][0] + " = " + Math.round(this.§>!a§[_loc4_][2] / this.§>!a§[_loc4_][1]);
            }
            this.§>!a§[_loc4_][1] = 0;
            this.§>!a§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§?!§.text = _loc3_;
         this.§?!§.mouseEnabled = false;
         this.§ =§ = 0;
         this.§@!E§ = 0;
      }
      
      public function §#!§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§>!a§.length)
         {
            if(this.§>!a§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§>!a§[this.§>!a§.length] = new Array();
            _loc3_ = this.§>!a§.length - 1;
            this.§>!a§[_loc3_][0] = param1;
            this.§>!a§[_loc3_][1] = 0;
            this.§>!a§[_loc3_][2] = 0;
         }
         this.§>!a§[_loc3_][1] += 1;
         this.§>!a§[_loc3_][2] += param2;
      }
   }
}
