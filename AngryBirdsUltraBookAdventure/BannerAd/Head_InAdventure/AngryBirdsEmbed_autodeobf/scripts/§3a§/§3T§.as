package §3a§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §3T§ extends Sprite
   {
      
      private static const §1<§:int = 1000;
       
      
      private var § N§:TextField;
      
      private var § t§:Boolean;
      
      private var §&A§:int = 0;
      
      private var §1!J§:Number = 0;
      
      private var §=S§:Array;
      
      public function §3T§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§ t§ = param1;
         if(param1)
         {
            this.§ N§ = new TextField();
            this.§ N§.text = "...";
            this.§ N§.textColor = 16711680;
            this.§ N§.selectable = false;
            this.§ N§.height = 40;
            this.§ N§.width = 150;
            this.§ N§.mouseEnabled = false;
            addChild(this.§ N§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§=S§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§&A§;
         this.§1!J§ += param1;
         if(this.§1!J§ >= §1<§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§1!J§ == 0 || this.§&A§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§1!J§ * this.§&A§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§=S§.length)
         {
            if(this.§=S§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§=S§[_loc4_][0] + " = " + Math.round(this.§=S§[_loc4_][2] / this.§=S§[_loc4_][1]);
            }
            this.§=S§[_loc4_][1] = 0;
            this.§=S§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§ N§.text = _loc3_;
         this.§ N§.mouseEnabled = false;
         this.§&A§ = 0;
         this.§1!J§ = 0;
      }
      
      public function §!n§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§=S§.length)
         {
            if(this.§=S§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§=S§[this.§=S§.length] = new Array();
            _loc3_ = this.§=S§.length - 1;
            this.§=S§[_loc3_][0] = param1;
            this.§=S§[_loc3_][1] = 0;
            this.§=S§[_loc3_][2] = 0;
         }
         this.§=S§[_loc3_][1] += 1;
         this.§=S§[_loc3_][2] += param2;
      }
   }
}
