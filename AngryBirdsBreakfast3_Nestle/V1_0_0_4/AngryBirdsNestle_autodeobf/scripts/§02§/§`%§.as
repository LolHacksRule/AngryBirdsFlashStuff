package §02§
{
   import §9!a§.§@S§;
   import §@#§.§ @§;
   import §@#§.§9!'§;
   import §@#§.§;B§;
   import §@#§.§>L§;
   import §[!b§.§'!R§;
   import §[!b§.§2!O§;
   import §[!b§.§]"-§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`%§ extends Sprite
   {
       
      
      protected var §0+§:§9!'§;
      
      protected var §9!O§:MovieClip;
      
      protected var §5!a§:§@S§;
      
      public function §`%§(param1:§@S§)
      {
         super();
         this.§5!a§ = param1;
         this.§9!O§ = new MovieClip();
         addChild(this.§9!O§);
         this.§9!O§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§0+§ = new §9!'§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§+q§();
         this.§0+§.clear();
         this.§0+§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §!V§() : void
      {
         if(this.§0+§)
         {
            this.§0+§.setActiveStatus(true);
         }
         visible = true;
         this.§9!O§.visible = visible;
      }
      
      public function §0!"§(param1:§@S§) : void
      {
         this.§+q§();
         this.§5!a§ = param1;
         this.§!V§();
      }
      
      public function §+q§() : void
      {
         if(this.§0+§)
         {
            this.§0+§.setActiveStatus(false);
         }
         visible = false;
         this.§9!O§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§'!R§) : void
      {
         this.§5!a§.§&b§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§0+§)
         {
            this.§0+§.§0b§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §2!O§
      {
         if(this.§0+§)
         {
            return this.§0+§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>L§)
         {
            (_loc3_ as §>L§).setText(param1);
            return;
         }
         throw new Error("--#UIView[setText]:: object was not an instance of UITextFieldRovio");
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §>L§)
         {
            return (_loc2_ as §>L§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §]"-§)
         {
            (_loc3_ as §]"-§).setComponentState(param1);
         }
      }
      
      public function §7!S§(param1:String) : Array
      {
         return null;
      }
      
      public function §'!P§(param1:String, param2:String) : void
      {
         var _loc3_:§;B§ = this.getItemByName(param1) as §;B§;
         if(_loc3_)
         {
            _loc3_.§8§(param2);
         }
      }
      
      public function §'r§(param1:String) : String
      {
         var _loc2_:§;B§ = this.getItemByName(param1) as §;B§;
         if(_loc2_)
         {
            return _loc2_.§#R§;
         }
         return "";
      }
      
      public function § if§() : void
      {
         var _loc1_:§ @§ = null;
         for each(_loc1_ in this.§0+§.§3H§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §&!J§() : Boolean
      {
         var _loc1_:§ @§ = null;
         for each(_loc1_ in this.§0+§.§3H§)
         {
            if(_loc1_ && _loc1_.§<n§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §%!9§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§5!a§.getAppWidth(),this.§5!a§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§0+§)
         {
            this.§0+§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§0+§)
         {
            this.§0+§.viewHeight = param1;
         }
      }
      
      public function get §7s§() : §@S§
      {
         return this.§5!a§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§9!O§;
      }
      
      public function get container() : §9!'§
      {
         return this.§0+§;
      }
   }
}
