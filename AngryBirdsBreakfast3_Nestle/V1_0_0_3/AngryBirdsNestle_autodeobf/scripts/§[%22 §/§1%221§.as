package §[" §
{
   import §+j§.§@!_§;
   import §3!!§.§'E§;
   import §3!!§.§3!g§;
   import §3!!§.§5" §;
   import §3!!§.native;
   import §@f§.§&!"§;
   import §@f§.§4d§;
   import §@f§.§7h§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1"1§ extends Sprite
   {
       
      
      protected var §#t§:§5" §;
      
      protected var §-!#§:MovieClip;
      
      protected var § "2§:§@!_§;
      
      public function §1"1§(param1:§@!_§)
      {
         super();
         this.§ "2§ = param1;
         this.§-!#§ = new MovieClip();
         addChild(this.§-!#§);
         this.§-!#§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§#t§ = new §5" §(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§true §();
         this.§#t§.clear();
         this.§#t§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §?!G§() : void
      {
         if(this.§#t§)
         {
            this.§#t§.setActiveStatus(true);
         }
         visible = true;
         this.§-!#§.visible = visible;
      }
      
      public function § D§(param1:§@!_§) : void
      {
         this.§true §();
         this.§ "2§ = param1;
         this.§?!G§();
      }
      
      public function §true §() : void
      {
         if(this.§#t§)
         {
            this.§#t§.setActiveStatus(false);
         }
         visible = false;
         this.§-!#§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§&!"§) : void
      {
         this.§ "2§.§>5§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§#t§)
         {
            this.§#t§.§!i§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §7h§
      {
         if(this.§#t§)
         {
            return this.§#t§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is native)
         {
            (_loc3_ as native).setText(param1);
            return;
         }
         throw new Error("--#UIView[setText]:: object was not an instance of UITextFieldRovio");
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is native)
         {
            return (_loc2_ as native).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §4d§)
         {
            (_loc3_ as §4d§).setComponentState(param1);
         }
      }
      
      public function §@9§(param1:String) : Array
      {
         return null;
      }
      
      public function §%z§(param1:String, param2:String) : void
      {
         var _loc3_:§'E§ = this.getItemByName(param1) as §'E§;
         if(_loc3_)
         {
            _loc3_.§0#§(param2);
         }
      }
      
      public function §%"#§(param1:String) : String
      {
         var _loc2_:§'E§ = this.getItemByName(param1) as §'E§;
         if(_loc2_)
         {
            return _loc2_.§^!x§;
         }
         return "";
      }
      
      public function §`B§() : void
      {
         var _loc1_:§3!g§ = null;
         for each(_loc1_ in this.§#t§.§ q§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §"!s§() : Boolean
      {
         var _loc1_:§3!g§ = null;
         for each(_loc1_ in this.§#t§.§ q§)
         {
            if(_loc1_ && _loc1_.§'!M§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §><§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§ "2§.getAppWidth(),this.§ "2§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§#t§)
         {
            this.§#t§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§#t§)
         {
            this.§#t§.viewHeight = param1;
         }
      }
      
      public function get §3M§() : §@!_§
      {
         return this.§ "2§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§-!#§;
      }
      
      public function get container() : §5" §
      {
         return this.§#t§;
      }
   }
}
