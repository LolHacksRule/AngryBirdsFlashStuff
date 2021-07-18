package §1"a§
{
   import §"k§.§]"V§;
   import §1!i§.§6"#§;
   import §7"a§.§@4§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;"2§ extends Sprite
   {
      
      public static var §4"G§:Object = {};
       
      
      protected var §%4§:§]"V§;
      
      protected var § !&§:§@4§;
      
      protected var §5!-§:MovieClip;
      
      protected var §1"I§:§^#G§;
      
      public function §;"2§()
      {
         super();
         while(this.§ #K§.numChildren > 0)
         {
            this.§ #K§.removeChildAt(0);
         }
         this.§ #K§.mouseEnabled = this.§ #K§.mouseChildren = false;
         this.§ #K§.tabEnabled = this.§ #K§.tabChildren = false;
      }
      
      protected static function §@#F§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc9_:int = !!(_loc8_ = (_loc7_ = String(Math.round(_loc6_ * Number(param1)) / _loc6_)).indexOf(".") == -1) ? int(_loc7_.length) : int(_loc7_.indexOf("."));
         var _loc10_:* = (_loc8_ && !param3 ? "" : (!!param4 ? "," : ".")) + _loc7_.substr(_loc9_ + 1);
         if(param3)
         {
            _loc11_ = 0;
            while(_loc11_ <= param2 - (_loc7_.length - (!!_loc8_ ? _loc9_ - 1 : _loc9_)))
            {
               _loc10_ += "0";
               _loc11_++;
            }
         }
         while(_loc5_ + 3 < (_loc7_.substr(0,1) == "-" ? _loc9_ - 1 : _loc9_))
         {
            _loc10_ = (!!param4 ? "." : ",") + _loc7_.substr(_loc9_ - (_loc5_ = _loc5_ + 3),3) + _loc10_;
         }
         return _loc7_.substr(0,_loc9_ - _loc5_) + _loc10_;
      }
      
      protected function §^"d§(param1:String) : void
      {
         this.§5!-§.txtName.text = param1;
         §6"#§.§7s§(this.§5!-§.txtName,int(this.§5!-§.txtName.getTextFormat().size),this.§5!-§.txtName.width,this.§5!-§.txtName.height);
      }
      
      public function §[#A§(param1:§^#G§) : void
      {
         this.§1"I§ = param1;
      }
      
      public function set data(param1:§]"V§) : void
      {
         this.§%4§ = param1;
         this.update();
      }
      
      public function get data() : §]"V§
      {
         return this.§%4§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §?r§() : Boolean
      {
         return this.§6!1§.userId == §^#G§.§-8§;
      }
      
      public function get §6!1§() : §]"V§
      {
         return §]"V§(this.data);
      }
      
      protected function §<"9§() : void
      {
         if(this.§ !&§ && this.§ !&§.parent == this.§ #K§ && this.§ !&§ == §4"G§[this.§6!1§.userId])
         {
            return;
         }
         if(this.§ !&§ && this.§ !&§.parent == this.§ #K§)
         {
            this.§ #K§.removeChild(this.§ !&§);
            this.§ !&§ = null;
         }
         if(§4"G§[this.§6!1§.userId])
         {
            this.§ #K§.addChild(this.§ !&§ = §4"G§[this.§6!1§.userId]);
         }
         else
         {
            this.§ !&§ = new §@4§(this.§6!1§.userId);
            §4"G§[this.§6!1§.userId] = this.§ !&§;
            this.§ #K§.addChild(this.§ !&§);
         }
      }
      
      protected function get § #K§() : DisplayObjectContainer
      {
         return this.§5!-§.profilePicture;
      }
   }
}
