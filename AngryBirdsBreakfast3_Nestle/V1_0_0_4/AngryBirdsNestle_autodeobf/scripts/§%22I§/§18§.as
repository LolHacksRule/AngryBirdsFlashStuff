package §"I§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §18§ extends Sprite
   {
      
      private static const §-C§:int = 1000;
       
      
      private var §&!z§:TextField;
      
      private var §5! §:Boolean;
      
      private var §^E§:int = 0;
      
      private var §-U§:Number = 0;
      
      private var §'i§:Array;
      
      public function §18§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§5! § = param1;
         if(param1)
         {
            this.§&!z§ = new TextField();
            this.§&!z§.text = "...";
            this.§&!z§.textColor = 16711680;
            this.§&!z§.selectable = false;
            this.§&!z§.height = 40;
            this.§&!z§.width = 150;
            this.§&!z§.mouseEnabled = false;
            addChild(this.§&!z§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§'i§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§^E§;
         this.§-U§ += param1;
         if(this.§-U§ >= §-C§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§-U§ == 0 || this.§^E§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§-U§ * this.§^E§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§'i§.length)
         {
            if(this.§'i§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§'i§[_loc4_][0] + " = " + Math.round(this.§'i§[_loc4_][2] / this.§'i§[_loc4_][1]);
            }
            this.§'i§[_loc4_][1] = 0;
            this.§'i§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§&!z§.text = _loc3_;
         this.§&!z§.mouseEnabled = false;
         this.§^E§ = 0;
         this.§-U§ = 0;
      }
      
      public function § !L§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§'i§.length)
         {
            if(this.§'i§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§'i§[this.§'i§.length] = new Array();
            _loc3_ = this.§'i§.length - 1;
            this.§'i§[_loc3_][0] = param1;
            this.§'i§[_loc3_][1] = 0;
            this.§'i§[_loc3_][2] = 0;
         }
         this.§'i§[_loc3_][1] += 1;
         this.§'i§[_loc3_][2] += param2;
      }
   }
}
