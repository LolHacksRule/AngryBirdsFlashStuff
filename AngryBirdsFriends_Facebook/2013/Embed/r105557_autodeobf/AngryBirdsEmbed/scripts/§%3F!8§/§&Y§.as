package §?!8§
{
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class §&Y§ extends Sprite
   {
      
      private static const §+z§:int = 1000;
       
      
      private var §@h§:TextField;
      
      private var §@G§:Boolean;
      
      private var §>+§:int = 0;
      
      private var §`!F§:Number = 0;
      
      private var §,!<§:Array;
      
      public function §&Y§(param1:Boolean, param2:Sprite = null)
      {
         super();
         this.§@G§ = param1;
         if(param1)
         {
            this.§@h§ = new TextField();
            this.§@h§.text = "...";
            this.§@h§.textColor = 16711680;
            this.§@h§.selectable = false;
            this.§@h§.height = 40;
            this.§@h§.width = 150;
            this.§@h§.mouseEnabled = false;
            addChild(this.§@h§);
            if(param2)
            {
               param2.addChild(this);
            }
            this.x = 250;
         }
         this.§,!<§ = new Array();
         this.mouseEnabled = false;
      }
      
      public function update(param1:Number) : void
      {
         ++this.§>+§;
         this.§`!F§ += param1;
         if(this.§`!F§ >= §+z§)
         {
            this.reset();
         }
      }
      
      public function reset(param1:Boolean = true) : void
      {
         var _loc2_:Number = 0;
         if(!(this.§`!F§ == 0 || this.§>+§ == 0))
         {
            if(param1)
            {
               _loc2_ = 1000 / this.§`!F§ * this.§>+§;
            }
            else
            {
               _loc2_ = 0;
            }
         }
         var _loc3_:String = "fps = " + Math.round(_loc2_);
         var _loc4_:int = 0;
         while(_loc4_ < this.§,!<§.length)
         {
            if(this.§,!<§[_loc4_][1] != 0)
            {
               _loc3_ += " " + this.§,!<§[_loc4_][0] + " = " + Math.round(this.§,!<§[_loc4_][2] / this.§,!<§[_loc4_][1]);
            }
            this.§,!<§[_loc4_][1] = 0;
            this.§,!<§[_loc4_][2] = 0;
            _loc4_++;
         }
         this.§@h§.text = _loc3_;
         this.§@h§.mouseEnabled = false;
         this.§>+§ = 0;
         this.§`!F§ = 0;
      }
      
      public function §;%§(param1:String, param2:Number) : void
      {
         var _loc3_:int = -1;
         var _loc4_:int = 0;
         while(_loc4_ < this.§,!<§.length)
         {
            if(this.§,!<§[_loc4_][0] == param1)
            {
               _loc3_ = _loc4_;
            }
            _loc4_++;
         }
         if(_loc3_ == -1)
         {
            this.§,!<§[this.§,!<§.length] = new Array();
            _loc3_ = this.§,!<§.length - 1;
            this.§,!<§[_loc3_][0] = param1;
            this.§,!<§[_loc3_][1] = 0;
            this.§,!<§[_loc3_][2] = 0;
         }
         this.§,!<§[_loc3_][1] += 1;
         this.§,!<§[_loc3_][2] += param2;
      }
   }
}
