package §&W§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class include extends Sprite
   {
      
      private static const §,n§:int = 1000;
       
      
      private var §+!X§:TextField;
      
      private var §@!P§:Boolean;
      
      private var §0!Q§:int = 0;
      
      private var §&!B§:Number = 0;
      
      private var §;!q§:Array;
      
      public function include(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§@!P§ = param1;
         if(param1)
         {
            this.§+!X§ = new TextField();
            this.§+!X§.text = "...";
            this.§+!X§.textColor = 16711680;
            this.§+!X§.selectable = false;
            this.§+!X§.height = 40;
            this.§+!X§.width = 150;
            this.§+!X§.mouseEnabled = false;
            addChild(this.§+!X§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§;!q§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§0!Q§;
         this.§&!B§ += param1;
         if(this.§&!B§ >= §,n§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§&!B§ == 0 || this.§0!Q§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§&!B§ * this.§0!Q§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§;!q§.length)
         {
            if(this.§;!q§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§;!q§[_loc4_][0] + " = " + Math.round(this.§;!q§[_loc4_][2] / this.§;!q§[_loc4_][1]);
            }
            this.§;!q§[_loc4_][1] = 0;
            this.§;!q§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§+!X§.text = _loc3_;
         this.§+!X§.mouseEnabled = false;
         this.§0!Q§ = 0;
         this.§&!B§ = 0;
      }
      
      public function §&!I§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§;!q§.length)
         {
            if(this.§;!q§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§;!q§[this.§;!q§.length] = new Array();
            _loc3_ = this.§;!q§.length - 1;
            this.§;!q§[_loc3_][0] = param1;
            this.§;!q§[_loc3_][1] = 0;
            this.§;!q§[_loc3_][2] = 0;
         }
         this.§;!q§[_loc3_][1] += 1;
         this.§;!q§[_loc3_][2] += param2;
      }
   }
}
