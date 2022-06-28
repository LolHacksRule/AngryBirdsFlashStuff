package §2§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §#b§ extends Sprite
   {
      
      private static const §@a§:int = 1000;
       
      
      private var §@!5§:TextField;
      
      private var §<!$§:Boolean;
      
      private var §9+§:int = 0;
      
      private var §1!E§:Number = 0;
      
      private var §5#§:Array;
      
      public function §#b§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§<!$§ = param1;
         if(param1)
         {
            this.§@!5§ = new TextField();
            this.§@!5§.text = "...";
            this.§@!5§.textColor = 16711680;
            this.§@!5§.selectable = false;
            this.§@!5§.height = 40;
            this.§@!5§.width = 150;
            this.§@!5§.mouseEnabled = false;
            addChild(this.§@!5§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§5#§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§9+§;
         this.§1!E§ += param1;
         if(this.§1!E§ >= §@a§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§1!E§ == 0 || this.§9+§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§1!E§ * this.§9+§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§5#§.length)
         {
            if(this.§5#§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§5#§[_loc4_][0] + " = " + Math.round(this.§5#§[_loc4_][2] / this.§5#§[_loc4_][1]);
            }
            this.§5#§[_loc4_][1] = 0;
            this.§5#§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§@!5§.text = _loc3_;
         this.§@!5§.mouseEnabled = false;
         this.§9+§ = 0;
         this.§1!E§ = 0;
      }
      
      public function §2B§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§5#§.length)
         {
            if(this.§5#§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§5#§[this.§5#§.length] = new Array();
            _loc3_ = this.§5#§.length - 1;
            this.§5#§[_loc3_][0] = param1;
            this.§5#§[_loc3_][1] = 0;
            this.§5#§[_loc3_][2] = 0;
         }
         this.§5#§[_loc3_][1] += 1;
         this.§5#§[_loc3_][2] += param2;
      }
   }
}
