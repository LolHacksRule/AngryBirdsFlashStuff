package each
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §@!&§ extends Sprite
   {
      
      private static const §>!T§:int = 1000;
       
      
      private var §<!t§:TextField;
      
      private var §+d§:Boolean;
      
      private var §+!%§:int = 0;
      
      private var §"!D§:Number = 0;
      
      private var §=a§:Array;
      
      public function §@!&§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§+d§ = param1;
         if(param1)
         {
            this.§<!t§ = new TextField();
            this.§<!t§.text = "...";
            this.§<!t§.textColor = 16711680;
            this.§<!t§.selectable = false;
            this.§<!t§.height = 40;
            this.§<!t§.width = 150;
            this.§<!t§.mouseEnabled = false;
            addChild(this.§<!t§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§=a§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§+!%§;
         this.§"!D§ += param1;
         if(this.§"!D§ >= §>!T§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§"!D§ == 0 || this.§+!%§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§"!D§ * this.§+!%§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§=a§.length)
         {
            if(this.§=a§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§=a§[_loc4_][0] + " = " + Math.round(this.§=a§[_loc4_][2] / this.§=a§[_loc4_][1]);
            }
            this.§=a§[_loc4_][1] = 0;
            this.§=a§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§<!t§.text = _loc3_;
         this.§<!t§.mouseEnabled = false;
         this.§+!%§ = 0;
         this.§"!D§ = 0;
      }
      
      public function §=!j§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§=a§.length)
         {
            if(this.§=a§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§=a§[this.§=a§.length] = new Array();
            _loc3_ = this.§=a§.length - 1;
            this.§=a§[_loc3_][0] = param1;
            this.§=a§[_loc3_][1] = 0;
            this.§=a§[_loc3_][2] = 0;
         }
         this.§=a§[_loc3_][1] += 1;
         this.§=a§[_loc3_][2] += param2;
      }
   }
}
