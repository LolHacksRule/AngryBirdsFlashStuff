package §0i§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §]y§ extends Sprite
   {
      
      private static const § M§:int = 1000;
       
      
      private var §6!i§:TextField;
      
      private var §9!d§:Boolean;
      
      private var §?Q§:int = 0;
      
      private var §,!g§:Number = 0;
      
      private var §<!!§:Array;
      
      public function §]y§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§9!d§ = param1;
         if(param1)
         {
            this.§6!i§ = new TextField();
            this.§6!i§.text = "...";
            this.§6!i§.textColor = 16711680;
            this.§6!i§.selectable = false;
            this.§6!i§.height = 40;
            this.§6!i§.width = 150;
            this.§6!i§.mouseEnabled = false;
            addChild(this.§6!i§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§<!!§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§?Q§;
         this.§,!g§ += param1;
         if(this.§,!g§ >= § M§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§,!g§ == 0 || this.§?Q§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§,!g§ * this.§?Q§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§<!!§.length)
         {
            if(this.§<!!§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§<!!§[_loc4_][0] + " = " + Math.round(this.§<!!§[_loc4_][2] / this.§<!!§[_loc4_][1]);
            }
            this.§<!!§[_loc4_][1] = 0;
            this.§<!!§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§6!i§.text = _loc3_;
         this.§6!i§.mouseEnabled = false;
         this.§?Q§ = 0;
         this.§,!g§ = 0;
      }
      
      public function §="§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§<!!§.length)
         {
            if(this.§<!!§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§<!!§[this.§<!!§.length] = new Array();
            _loc3_ = this.§<!!§.length - 1;
            this.§<!!§[_loc3_][0] = param1;
            this.§<!!§[_loc3_][1] = 0;
            this.§<!!§[_loc3_][2] = 0;
         }
         this.§<!!§[_loc3_][1] += 1;
         this.§<!!§[_loc3_][2] += param2;
      }
   }
}
