package § !Q§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §-T§ extends Sprite
   {
      
      private static const §0!y§:int = 1000;
       
      
      private var §=!E§:TextField;
      
      private var §9" §:Boolean;
      
      private var §=!n§:int = 0;
      
      private var §6"&§:Number = 0;
      
      private var §`"2§:Array;
      
      public function §-T§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§9" § = param1;
         if(param1)
         {
            this.§=!E§ = new TextField();
            this.§=!E§.text = "...";
            this.§=!E§.textColor = 16711680;
            this.§=!E§.selectable = false;
            this.§=!E§.height = 40;
            this.§=!E§.width = 150;
            this.§=!E§.mouseEnabled = false;
            addChild(this.§=!E§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§`"2§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§=!n§;
         this.§6"&§ += param1;
         if(this.§6"&§ >= §0!y§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§6"&§ == 0 || this.§=!n§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§6"&§ * this.§=!n§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§`"2§.length)
         {
            if(this.§`"2§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§`"2§[_loc4_][0] + " = " + Math.round(this.§`"2§[_loc4_][2] / this.§`"2§[_loc4_][1]);
            }
            this.§`"2§[_loc4_][1] = 0;
            this.§`"2§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§=!E§.text = _loc3_;
         this.§=!E§.mouseEnabled = false;
         this.§=!n§ = 0;
         this.§6"&§ = 0;
      }
      
      public function §&!'§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§`"2§.length)
         {
            if(this.§`"2§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§`"2§[this.§`"2§.length] = new Array();
            _loc3_ = this.§`"2§.length - 1;
            this.§`"2§[_loc3_][0] = param1;
            this.§`"2§[_loc3_][1] = 0;
            this.§`"2§[_loc3_][2] = 0;
         }
         this.§`"2§[_loc3_][1] += 1;
         this.§`"2§[_loc3_][2] += param2;
      }
   }
}
