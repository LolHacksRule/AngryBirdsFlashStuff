package § !3§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §%! § extends Sprite
   {
      
      private static const §8!B§:int = 1000;
       
      
      private var §"R§:TextField;
      
      private var §^8§:Boolean;
      
      private var §3!@§:int = 0;
      
      private var §,!B§:Number = 0;
      
      private var §`t§:Array;
      
      public function §%! §(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§^8§ = param1;
         if(param1)
         {
            this.§"R§ = new TextField();
            this.§"R§.text = "...";
            this.§"R§.textColor = 16711680;
            this.§"R§.selectable = false;
            this.§"R§.height = 40;
            this.§"R§.width = 150;
            this.§"R§.mouseEnabled = false;
            addChild(this.§"R§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§`t§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§3!@§;
         this.§,!B§ += param1;
         if(this.§,!B§ >= §8!B§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§,!B§ == 0 || this.§3!@§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§,!B§ * this.§3!@§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§`t§.length)
         {
            if(this.§`t§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§`t§[_loc4_][0] + " = " + Math.round(this.§`t§[_loc4_][2] / this.§`t§[_loc4_][1]);
            }
            this.§`t§[_loc4_][1] = 0;
            this.§`t§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§"R§.text = _loc3_;
         this.§"R§.mouseEnabled = false;
         this.§3!@§ = 0;
         this.§,!B§ = 0;
      }
      
      public function §3!S§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§`t§.length)
         {
            if(this.§`t§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§`t§[this.§`t§.length] = new Array();
            _loc3_ = this.§`t§.length - 1;
            this.§`t§[_loc3_][0] = param1;
            this.§`t§[_loc3_][1] = 0;
            this.§`t§[_loc3_][2] = 0;
         }
         this.§`t§[_loc3_][1] += 1;
         this.§`t§[_loc3_][2] += param2;
      }
   }
}
