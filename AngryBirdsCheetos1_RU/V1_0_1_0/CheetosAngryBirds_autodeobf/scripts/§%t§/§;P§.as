package §%t§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §;P§ extends Sprite
   {
      
      private static const §>h§:int = 1000;
       
      
      private var §+k§:TextField;
      
      private var §-!V§:Boolean;
      
      private var §=C§:int = 0;
      
      private var §+!H§:Number = 0;
      
      private var §23§:Array;
      
      public function §;P§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§-!V§ = param1;
         if(param1)
         {
            this.§+k§ = new TextField();
            this.§+k§.text = "...";
            this.§+k§.textColor = 16711680;
            this.§+k§.selectable = false;
            this.§+k§.height = 40;
            this.§+k§.width = 150;
            this.§+k§.mouseEnabled = false;
            addChild(this.§+k§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§23§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§=C§;
         this.§+!H§ += param1;
         if(this.§+!H§ >= §>h§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§+!H§ == 0 || this.§=C§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§+!H§ * this.§=C§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§23§.length)
         {
            if(this.§23§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§23§[_loc4_][0] + " = " + Math.round(this.§23§[_loc4_][2] / this.§23§[_loc4_][1]);
            }
            this.§23§[_loc4_][1] = 0;
            this.§23§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§+k§.text = _loc3_;
         this.§+k§.mouseEnabled = false;
         this.§=C§ = 0;
         this.§+!H§ = 0;
      }
      
      public function §0!0§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§23§.length)
         {
            if(this.§23§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§23§[this.§23§.length] = new Array();
            _loc3_ = this.§23§.length - 1;
            this.§23§[_loc3_][0] = param1;
            this.§23§[_loc3_][1] = 0;
            this.§23§[_loc3_][2] = 0;
         }
         this.§23§[_loc3_][1] += 1;
         this.§23§[_loc3_][2] += param2;
      }
   }
}
