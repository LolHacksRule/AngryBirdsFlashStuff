package §7p§
{
   import §,!C§.§#!4§;
   import §,!C§.§-6§;
   import §,!C§.§07§;
   import §,!C§.§3!&§;
   import §,!H§.§ for§;
   import §@-§.§ x§;
   import §@-§.§-m§;
   import §@-§.§[y§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §%g§ extends Sprite
   {
       
      
      protected var §=d§:§-6§;
      
      protected var §"!9§:MovieClip;
      
      protected var §3!8§:§ for§;
      
      public function §%g§(param1:§ for§)
      {
         super();
         this.§3!8§ = param1;
         this.§"!9§ = new MovieClip();
         addChild(this.§"!9§);
         this.§"!9§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§=d§ = new §-6§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§8W§();
         this.§=d§.clear();
         this.§=d§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §4!`§() : void
      {
         if(this.§=d§)
         {
            this.§=d§.setActiveStatus(true);
         }
         visible = true;
         this.§"!9§.visible = visible;
      }
      
      public function changeState(param1:§ for§) : void
      {
         this.§8W§();
         this.§3!8§ = param1;
         this.§4!`§();
      }
      
      public function §8W§() : void
      {
         if(this.§=d§)
         {
            this.§=d§.setActiveStatus(false);
         }
         visible = false;
         this.§"!9§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§[y§) : void
      {
         this.§3!8§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §0!o§(param1:String, param2:Boolean) : void
      {
         if(this.§=d§)
         {
            this.§=d§.§6m§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §-m§
      {
         if(this.§=d§)
         {
            return this.§=d§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §3!&§)
         {
            (_loc3_ as §3!&§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §3!&§)
         {
            return (_loc2_ as §3!&§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is § x§)
         {
            (_loc3_ as § x§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §;l§(param1:String, param2:String) : void
      {
         var _loc3_:§#!4§ = this.getItemByName(param1) as §#!4§;
         if(_loc3_)
         {
            _loc3_.§1P§(param2);
         }
      }
      
      public function §`P§(param1:String) : String
      {
         var _loc2_:§#!4§ = this.getItemByName(param1) as §#!4§;
         if(_loc2_)
         {
            return _loc2_.§#!m§;
         }
         return "";
      }
      
      public function §#V§() : void
      {
         var _loc1_:§07§ = null;
         for each(_loc1_ in this.§=d§.§@!g§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §2y§() : Boolean
      {
         var _loc1_:§07§ = null;
         for each(_loc1_ in this.§=d§.§@!g§)
         {
            if(_loc1_ && _loc1_.§ u§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §+!E§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§3!8§.§9$§(),this.§3!8§.§]!=§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§=d§)
         {
            this.§=d§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§=d§)
         {
            this.§=d§.viewHeight = param1;
         }
      }
      
      public function get §`!2§() : § for§
      {
         return this.§3!8§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§"!9§;
      }
      
      public function get container() : §-6§
      {
         return this.§=d§;
      }
   }
}
