package §1#v§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §]T§ extends Sprite
   {
      
      private static const §,E§:int = 1000;
       
      
      private var §0"H§:TextField;
      
      private var §@"-§:Boolean;
      
      private var §=!r§:int = 0;
      
      private var §6!;§:Number = 0;
      
      private var §6!k§:Array;
      
      public function §]T§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§@"-§ = param1;
         if(param1)
         {
            this.§0"H§ = new TextField();
            this.§0"H§.text = "...";
            this.§0"H§.textColor = 16711680;
            this.§0"H§.selectable = false;
            this.§0"H§.height = 40;
            this.§0"H§.width = 150;
            this.§0"H§.mouseEnabled = false;
            addChild(this.§0"H§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§6!k§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§=!r§;
         this.§6!;§ += param1;
         if(this.§6!;§ >= §,E§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§6!;§ == 0 || this.§=!r§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§6!;§ * this.§=!r§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§6!k§.length)
         {
            if(this.§6!k§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§6!k§[_loc4_][0] + " = " + Math.round(this.§6!k§[_loc4_][2] / this.§6!k§[_loc4_][1]);
            }
            this.§6!k§[_loc4_][1] = 0;
            this.§6!k§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§0"H§.text = _loc3_;
         this.§0"H§.mouseEnabled = false;
         this.§=!r§ = 0;
         this.§6!;§ = 0;
      }
      
      public function §?@§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§6!k§.length)
         {
            if(this.§6!k§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§6!k§[this.§6!k§.length] = new Array();
            _loc3_ = this.§6!k§.length - 1;
            this.§6!k§[_loc3_][0] = param1;
            this.§6!k§[_loc3_][1] = 0;
            this.§6!k§[_loc3_][2] = 0;
         }
         this.§6!k§[_loc3_][1] += 1;
         this.§6!k§[_loc3_][2] += param2;
      }
   }
}
