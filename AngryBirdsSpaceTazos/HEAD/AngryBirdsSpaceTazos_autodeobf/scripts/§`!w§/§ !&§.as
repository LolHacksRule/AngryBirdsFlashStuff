package §`!w§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class § !&§ extends Sprite
   {
      
      private static const §&!I§:int = 1000;
       
      
      private var §'S§:TextField;
      
      private var §@!h§:Boolean;
      
      private var §9";§:int = 0;
      
      private var §=!G§:Number = 0;
      
      private var §+]§:Array;
      
      public function § !&§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§@!h§ = param1;
         if(param1)
         {
            this.§'S§ = new TextField();
            this.§'S§.text = "...";
            this.§'S§.textColor = 16711680;
            this.§'S§.selectable = false;
            this.§'S§.height = 40;
            this.§'S§.width = 150;
            this.§'S§.mouseEnabled = false;
            addChild(this.§'S§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§+]§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§9";§;
         this.§=!G§ += param1;
         if(this.§=!G§ >= §&!I§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§=!G§ == 0 || this.§9";§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§=!G§ * this.§9";§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§+]§.length)
         {
            if(this.§+]§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§+]§[_loc4_][0] + " = " + Math.round(this.§+]§[_loc4_][2] / this.§+]§[_loc4_][1]);
            }
            this.§+]§[_loc4_][1] = 0;
            this.§+]§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§'S§.text = _loc3_;
         this.§'S§.mouseEnabled = false;
         this.§9";§ = 0;
         this.§=!G§ = 0;
      }
      
      public function §2@§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§+]§.length)
         {
            if(this.§+]§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§+]§[this.§+]§.length] = new Array();
            _loc3_ = this.§+]§.length - 1;
            this.§+]§[_loc3_][0] = param1;
            this.§+]§[_loc3_][1] = 0;
            this.§+]§[_loc3_][2] = 0;
         }
         this.§+]§[_loc3_][1] += 1;
         this.§+]§[_loc3_][2] += param2;
      }
   }
}
