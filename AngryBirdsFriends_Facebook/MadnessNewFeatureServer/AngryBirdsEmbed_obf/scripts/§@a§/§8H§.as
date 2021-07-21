package §@a§
{
   import §"!B§.§58§;
   import §"!B§.§6!"§;
   import §"!B§.§;!1§;
   import §"!B§.§const§;
   import §<!A§.§,!?§;
   import §]!=§.§&P§;
   import §]!=§.§;!6§;
   import §]!=§.§]!"§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §8H§ extends Sprite
   {
       
      
      protected var §#!$§:§58§;
      
      protected var §79§:MovieClip;
      
      protected var §3!>§:§,!?§;
      
      public function §8H§(param1:§,!?§)
      {
         super();
         this.§3!>§ = param1;
         this.§79§ = new MovieClip();
         addChild(this.§79§);
         this.§79§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§#!$§ = new §58§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§=!-§();
         this.§#!$§.clear();
         this.§#!$§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §0A§() : void
      {
         if(this.§#!$§)
         {
            this.§#!$§.setActiveStatus(true);
         }
         visible = true;
         this.§79§.visible = visible;
      }
      
      public function §4d§(param1:§,!?§) : void
      {
         this.§=!-§();
         this.§3!>§ = param1;
         this.§0A§();
      }
      
      public function §=!-§() : void
      {
         if(this.§#!$§)
         {
            this.§#!$§.setActiveStatus(false);
         }
         visible = false;
         this.§79§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§;!6§) : void
      {
         this.§3!>§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§#!$§)
         {
            this.§#!$§.§8B§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §]!"§
      {
         if(this.§#!$§)
         {
            return this.§#!$§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §6!"§)
         {
            (_loc3_ as §6!"§).setText(param1);
         }
      }
      
      public function §[z§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §6!"§)
         {
            return (_loc2_ as §6!"§).§[z§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §&P§)
         {
            (_loc3_ as §&P§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §93§(param1:String, param2:String) : void
      {
         var _loc3_:§const§ = this.getItemByName(param1) as §const§;
         if(_loc3_)
         {
            _loc3_.§7B§(param2);
         }
      }
      
      public function §[!=§(param1:String) : String
      {
         var _loc2_:§const§ = this.getItemByName(param1) as §const§;
         if(_loc2_)
         {
            return _loc2_.§>t§;
         }
         return "";
      }
      
      public function §#c§() : void
      {
         var _loc1_:§;!1§ = null;
         for each(_loc1_ in this.§#!$§.§ else§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §5-§() : Boolean
      {
         var _loc1_:§;!1§ = null;
         for each(_loc1_ in this.§#!$§.§ else§)
         {
            if(_loc1_ && _loc1_.§,!'§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §]!§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§3!>§.getAppWidth(),this.§3!>§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§#!$§)
         {
            this.§#!$§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§#!$§)
         {
            this.§#!$§.viewHeight = param1;
         }
      }
      
      public function get §9<§() : §,!?§
      {
         return this.§3!>§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§79§;
      }
      
      public function get container() : §58§
      {
         return this.§#!$§;
      }
   }
}
