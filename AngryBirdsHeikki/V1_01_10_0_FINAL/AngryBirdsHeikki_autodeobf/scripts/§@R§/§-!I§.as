package §@R§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §-!I§ extends Sprite
   {
      
      private static const §+n§:int = 1000;
       
      
      private var §4!;§:TextField;
      
      private var §!!Z§:Boolean;
      
      private var §;!=§:int = 0;
      
      private var §1!S§:Number = 0;
      
      private var §&d§:Array;
      
      public function §-!I§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§!!Z§ = param1;
         if(param1)
         {
            this.§4!;§ = new TextField();
            this.§4!;§.text = "...";
            this.§4!;§.textColor = 16711680;
            this.§4!;§.selectable = false;
            this.§4!;§.height = 40;
            this.§4!;§.width = 150;
            this.§4!;§.mouseEnabled = false;
            addChild(this.§4!;§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§&d§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§;!=§;
         this.§1!S§ += param1;
         if(this.§1!S§ >= §+n§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§1!S§ == 0 || this.§;!=§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§1!S§ * this.§;!=§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§&d§.length)
         {
            if(this.§&d§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§&d§[_loc4_][0] + " = " + Math.round(this.§&d§[_loc4_][2] / this.§&d§[_loc4_][1]);
            }
            this.§&d§[_loc4_][1] = 0;
            this.§&d§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§4!;§.text = _loc3_;
         this.§4!;§.mouseEnabled = false;
         this.§;!=§ = 0;
         this.§1!S§ = 0;
      }
      
      public function §"!Y§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§&d§.length)
         {
            if(this.§&d§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§&d§[this.§&d§.length] = new Array();
            _loc3_ = this.§&d§.length - 1;
            this.§&d§[_loc3_][0] = param1;
            this.§&d§[_loc3_][1] = 0;
            this.§&d§[_loc3_][2] = 0;
         }
         this.§&d§[_loc3_][1] += 1;
         this.§&d§[_loc3_][2] += param2;
      }
   }
}
