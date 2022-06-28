package §"x§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §2w§ extends Sprite
   {
      
      private static const §0^§:int = 1000;
       
      
      private var §=_§:TextField;
      
      private var §,!@§:Boolean;
      
      private var § Z§:int = 0;
      
      private var §3!A§:Number = 0;
      
      private var §7v§:Array;
      
      public function §2w§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§,!@§ = param1;
         if(param1)
         {
            this.§=_§ = new TextField();
            this.§=_§.text = "...";
            this.§=_§.textColor = 16711680;
            this.§=_§.selectable = false;
            this.§=_§.height = 40;
            this.§=_§.width = 150;
            this.§=_§.mouseEnabled = false;
            addChild(this.§=_§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§7v§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§ Z§;
         this.§3!A§ += param1;
         if(this.§3!A§ >= §0^§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§3!A§ == 0 || this.§ Z§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§3!A§ * this.§ Z§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§7v§.length)
         {
            if(this.§7v§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§7v§[_loc4_][0] + " = " + Math.round(this.§7v§[_loc4_][2] / this.§7v§[_loc4_][1]);
            }
            this.§7v§[_loc4_][1] = 0;
            this.§7v§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§=_§.text = _loc3_;
         this.§=_§.mouseEnabled = false;
         this.§ Z§ = 0;
         this.§3!A§ = 0;
      }
      
      public function §`^§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§7v§.length)
         {
            if(this.§7v§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§7v§[this.§7v§.length] = new Array();
            _loc3_ = this.§7v§.length - 1;
            this.§7v§[_loc3_][0] = param1;
            this.§7v§[_loc3_][1] = 0;
            this.§7v§[_loc3_][2] = 0;
         }
         this.§7v§[_loc3_][1] += 1;
         this.§7v§[_loc3_][2] += param2;
      }
   }
}
