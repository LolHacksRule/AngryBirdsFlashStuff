package §'N§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class FPSMeter extends Sprite
   {
      
      private static const §!!_§:int = 1000;
       
      
      private var §>!S§:TextField;
      
      private var §,7§:Boolean;
      
      private var §=!!§:int = 0;
      
      private var §`!j§:Number = 0;
      
      private var §7Q§:Array;
      
      public function FPSMeter(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§,7§ = param1;
         if(param1)
         {
            this.§>!S§ = new TextField();
            this.§>!S§.text = "...";
            this.§>!S§.textColor = 16711680;
            this.§>!S§.selectable = false;
            this.§>!S§.height = 40;
            this.§>!S§.width = 150;
            this.§>!S§.mouseEnabled = false;
            addChild(this.§>!S§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§7Q§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§=!!§;
         this.§`!j§ += param1;
         if(this.§`!j§ >= §!!_§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§`!j§ == 0 || this.§=!!§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§`!j§ * this.§=!!§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§7Q§.length)
         {
            if(this.§7Q§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§7Q§[_loc4_][0] + " = " + Math.round(this.§7Q§[_loc4_][2] / this.§7Q§[_loc4_][1]);
            }
            this.§7Q§[_loc4_][1] = 0;
            this.§7Q§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§>!S§.text = _loc3_;
         this.§>!S§.mouseEnabled = false;
         this.§=!!§ = 0;
         this.§`!j§ = 0;
      }
      
      public function §@c§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§7Q§.length)
         {
            if(this.§7Q§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§7Q§[this.§7Q§.length] = new Array();
            _loc3_ = this.§7Q§.length - 1;
            this.§7Q§[_loc3_][0] = param1;
            this.§7Q§[_loc3_][1] = 0;
            this.§7Q§[_loc3_][2] = 0;
         }
         this.§7Q§[_loc3_][1] += 1;
         this.§7Q§[_loc3_][2] += param2;
      }
   }
}
