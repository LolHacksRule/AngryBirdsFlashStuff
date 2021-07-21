package §>^§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §9!<§ extends Sprite
   {
      
      private static const §=!_§:int = 1000;
       
      
      private var §=!b§:TextField;
      
      private var §9!Z§:Boolean;
      
      private var §?!R§:int = 0;
      
      private var §!!^§:Number = 0;
      
      private var §>]§:Array;
      
      public function §9!<§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§9!Z§ = param1;
         if(param1)
         {
            this.§=!b§ = new TextField();
            this.§=!b§.text = "...";
            this.§=!b§.textColor = 16711680;
            this.§=!b§.selectable = false;
            this.§=!b§.height = 40;
            this.§=!b§.width = 150;
            this.§=!b§.mouseEnabled = false;
            addChild(this.§=!b§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§>]§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§?!R§;
         this.§!!^§ += param1;
         if(this.§!!^§ >= §=!_§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§!!^§ == 0 || this.§?!R§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§!!^§ * this.§?!R§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§>]§.length)
         {
            if(this.§>]§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§>]§[_loc4_][0] + " = " + Math.round(this.§>]§[_loc4_][2] / this.§>]§[_loc4_][1]);
            }
            this.§>]§[_loc4_][1] = 0;
            this.§>]§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§=!b§.text = _loc3_;
         this.§=!b§.mouseEnabled = false;
         this.§?!R§ = 0;
         this.§!!^§ = 0;
      }
      
      public function §[!=§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§>]§.length)
         {
            if(this.§>]§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§>]§[this.§>]§.length] = new Array();
            _loc3_ = this.§>]§.length - 1;
            this.§>]§[_loc3_][0] = param1;
            this.§>]§[_loc3_][1] = 0;
            this.§>]§[_loc3_][2] = 0;
         }
         this.§>]§[_loc3_][1] += 1;
         this.§>]§[_loc3_][2] += param2;
      }
   }
}
