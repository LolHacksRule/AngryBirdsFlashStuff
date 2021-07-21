package §>P§
{
   import §"§.§%!$§;
   import §'!D§.§08§;
   import §'!D§.§0j§;
   import §'!D§.§?!h§;
   import §>M§.§#!a§;
   import §>M§.§'V§;
   import §>M§.§<6§;
   import §>M§.§]w§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5!§ extends Sprite
   {
       
      
      protected var §1A§:§<6§;
      
      protected var § s§:MovieClip;
      
      protected var §;+§:§%!$§;
      
      public function §5!§(param1:§%!$§)
      {
         super();
         this.§;+§ = param1;
         this.§ s§ = new MovieClip();
         addChild(this.§ s§);
         this.§ s§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§1A§ = new §<6§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§#j§();
         this.§1A§.clear();
         this.§1A§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §%>§() : void
      {
         if(this.§1A§)
         {
            this.§1A§.setActiveStatus(true);
         }
         visible = true;
         this.§ s§.visible = visible;
      }
      
      public function §;!h§(param1:§%!$§) : void
      {
         this.§#j§();
         this.§;+§ = param1;
         this.§%>§();
      }
      
      public function §#j§() : void
      {
         if(this.§1A§)
         {
            this.§1A§.setActiveStatus(false);
         }
         visible = false;
         this.§ s§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§08§) : void
      {
         this.§;+§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §4,§(param1:String, param2:Boolean) : void
      {
         if(this.§1A§)
         {
            this.§1A§.§]!g§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §?!h§
      {
         if(this.§1A§)
         {
            return this.§1A§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §'V§)
         {
            (_loc3_ as §'V§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §'V§)
         {
            return (_loc2_ as §'V§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §0j§)
         {
            (_loc3_ as §0j§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §?!9§(param1:String, param2:String) : void
      {
         var _loc3_:§]w§ = this.getItemByName(param1) as §]w§;
         if(_loc3_)
         {
            _loc3_.§7!'§(param2);
         }
      }
      
      public function §&r§(param1:String) : String
      {
         var _loc2_:§]w§ = this.getItemByName(param1) as §]w§;
         if(_loc2_)
         {
            return _loc2_.§@![§;
         }
         return "";
      }
      
      public function §9N§() : void
      {
         var _loc1_:§#!a§ = null;
         for each(_loc1_ in this.§1A§.§[!L§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §3!9§() : Boolean
      {
         var _loc1_:§#!a§ = null;
         for each(_loc1_ in this.§1A§.§[!L§)
         {
            if(_loc1_ && _loc1_.§^!V§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §1+§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§;+§.getAppWidth(),this.§;+§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§1A§)
         {
            this.§1A§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§1A§)
         {
            this.§1A§.viewHeight = param1;
         }
      }
      
      public function get §2!$§() : §%!$§
      {
         return this.§;+§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§ s§;
      }
      
      public function get container() : §<6§
      {
         return this.§1A§;
      }
   }
}
