package §=!G§
{
   import §+&§.§&q§;
   import §+d§.§2"I§;
   import §0"k§.§&L§;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4!C§ extends Sprite
   {
      
      public static var §6"`§:Object = {};
       
      
      protected var §+3§:§&L§;
      
      protected var §[q§:§&q§;
      
      protected var §,# §:MovieClip;
      
      protected var §?!P§:§`"P§;
      
      public function §4!C§()
      {
         super();
         while(this.§[##§.numChildren > 0)
         {
            this.§[##§.removeChildAt(0);
         }
         this.§[##§.mouseEnabled = this.§[##§.mouseChildren = false;
         this.§[##§.tabEnabled = this.§[##§.tabChildren = false;
      }
      
      protected static function §=!`§(param1:*, param2:int = 2, param3:Boolean = false, param4:Boolean = false) : String
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
      
      protected function §[!_§(param1:String) : void
      {
         this.§,# §.txtName.text = param1;
         §2"I§.§;"%§(this.§,# §.txtName,int(this.§,# §.txtName.getTextFormat().size),this.§,# §.txtName.width,this.§,# §.txtName.height);
      }
      
      public function §;"W§(param1:§`"P§) : void
      {
         this.§?!P§ = param1;
      }
      
      public function set data(param1:§&L§) : void
      {
         this.§+3§ = param1;
         this.update();
      }
      
      public function get data() : §&L§
      {
         return this.§+3§;
      }
      
      public function update() : void
      {
      }
      
      protected function get §<2§() : Boolean
      {
         return this.§7d§.userId == §`"P§.§ u§;
      }
      
      public function get §7d§() : §&L§
      {
         return §&L§(this.data);
      }
      
      protected function §0!Q§() : void
      {
         if(this.§[q§ && this.§[q§.parent == this.§[##§ && this.§[q§ == §6"`§[this.§7d§.userId])
         {
            return;
         }
         if(this.§[q§ && this.§[q§.parent == this.§[##§)
         {
            this.§[##§.removeChild(this.§[q§);
            this.§[q§ = null;
         }
         if(§6"`§[this.§7d§.userId])
         {
            this.§[##§.addChild(this.§[q§ = §6"`§[this.§7d§.userId]);
         }
         else
         {
            this.§[q§ = new §&q§(this.§7d§.userId);
            §6"`§[this.§7d§.userId] = this.§[q§;
            this.§[##§.addChild(this.§[q§);
         }
      }
      
      protected function get §[##§() : DisplayObjectContainer
      {
         return this.§,# §.profilePicture;
      }
   }
}
