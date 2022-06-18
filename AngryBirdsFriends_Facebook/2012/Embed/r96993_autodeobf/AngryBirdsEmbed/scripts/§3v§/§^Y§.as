package §3v§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §^Y§ extends Sprite
   {
      
      private static const §@,§:int = 1000;
       
      
      private var §%K§:TextField;
      
      private var §+&§:Boolean;
      
      private var §#@§:int = 0;
      
      private var §for§:Number = 0;
      
      private var §1n§:Array;
      
      public function §^Y§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§+&§ = param1;
         if(param1)
         {
            this.§%K§ = new TextField();
            this.§%K§.text = "...";
            this.§%K§.textColor = 16711680;
            this.§%K§.selectable = false;
            this.§%K§.height = 40;
            this.§%K§.width = 150;
            this.§%K§.mouseEnabled = false;
            addChild(this.§%K§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§1n§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§#@§;
         this.§for§ += param1;
         if(this.§for§ >= §@,§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§for§ == 0 || this.§#@§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§for§ * this.§#@§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§1n§.length)
         {
            if(this.§1n§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§1n§[_loc4_][0] + " = " + Math.round(this.§1n§[_loc4_][2] / this.§1n§[_loc4_][1]);
            }
            this.§1n§[_loc4_][1] = 0;
            this.§1n§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§%K§.text = _loc3_;
         this.§%K§.mouseEnabled = false;
         this.§#@§ = 0;
         this.§for§ = 0;
      }
      
      public function §"!"§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§1n§.length)
         {
            if(this.§1n§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§1n§[this.§1n§.length] = new Array();
            _loc3_ = this.§1n§.length - 1;
            this.§1n§[_loc3_][0] = param1;
            this.§1n§[_loc3_][1] = 0;
            this.§1n§[_loc3_][2] = 0;
         }
         this.§1n§[_loc3_][1] += 1;
         this.§1n§[_loc3_][2] += param2;
      }
   }
}
