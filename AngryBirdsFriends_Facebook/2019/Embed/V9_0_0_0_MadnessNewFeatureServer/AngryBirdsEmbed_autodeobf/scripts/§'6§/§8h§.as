package §'6§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §8h§ extends Sprite
   {
      
      private static const §'"§:int = 1000;
       
      
      private var §2!2§:TextField;
      
      private var §[%§:Boolean;
      
      private var §5e§:int = 0;
      
      private var §9!4§:Number = 0;
      
      private var §9!+§:Array;
      
      public function §8h§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§[%§ = param1;
         if(param1)
         {
            this.§2!2§ = new TextField();
            this.§2!2§.text = "...";
            this.§2!2§.textColor = 16711680;
            this.§2!2§.selectable = false;
            this.§2!2§.height = 40;
            this.§2!2§.width = 150;
            this.§2!2§.mouseEnabled = false;
            addChild(this.§2!2§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§9!+§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§5e§;
         this.§9!4§ += param1;
         if(this.§9!4§ >= §'"§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§9!4§ == 0 || this.§5e§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§9!4§ * this.§5e§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§9!+§.length)
         {
            if(this.§9!+§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§9!+§[_loc4_][0] + " = " + Math.round(this.§9!+§[_loc4_][2] / this.§9!+§[_loc4_][1]);
            }
            this.§9!+§[_loc4_][1] = 0;
            this.§9!+§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§2!2§.text = _loc3_;
         this.§2!2§.mouseEnabled = false;
         this.§5e§ = 0;
         this.§9!4§ = 0;
      }
      
      public function §+!§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§9!+§.length)
         {
            if(this.§9!+§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§9!+§[this.§9!+§.length] = new Array();
            _loc3_ = this.§9!+§.length - 1;
            this.§9!+§[_loc3_][0] = param1;
            this.§9!+§[_loc3_][1] = 0;
            this.§9!+§[_loc3_][2] = 0;
         }
         this.§9!+§[_loc3_][1] += 1;
         this.§9!+§[_loc3_][2] += param2;
      }
   }
}
