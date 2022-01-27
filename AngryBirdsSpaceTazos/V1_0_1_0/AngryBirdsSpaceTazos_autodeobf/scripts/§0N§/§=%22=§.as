package §0N§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §="=§ extends Sprite
   {
      
      private static const §&">§:int = 1000;
       
      
      private var §1!a§:TextField;
      
      private var §'!B§:Boolean;
      
      private var §5![§:int = 0;
      
      private var §,!c§:Number = 0;
      
      private var §5!K§:Array;
      
      public function §="=§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§'!B§ = param1;
         if(param1)
         {
            this.§1!a§ = new TextField();
            this.§1!a§.text = "...";
            this.§1!a§.textColor = 16711680;
            this.§1!a§.selectable = false;
            this.§1!a§.height = 40;
            this.§1!a§.width = 150;
            this.§1!a§.mouseEnabled = false;
            addChild(this.§1!a§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§5!K§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§5![§;
         this.§,!c§ += param1;
         if(this.§,!c§ >= §&">§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§,!c§ == 0 || this.§5![§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§,!c§ * this.§5![§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§5!K§.length)
         {
            if(this.§5!K§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§5!K§[_loc4_][0] + " = " + Math.round(this.§5!K§[_loc4_][2] / this.§5!K§[_loc4_][1]);
            }
            this.§5!K§[_loc4_][1] = 0;
            this.§5!K§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§1!a§.text = _loc3_;
         this.§1!a§.mouseEnabled = false;
         this.§5![§ = 0;
         this.§,!c§ = 0;
      }
      
      public function §&B§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§5!K§.length)
         {
            if(this.§5!K§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§5!K§[this.§5!K§.length] = new Array();
            _loc3_ = this.§5!K§.length - 1;
            this.§5!K§[_loc3_][0] = param1;
            this.§5!K§[_loc3_][1] = 0;
            this.§5!K§[_loc3_][2] = 0;
         }
         this.§5!K§[_loc3_][1] += 1;
         this.§5!K§[_loc3_][2] += param2;
      }
   }
}
