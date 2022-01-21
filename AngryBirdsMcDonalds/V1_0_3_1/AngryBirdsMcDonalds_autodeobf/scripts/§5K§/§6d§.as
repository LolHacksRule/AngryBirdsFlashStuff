package §5K§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §6d§ extends Sprite
   {
      
      private static const §+!i§:int = 1000;
       
      
      private var §,#§:TextField;
      
      private var §0O§:Boolean;
      
      private var §^!P§:int = 0;
      
      private var §8r§:Number = 0;
      
      private var §1;§:Array;
      
      public function §6d§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§0O§ = param1;
         if(param1)
         {
            this.§,#§ = new TextField();
            this.§,#§.text = "...";
            this.§,#§.textColor = 16711680;
            this.§,#§.selectable = false;
            this.§,#§.height = 40;
            this.§,#§.width = 150;
            this.§,#§.mouseEnabled = false;
            addChild(this.§,#§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§1;§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§^!P§;
         this.§8r§ += param1;
         if(this.§8r§ >= §+!i§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§8r§ == 0 || this.§^!P§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§8r§ * this.§^!P§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§1;§.length)
         {
            if(this.§1;§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§1;§[_loc4_][0] + " = " + Math.round(this.§1;§[_loc4_][2] / this.§1;§[_loc4_][1]);
            }
            this.§1;§[_loc4_][1] = 0;
            this.§1;§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§,#§.text = _loc3_;
         this.§,#§.mouseEnabled = false;
         this.§^!P§ = 0;
         this.§8r§ = 0;
      }
      
      public function §case§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§1;§.length)
         {
            if(this.§1;§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§1;§[this.§1;§.length] = new Array();
            _loc3_ = this.§1;§.length - 1;
            this.§1;§[_loc3_][0] = param1;
            this.§1;§[_loc3_][1] = 0;
            this.§1;§[_loc3_][2] = 0;
         }
         this.§1;§[_loc3_][1] += 1;
         this.§1;§[_loc3_][2] += param2;
      }
   }
}
