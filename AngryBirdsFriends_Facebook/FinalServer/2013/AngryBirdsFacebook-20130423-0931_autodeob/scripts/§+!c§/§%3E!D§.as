package §+!c§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §>!D§ extends Sprite
   {
      
      private static const §4"C§:int = 1000;
       
      
      private var §^"P§:TextField;
      
      private var §7P§:Boolean;
      
      private var §8=§:int = 0;
      
      private var §6!<§:Number = 0;
      
      private var §<"K§:Array;
      
      public function §>!D§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§7P§ = param1;
         if(param1)
         {
            this.§^"P§ = new TextField();
            this.§^"P§.text = "...";
            this.§^"P§.textColor = 16711680;
            this.§^"P§.selectable = false;
            this.§^"P§.height = 40;
            this.§^"P§.width = 150;
            this.§^"P§.mouseEnabled = false;
            addChild(this.§^"P§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§<"K§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§8=§;
         this.§6!<§ += param1;
         if(this.§6!<§ >= §4"C§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§6!<§ == 0 || this.§8=§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§6!<§ * this.§8=§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§<"K§.length)
         {
            if(this.§<"K§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§<"K§[_loc4_][0] + " = " + Math.round(this.§<"K§[_loc4_][2] / this.§<"K§[_loc4_][1]);
            }
            this.§<"K§[_loc4_][1] = 0;
            this.§<"K§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§^"P§.text = _loc3_;
         this.§^"P§.mouseEnabled = false;
         this.§8=§ = 0;
         this.§6!<§ = 0;
      }
      
      public function §%!b§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§<"K§.length)
         {
            if(this.§<"K§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§<"K§[this.§<"K§.length] = new Array();
            _loc3_ = this.§<"K§.length - 1;
            this.§<"K§[_loc3_][0] = param1;
            this.§<"K§[_loc3_][1] = 0;
            this.§<"K§[_loc3_][2] = 0;
         }
         this.§<"K§[_loc3_][1] += 1;
         this.§<"K§[_loc3_][2] += param2;
      }
   }
}
