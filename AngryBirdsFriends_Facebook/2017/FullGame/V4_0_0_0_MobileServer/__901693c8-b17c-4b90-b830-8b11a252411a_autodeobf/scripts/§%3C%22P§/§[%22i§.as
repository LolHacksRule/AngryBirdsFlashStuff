package §<"p§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §["i§ extends Sprite
   {
      
      private static const §^"m§:int = 1000;
       
      
      private var §2!,§:TextField;
      
      private var §9!M§:Boolean;
      
      private var §?#D§:int = 0;
      
      private var §0"u§:Number = 0;
      
      private var §;F§:Array;
      
      public function §["i§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§9!M§ = param1;
         if(param1)
         {
            this.§2!,§ = new TextField();
            this.§2!,§.text = "...";
            this.§2!,§.textColor = 16711680;
            this.§2!,§.selectable = false;
            this.§2!,§.height = 40;
            this.§2!,§.width = 150;
            this.§2!,§.mouseEnabled = false;
            addChild(this.§2!,§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§;F§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§?#D§;
         this.§0"u§ += param1;
         if(this.§0"u§ >= §^"m§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§0"u§ == 0 || this.§?#D§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§0"u§ * this.§?#D§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§;F§.length)
         {
            if(this.§;F§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§;F§[_loc4_][0] + " = " + Math.round(this.§;F§[_loc4_][2] / this.§;F§[_loc4_][1]);
            }
            this.§;F§[_loc4_][1] = 0;
            this.§;F§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§2!,§.text = _loc3_;
         this.§2!,§.mouseEnabled = false;
         this.§?#D§ = 0;
         this.§0"u§ = 0;
      }
      
      public function §1"_§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§;F§.length)
         {
            if(this.§;F§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§;F§[this.§;F§.length] = new Array();
            _loc3_ = this.§;F§.length - 1;
            this.§;F§[_loc3_][0] = param1;
            this.§;F§[_loc3_][1] = 0;
            this.§;F§[_loc3_][2] = 0;
         }
         this.§;F§[_loc3_][1] += 1;
         this.§;F§[_loc3_][2] += param2;
      }
   }
}
