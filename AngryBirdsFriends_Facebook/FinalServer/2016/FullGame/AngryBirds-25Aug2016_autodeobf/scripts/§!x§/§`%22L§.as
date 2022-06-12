package §!x§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §`"L§ extends Sprite
   {
      
      private static const §<$;§:int = 1000;
       
      
      private var §8#'§:TextField;
      
      private var §?!S§:Boolean;
      
      private var §!$<§:int = 0;
      
      private var §#$0§:Number = 0;
      
      private var §!#8§:Array;
      
      public function §`"L§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§?!S§ = param1;
         if(param1)
         {
            this.§8#'§ = new TextField();
            this.§8#'§.text = "...";
            this.§8#'§.textColor = 16711680;
            this.§8#'§.selectable = false;
            this.§8#'§.height = 40;
            this.§8#'§.width = 150;
            this.§8#'§.mouseEnabled = false;
            addChild(this.§8#'§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§!#8§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§!$<§;
         this.§#$0§ += param1;
         if(this.§#$0§ >= §<$;§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§#$0§ == 0 || this.§!$<§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§#$0§ * this.§!$<§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§!#8§.length)
         {
            if(this.§!#8§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§!#8§[_loc4_][0] + " = " + Math.round(this.§!#8§[_loc4_][2] / this.§!#8§[_loc4_][1]);
            }
            this.§!#8§[_loc4_][1] = 0;
            this.§!#8§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§8#'§.text = _loc3_;
         this.§8#'§.mouseEnabled = false;
         this.§!$<§ = 0;
         this.§#$0§ = 0;
      }
      
      public function §^B§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§!#8§.length)
         {
            if(this.§!#8§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§!#8§[this.§!#8§.length] = new Array();
            _loc3_ = this.§!#8§.length - 1;
            this.§!#8§[_loc3_][0] = param1;
            this.§!#8§[_loc3_][1] = 0;
            this.§!#8§[_loc3_][2] = 0;
         }
         this.§!#8§[_loc3_][1] += 1;
         this.§!#8§[_loc3_][2] += param2;
      }
   }
}
