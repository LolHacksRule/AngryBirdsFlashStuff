package §0!$§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §;H§ extends Sprite
   {
      
      private static const §>!V§:int = 1000;
       
      
      private var §]!8§:TextField;
      
      private var §=!O§:Boolean;
      
      private var §+!3§:int = 0;
      
      private var § !t§:Number = 0;
      
      private var §="0§:Array;
      
      public function §;H§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§=!O§ = param1;
         if(param1)
         {
            this.§]!8§ = new TextField();
            this.§]!8§.text = "...";
            this.§]!8§.textColor = 16711680;
            this.§]!8§.selectable = false;
            this.§]!8§.height = 40;
            this.§]!8§.width = 150;
            this.§]!8§.mouseEnabled = false;
            addChild(this.§]!8§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§="0§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§+!3§;
         this.§ !t§ += param1;
         if(this.§ !t§ >= §>!V§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§ !t§ == 0 || this.§+!3§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§ !t§ * this.§+!3§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§="0§.length)
         {
            if(this.§="0§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§="0§[_loc4_][0] + " = " + Math.round(this.§="0§[_loc4_][2] / this.§="0§[_loc4_][1]);
            }
            this.§="0§[_loc4_][1] = 0;
            this.§="0§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§]!8§.text = _loc3_;
         this.§]!8§.mouseEnabled = false;
         this.§+!3§ = 0;
         this.§ !t§ = 0;
      }
      
      public function §3"'§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§="0§.length)
         {
            if(this.§="0§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§="0§[this.§="0§.length] = new Array();
            _loc3_ = this.§="0§.length - 1;
            this.§="0§[_loc3_][0] = param1;
            this.§="0§[_loc3_][1] = 0;
            this.§="0§[_loc3_][2] = 0;
         }
         this.§="0§[_loc3_][1] += 1;
         this.§="0§[_loc3_][2] += param2;
      }
   }
}
