package §""<§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §0"9§ extends Sprite
   {
      
      private static const § !V§:int = 1000;
       
      
      private var §?"0§:TextField;
      
      private var § each§:Boolean;
      
      private var §;!k§:int = 0;
      
      private var §7F§:Number = 0;
      
      private var §`!%§:Array;
      
      public function §0"9§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§ each§ = param1;
         if(param1)
         {
            this.§?"0§ = new TextField();
            this.§?"0§.text = "...";
            this.§?"0§.textColor = 16711680;
            this.§?"0§.selectable = false;
            this.§?"0§.height = 40;
            this.§?"0§.width = 150;
            this.§?"0§.mouseEnabled = false;
            addChild(this.§?"0§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§`!%§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§;!k§;
         this.§7F§ += param1;
         if(this.§7F§ >= § !V§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§7F§ == 0 || this.§;!k§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§7F§ * this.§;!k§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§`!%§.length)
         {
            if(this.§`!%§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§`!%§[_loc4_][0] + " = " + Math.round(this.§`!%§[_loc4_][2] / this.§`!%§[_loc4_][1]);
            }
            this.§`!%§[_loc4_][1] = 0;
            this.§`!%§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§?"0§.text = _loc3_;
         this.§?"0§.mouseEnabled = false;
         this.§;!k§ = 0;
         this.§7F§ = 0;
      }
      
      public function §^[§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§`!%§.length)
         {
            if(this.§`!%§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§`!%§[this.§`!%§.length] = new Array();
            _loc3_ = this.§`!%§.length - 1;
            this.§`!%§[_loc3_][0] = param1;
            this.§`!%§[_loc3_][1] = 0;
            this.§`!%§[_loc3_][2] = 0;
         }
         this.§`!%§[_loc3_][1] += 1;
         this.§`!%§[_loc3_][2] += param2;
      }
   }
}
