package § !r§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §6!o§ extends Sprite
   {
      
      private static const §<!%§:int = 1000;
       
      
      private var §04§:TextField;
      
      private var §3!Y§:Boolean;
      
      private var §2!0§:int = 0;
      
      private var § @§:Number = 0;
      
      private var §^t§:Array;
      
      public function §6!o§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§3!Y§ = param1;
         if(param1)
         {
            this.§04§ = new TextField();
            this.§04§.text = "...";
            this.§04§.textColor = 16711680;
            this.§04§.selectable = false;
            this.§04§.height = 40;
            this.§04§.width = 150;
            this.§04§.mouseEnabled = false;
            addChild(this.§04§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§^t§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§2!0§;
         this.§ @§ += param1;
         if(this.§ @§ >= §<!%§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§ @§ == 0 || this.§2!0§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§ @§ * this.§2!0§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§^t§.length)
         {
            if(this.§^t§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§^t§[_loc4_][0] + " = " + Math.round(this.§^t§[_loc4_][2] / this.§^t§[_loc4_][1]);
            }
            this.§^t§[_loc4_][1] = 0;
            this.§^t§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§04§.text = _loc3_;
         this.§04§.mouseEnabled = false;
         this.§2!0§ = 0;
         this.§ @§ = 0;
      }
      
      public function §;!r§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§^t§.length)
         {
            if(this.§^t§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§^t§[this.§^t§.length] = new Array();
            _loc3_ = this.§^t§.length - 1;
            this.§^t§[_loc3_][0] = param1;
            this.§^t§[_loc3_][1] = 0;
            this.§^t§[_loc3_][2] = 0;
         }
         this.§^t§[_loc3_][1] += 1;
         this.§^t§[_loc3_][2] += param2;
      }
   }
}
