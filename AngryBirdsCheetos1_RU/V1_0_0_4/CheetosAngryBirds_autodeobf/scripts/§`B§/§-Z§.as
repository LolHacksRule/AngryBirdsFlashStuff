package §`B§
{
   import §!!S§.§'+§;
   import §!!S§.§>a§;
   import §!!S§.§^P§;
   import §3!M§.§&!S§;
   import §3!M§.§+!1§;
   import §3!M§.§7^§;
   import §3!M§.§]9§;
   import §?!F§.§0!Y§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §-Z§ extends Sprite
   {
       
      
      protected var §!z§:§7^§;
      
      protected var §;y§:MovieClip;
      
      protected var §&1§:§0!Y§;
      
      public function §-Z§(param1:§0!Y§)
      {
         super();
         this.§&1§ = param1;
         this.§;y§ = new MovieClip();
         addChild(this.§;y§);
         this.§;y§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§!z§ = new §7^§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§ !_§();
         this.§!z§.clear();
         this.§!z§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §3q§() : void
      {
         if(this.§!z§)
         {
            this.§!z§.setActiveStatus(true);
         }
         visible = true;
         this.§;y§.visible = visible;
      }
      
      public function §@X§(param1:§0!Y§) : void
      {
         this.§ !_§();
         this.§&1§ = param1;
         this.§3q§();
      }
      
      public function § !_§() : void
      {
         if(this.§!z§)
         {
            this.§!z§.setActiveStatus(false);
         }
         visible = false;
         this.§;y§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§^P§) : void
      {
         this.§&1§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §0k§(param1:String, param2:Boolean) : void
      {
         if(this.§!z§)
         {
            this.§!z§.§!n§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §'+§
      {
         if(this.§!z§)
         {
            return this.§!z§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §&!S§)
         {
            (_loc3_ as §&!S§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §&!S§)
         {
            return (_loc2_ as §&!S§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>a§)
         {
            (_loc3_ as §>a§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §<v§(param1:String, param2:String) : void
      {
         var _loc3_:§+!1§ = this.getItemByName(param1) as §+!1§;
         if(_loc3_)
         {
            _loc3_.§;!Q§(param2);
         }
      }
      
      public function §!!,§(param1:String) : String
      {
         var _loc2_:§+!1§ = this.getItemByName(param1) as §+!1§;
         if(_loc2_)
         {
            return _loc2_.§4K§;
         }
         return "";
      }
      
      public function §=1§() : void
      {
         var _loc1_:§]9§ = null;
         for each(_loc1_ in this.§!z§.§]=§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §[!$§() : Boolean
      {
         var _loc1_:§]9§ = null;
         for each(_loc1_ in this.§!z§.§]=§)
         {
            if(_loc1_ && _loc1_.§2z§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §1A§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§&1§.getAppWidth(),this.§&1§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§!z§)
         {
            this.§!z§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§!z§)
         {
            this.§!z§.viewHeight = param1;
         }
      }
      
      public function get §"Q§() : §0!Y§
      {
         return this.§&1§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§;y§;
      }
      
      public function get container() : §7^§
      {
         return this.§!z§;
      }
   }
}
