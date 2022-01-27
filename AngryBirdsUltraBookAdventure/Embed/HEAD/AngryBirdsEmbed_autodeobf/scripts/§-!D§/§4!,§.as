package §-!D§
{
   import §%4§.§"e§;
   import §%4§.§4!=§;
   import §%4§.§]q§;
   import §%4§.§`a§;
   import §0!#§.§'!,§;
   import §0!#§.§-P§;
   import §0!#§.§0K§;
   import §7g§.§1Q§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4!,§ extends Sprite
   {
       
      
      protected var §?!@§:§4!=§;
      
      protected var § null§:MovieClip;
      
      protected var §7u§:§1Q§;
      
      public function §4!,§(param1:§1Q§)
      {
         super();
         this.§7u§ = param1;
         this.§ null§ = new MovieClip();
         addChild(this.§ null§);
         this.§ null§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§?!@§ = new §4!=§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§^!§();
         this.§?!@§.clear();
         this.§?!@§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §@2§() : void
      {
         if(this.§?!@§)
         {
            this.§?!@§.setActiveStatus(true);
         }
         visible = true;
         this.§ null§.visible = visible;
      }
      
      public function §>z§(param1:§1Q§) : void
      {
         this.§^!§();
         this.§7u§ = param1;
         this.§@2§();
      }
      
      public function §^!§() : void
      {
         if(this.§?!@§)
         {
            this.§?!@§.setActiveStatus(false);
         }
         visible = false;
         this.§ null§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§-P§) : void
      {
         this.§7u§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§?!@§)
         {
            this.§?!@§.§-!7§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §'!,§
      {
         if(this.§?!@§)
         {
            return this.§?!@§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §`a§)
         {
            (_loc3_ as §`a§).setText(param1);
         }
      }
      
      public function §'Y§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §`a§)
         {
            return (_loc2_ as §`a§).§'Y§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §0K§)
         {
            (_loc3_ as §0K§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §!!=§(param1:String, param2:String) : void
      {
         var _loc3_:§]q§ = this.getItemByName(param1) as §]q§;
         if(_loc3_)
         {
            _loc3_.§^B§(param2);
         }
      }
      
      public function §3J§(param1:String) : String
      {
         var _loc2_:§]q§ = this.getItemByName(param1) as §]q§;
         if(_loc2_)
         {
            return _loc2_.§^^§;
         }
         return "";
      }
      
      public function §&!J§() : void
      {
         var _loc1_:§"e§ = null;
         for each(_loc1_ in this.§?!@§.§+q§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §%F§() : Boolean
      {
         var _loc1_:§"e§ = null;
         for each(_loc1_ in this.§?!@§.§+q§)
         {
            if(_loc1_ && _loc1_.§"a§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §>W§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§7u§.getAppWidth(),this.§7u§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§?!@§)
         {
            this.§?!@§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§?!@§)
         {
            this.§?!@§.viewHeight = param1;
         }
      }
      
      public function get §2!J§() : §1Q§
      {
         return this.§7u§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§ null§;
      }
      
      public function get container() : §4!=§
      {
         return this.§?!@§;
      }
   }
}
