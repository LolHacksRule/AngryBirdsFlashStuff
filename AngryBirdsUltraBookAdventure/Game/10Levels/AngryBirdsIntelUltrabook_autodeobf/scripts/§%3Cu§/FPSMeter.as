package §<u§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class FPSMeter extends Sprite
   {
      
      private static const §<r§:int = 1000;
       
      
      private var §-g§:TextField;
      
      private var §5'§:Boolean;
      
      private var §3!_§:int = 0;
      
      private var §!v§:Number = 0;
      
      private var §9!E§:Array;
      
      public function FPSMeter(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§5'§ = param1;
         if(param1)
         {
            this.§-g§ = new TextField();
            this.§-g§.text = "...";
            this.§-g§.textColor = 16711680;
            this.§-g§.selectable = false;
            this.§-g§.height = 40;
            this.§-g§.width = 150;
            this.§-g§.mouseEnabled = false;
            addChild(this.§-g§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§9!E§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§3!_§;
         this.§!v§ += param1;
         if(this.§!v§ >= §<r§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§!v§ == 0 || this.§3!_§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§!v§ * this.§3!_§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§9!E§.length)
         {
            if(this.§9!E§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§9!E§[_loc4_][0] + " = " + Math.round(this.§9!E§[_loc4_][2] / this.§9!E§[_loc4_][1]);
            }
            this.§9!E§[_loc4_][1] = 0;
            this.§9!E§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§-g§.text = _loc3_;
         this.§-g§.mouseEnabled = false;
         this.§3!_§ = 0;
         this.§!v§ = 0;
      }
      
      public function §=<§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§9!E§.length)
         {
            if(this.§9!E§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§9!E§[this.§9!E§.length] = new Array();
            _loc3_ = this.§9!E§.length - 1;
            this.§9!E§[_loc3_][0] = param1;
            this.§9!E§[_loc3_][1] = 0;
            this.§9!E§[_loc3_][2] = 0;
         }
         this.§9!E§[_loc3_][1] += 1;
         this.§9!E§[_loc3_][2] += param2;
      }
   }
}
