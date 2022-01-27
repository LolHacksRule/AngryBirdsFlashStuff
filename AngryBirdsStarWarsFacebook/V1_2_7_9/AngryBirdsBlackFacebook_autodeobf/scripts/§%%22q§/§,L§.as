package §%"q§
{
   import § "I§.§?!%§;
   import §7A§.§4E§;
   import §`!b§.§"§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,L§ extends Sprite
   {
      
      public static var §<#'§:Object = {};
       
      
      protected var §,6§:§"#6§;
      
      protected var §,a§:§?!%§;
      
      protected var §&"_§:MovieClip;
      
      protected var §;!%§:§]"b§;
      
      public function §,L§()
      {
         super();
         while(this.§2"5§.numChildren > 0)
         {
            this.§2"5§.removeChildAt(0);
         }
         this.§2"5§.mouseEnabled = this.§2"5§.mouseChildren = false;
         this.§2"5§.tabEnabled = this.§2"5§.tabChildren = false;
      }
      
      protected static function §3!a§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
      {
         var _loc11_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Number = Math.pow(10,param2);
         var _loc8_:*;
         var _loc7_:String;
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
      
      protected function §8"V§(param1:String) : void
      {
         this.§&"_§.txtName.text = param1;
         §4E§.§0!l§(this.§&"_§.txtName,int(this.§&"_§.txtName.getTextFormat().size),this.§&"_§.txtName.width,this.§&"_§.txtName.height);
      }
      
      public function §5"j§(param1:§]"b§) : void
      {
         this.§;!%§ = param1;
      }
      
      public function set data(param1:§"#6§) : void
      {
         this.§,6§ = param1;
         this.update();
      }
      
      public function get data() : §"#6§
      {
         return this.§,6§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §%"r§() : Boolean
      {
         return this.§#!P§.userId == §]"b§.§%"6§;
      }
      
      public function get §#!P§() : §"#6§
      {
         return §"#6§(this.data);
      }
      
      protected function §1J§() : void
      {
         if(this.§,a§ && this.§,a§.parent == this.§2"5§ && this.§,a§ == §<#'§[this.§#!P§.userId])
         {
            return;
         }
         if(this.§,a§ && this.§,a§.parent == this.§2"5§)
         {
            this.§2"5§.removeChild(this.§,a§);
            this.§,a§ = null;
         }
         if(§<#'§[this.§#!P§.userId])
         {
            this.§2"5§.addChild(this.§,a§ = §<#'§[this.§#!P§.userId]);
         }
         else
         {
            this.§,a§ = new §?!%§(this.§#!P§.userId);
            §<#'§[this.§#!P§.userId] = this.§,a§;
            this.§2"5§.addChild(this.§,a§);
         }
      }
      
      protected function get §2"5§() : DisplayObjectContainer
      {
         return this.§&"_§.profilePicture;
      }
   }
}
