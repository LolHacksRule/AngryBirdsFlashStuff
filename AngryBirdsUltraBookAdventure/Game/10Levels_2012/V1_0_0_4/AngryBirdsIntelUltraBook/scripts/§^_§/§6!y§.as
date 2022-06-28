package §^_§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §6!y§ extends Sprite
   {
      
      private static const §27§:int = 1000;
       
      
      private var §2K§:TextField;
      
      private var §>S§:Boolean;
      
      private var §3!B§:int = 0;
      
      private var §[!F§:Number = 0;
      
      private var §[!X§:Array;
      
      public function §6!y§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§>S§ = param1;
         if(param1)
         {
            this.§2K§ = new TextField();
            this.§2K§.text = "...";
            this.§2K§.textColor = 16711680;
            this.§2K§.selectable = false;
            this.§2K§.height = 40;
            this.§2K§.width = 150;
            this.§2K§.mouseEnabled = false;
            addChild(this.§2K§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§[!X§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§3!B§;
         this.§[!F§ += param1;
         if(this.§[!F§ >= §27§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§[!F§ == 0 || this.§3!B§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§[!F§ * this.§3!B§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§[!X§.length)
         {
            if(this.§[!X§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§[!X§[_loc4_][0] + " = " + Math.round(this.§[!X§[_loc4_][2] / this.§[!X§[_loc4_][1]);
            }
            this.§[!X§[_loc4_][1] = 0;
            this.§[!X§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§2K§.text = _loc3_;
         this.§2K§.mouseEnabled = false;
         this.§3!B§ = 0;
         this.§[!F§ = 0;
      }
      
      public function § j§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§[!X§.length)
         {
            if(this.§[!X§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§[!X§[this.§[!X§.length] = new Array();
            _loc3_ = this.§[!X§.length - 1;
            this.§[!X§[_loc3_][0] = param1;
            this.§[!X§[_loc3_][1] = 0;
            this.§[!X§[_loc3_][2] = 0;
         }
         this.§[!X§[_loc3_][1] += 1;
         this.§[!X§[_loc3_][2] += param2;
      }
   }
}
