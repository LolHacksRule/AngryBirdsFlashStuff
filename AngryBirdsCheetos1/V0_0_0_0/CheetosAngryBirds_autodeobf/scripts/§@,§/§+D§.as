package §@,§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §+D§ extends Sprite
   {
      
      private static const §6g§:int = 1000;
       
      
      private var §1!L§:TextField;
      
      private var §5!1§:Boolean;
      
      private var §>U§:int = 0;
      
      private var §"3§:Number = 0;
      
      private var §>n§:Array;
      
      public function §+D§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§5!1§ = param1;
         if(param1)
         {
            this.§1!L§ = new TextField();
            this.§1!L§.text = "...";
            this.§1!L§.textColor = 16711680;
            this.§1!L§.selectable = false;
            this.§1!L§.height = 40;
            this.§1!L§.width = 150;
            this.§1!L§.mouseEnabled = false;
            addChild(this.§1!L§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§>n§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§>U§;
         this.§"3§ += param1;
         if(this.§"3§ >= §6g§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§"3§ == 0 || this.§>U§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§"3§ * this.§>U§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§>n§.length)
         {
            if(this.§>n§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§>n§[_loc4_][0] + " = " + Math.round(this.§>n§[_loc4_][2] / this.§>n§[_loc4_][1]);
            }
            this.§>n§[_loc4_][1] = 0;
            this.§>n§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§1!L§.text = _loc3_;
         this.§1!L§.mouseEnabled = false;
         this.§>U§ = 0;
         this.§"3§ = 0;
      }
      
      public function §+<§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§>n§.length)
         {
            if(this.§>n§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§>n§[this.§>n§.length] = new Array();
            _loc3_ = this.§>n§.length - 1;
            this.§>n§[_loc3_][0] = param1;
            this.§>n§[_loc3_][1] = 0;
            this.§>n§[_loc3_][2] = 0;
         }
         this.§>n§[_loc3_][1] += 1;
         this.§>n§[_loc3_][2] += param2;
      }
   }
}
