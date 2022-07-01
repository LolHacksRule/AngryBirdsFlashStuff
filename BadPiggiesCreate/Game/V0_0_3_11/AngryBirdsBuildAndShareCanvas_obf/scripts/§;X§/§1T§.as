package §;X§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §1T§ extends Sprite
   {
      
      private static const §@!F§:int = 1000;
       
      
      private var §3"2§:TextField;
      
      private var §%i§:Boolean;
      
      private var §[?§:int = 0;
      
      private var §92§:Number = 0;
      
      private var §2!V§:Array;
      
      public function §1T§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§%i§ = param1;
         if(param1)
         {
            this.§3"2§ = new TextField();
            this.§3"2§.text = "...";
            this.§3"2§.textColor = 16711680;
            this.§3"2§.selectable = false;
            this.§3"2§.height = 40;
            this.§3"2§.width = 150;
            this.§3"2§.mouseEnabled = false;
            addChild(this.§3"2§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§2!V§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§[?§;
         this.§92§ += param1;
         if(this.§92§ >= §@!F§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§92§ == 0 || this.§[?§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§92§ * this.§[?§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§2!V§.length)
         {
            if(this.§2!V§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§2!V§[_loc4_][0] + " = " + Math.round(this.§2!V§[_loc4_][2] / this.§2!V§[_loc4_][1]);
            }
            this.§2!V§[_loc4_][1] = 0;
            this.§2!V§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§3"2§.text = _loc3_;
         this.§3"2§.mouseEnabled = false;
         this.§[?§ = 0;
         this.§92§ = 0;
      }
      
      public function §?!=§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§2!V§.length)
         {
            if(this.§2!V§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§2!V§[this.§2!V§.length] = new Array();
            _loc3_ = this.§2!V§.length - 1;
            this.§2!V§[_loc3_][0] = param1;
            this.§2!V§[_loc3_][1] = 0;
            this.§2!V§[_loc3_][2] = 0;
         }
         this.§2!V§[_loc3_][1] += 1;
         this.§2!V§[_loc3_][2] += param2;
      }
   }
}
