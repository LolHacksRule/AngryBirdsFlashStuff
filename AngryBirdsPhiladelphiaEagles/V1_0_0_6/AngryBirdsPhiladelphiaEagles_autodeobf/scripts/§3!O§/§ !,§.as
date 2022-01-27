package §3!O§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class § !,§ extends Sprite
   {
      
      private static const §8b§:int = 1000;
       
      
      private var § i§:TextField;
      
      private var §"C§:Boolean;
      
      private var §5!%§:int = 0;
      
      private var §"S§:Number = 0;
      
      private var §]A§:Array;
      
      public function § !,§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§"C§ = param1;
         if(param1)
         {
            this.§ i§ = new TextField();
            this.§ i§.text = "...";
            this.§ i§.textColor = 16711680;
            this.§ i§.selectable = false;
            this.§ i§.height = 40;
            this.§ i§.width = 150;
            this.§ i§.mouseEnabled = false;
            addChild(this.§ i§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§]A§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§5!%§;
         this.§"S§ += param1;
         if(this.§"S§ >= §8b§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§"S§ == 0 || this.§5!%§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§"S§ * this.§5!%§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§]A§.length)
         {
            if(this.§]A§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§]A§[_loc4_][0] + " = " + Math.round(this.§]A§[_loc4_][2] / this.§]A§[_loc4_][1]);
            }
            this.§]A§[_loc4_][1] = 0;
            this.§]A§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§ i§.text = _loc3_;
         this.§ i§.mouseEnabled = false;
         this.§5!%§ = 0;
         this.§"S§ = 0;
      }
      
      public function §#M§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§]A§.length)
         {
            if(this.§]A§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§]A§[this.§]A§.length] = new Array();
            _loc3_ = this.§]A§.length - 1;
            this.§]A§[_loc3_][0] = param1;
            this.§]A§[_loc3_][1] = 0;
            this.§]A§[_loc3_][2] = 0;
         }
         this.§]A§[_loc3_][1] += 1;
         this.§]A§[_loc3_][2] += param2;
      }
   }
}
