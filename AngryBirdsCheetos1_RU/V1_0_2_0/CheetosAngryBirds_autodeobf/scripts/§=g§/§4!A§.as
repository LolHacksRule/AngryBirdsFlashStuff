package §=g§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §4!A§ extends Sprite
   {
      
      private static const §>R§:int = 1000;
       
      
      private var §`!W§:TextField;
      
      private var §set §:Boolean;
      
      private var §`C§:int = 0;
      
      private var §&_§:Number = 0;
      
      private var §^!U§:Array;
      
      public function §4!A§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§set § = param1;
         if(param1)
         {
            this.§`!W§ = new TextField();
            this.§`!W§.text = "...";
            this.§`!W§.textColor = 16711680;
            this.§`!W§.selectable = false;
            this.§`!W§.height = 40;
            this.§`!W§.width = 150;
            this.§`!W§.mouseEnabled = false;
            addChild(this.§`!W§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§^!U§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§`C§;
         this.§&_§ += param1;
         if(this.§&_§ >= §>R§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§&_§ == 0 || this.§`C§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§&_§ * this.§`C§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§^!U§.length)
         {
            if(this.§^!U§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§^!U§[_loc4_][0] + " = " + Math.round(this.§^!U§[_loc4_][2] / this.§^!U§[_loc4_][1]);
            }
            this.§^!U§[_loc4_][1] = 0;
            this.§^!U§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§`!W§.text = _loc3_;
         this.§`!W§.mouseEnabled = false;
         this.§`C§ = 0;
         this.§&_§ = 0;
      }
      
      public function §,![§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§^!U§.length)
         {
            if(this.§^!U§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§^!U§[this.§^!U§.length] = new Array();
            _loc3_ = this.§^!U§.length - 1;
            this.§^!U§[_loc3_][0] = param1;
            this.§^!U§[_loc3_][1] = 0;
            this.§^!U§[_loc3_][2] = 0;
         }
         this.§^!U§[_loc3_][1] += 1;
         this.§^!U§[_loc3_][2] += param2;
      }
   }
}
