package §#"3§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §3#u§ extends Sprite
   {
      
      private static const §@+§:int = 1000;
       
      
      private var §"$#§:TextField;
      
      private var §6#F§:Boolean;
      
      private var §1$8§:int = 0;
      
      private var §!!R§:Number = 0;
      
      private var §8"4§:Array;
      
      public function §3#u§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§6#F§ = param1;
         if(param1)
         {
            this.§"$#§ = new TextField();
            this.§"$#§.text = "...";
            this.§"$#§.textColor = 16711680;
            this.§"$#§.selectable = false;
            this.§"$#§.height = 40;
            this.§"$#§.width = 150;
            this.§"$#§.mouseEnabled = false;
            addChild(this.§"$#§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§8"4§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§1$8§;
         this.§!!R§ += param1;
         if(this.§!!R§ >= §@+§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§!!R§ == 0 || this.§1$8§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§!!R§ * this.§1$8§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§8"4§.length)
         {
            if(this.§8"4§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§8"4§[_loc4_][0] + " = " + Math.round(this.§8"4§[_loc4_][2] / this.§8"4§[_loc4_][1]);
            }
            this.§8"4§[_loc4_][1] = 0;
            this.§8"4§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§"$#§.text = _loc3_;
         this.§"$#§.mouseEnabled = false;
         this.§1$8§ = 0;
         this.§!!R§ = 0;
      }
      
      public function §]7§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§8"4§.length)
         {
            if(this.§8"4§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§8"4§[this.§8"4§.length] = new Array();
            _loc3_ = this.§8"4§.length - 1;
            this.§8"4§[_loc3_][0] = param1;
            this.§8"4§[_loc3_][1] = 0;
            this.§8"4§[_loc3_][2] = 0;
         }
         this.§8"4§[_loc3_][1] += 1;
         this.§8"4§[_loc3_][2] += param2;
      }
   }
}
