package §9H§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §5!D§ extends Sprite
   {
      
      private static const §5!<§:int = 1000;
       
      
      private var §+'§:TextField;
      
      private var §^u§:Boolean;
      
      private var §1I§:int = 0;
      
      private var §5k§:Number = 0;
      
      private var §`!#§:Array;
      
      public function §5!D§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§^u§ = param1;
         if(param1)
         {
            this.§+'§ = new TextField();
            this.§+'§.text = "...";
            this.§+'§.textColor = 16711680;
            this.§+'§.selectable = false;
            this.§+'§.height = 40;
            this.§+'§.width = 150;
            this.§+'§.mouseEnabled = false;
            addChild(this.§+'§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§`!#§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§1I§;
         this.§5k§ += param1;
         if(this.§5k§ >= §5!<§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§5k§ == 0 || this.§1I§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§5k§ * this.§1I§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§`!#§.length)
         {
            if(this.§`!#§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§`!#§[_loc4_][0] + " = " + Math.round(this.§`!#§[_loc4_][2] / this.§`!#§[_loc4_][1]);
            }
            this.§`!#§[_loc4_][1] = 0;
            this.§`!#§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§+'§.text = _loc3_;
         this.§+'§.mouseEnabled = false;
         this.§1I§ = 0;
         this.§5k§ = 0;
      }
      
      public function §&K§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§`!#§.length)
         {
            if(this.§`!#§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§`!#§[this.§`!#§.length] = new Array();
            _loc3_ = this.§`!#§.length - 1;
            this.§`!#§[_loc3_][0] = param1;
            this.§`!#§[_loc3_][1] = 0;
            this.§`!#§[_loc3_][2] = 0;
         }
         this.§`!#§[_loc3_][1] += 1;
         this.§`!#§[_loc3_][2] += param2;
      }
   }
}
