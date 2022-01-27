package §@V§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class § S§ extends Sprite
   {
      
      private static const §5!%§:int = 1000;
       
      
      private var §,U§:TextField;
      
      private var §=$§:Boolean;
      
      private var §>I§:int = 0;
      
      private var §&!9§:Number = 0;
      
      private var §6_§:Array;
      
      public function § S§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§=$§ = param1;
         if(param1)
         {
            this.§,U§ = new TextField();
            this.§,U§.text = "...";
            this.§,U§.textColor = 16711680;
            this.§,U§.selectable = false;
            this.§,U§.height = 40;
            this.§,U§.width = 150;
            this.§,U§.mouseEnabled = false;
            addChild(this.§,U§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§6_§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§>I§;
         this.§&!9§ += param1;
         if(this.§&!9§ >= §5!%§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§&!9§ == 0 || this.§>I§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§&!9§ * this.§>I§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§6_§.length)
         {
            if(this.§6_§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§6_§[_loc4_][0] + " = " + Math.round(this.§6_§[_loc4_][2] / this.§6_§[_loc4_][1]);
            }
            this.§6_§[_loc4_][1] = 0;
            this.§6_§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§,U§.text = _loc3_;
         this.§,U§.mouseEnabled = false;
         this.§>I§ = 0;
         this.§&!9§ = 0;
      }
      
      public function §0!9§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§6_§.length)
         {
            if(this.§6_§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§6_§[this.§6_§.length] = new Array();
            _loc3_ = this.§6_§.length - 1;
            this.§6_§[_loc3_][0] = param1;
            this.§6_§[_loc3_][1] = 0;
            this.§6_§[_loc3_][2] = 0;
         }
         this.§6_§[_loc3_][1] += 1;
         this.§6_§[_loc3_][2] += param2;
      }
   }
}
