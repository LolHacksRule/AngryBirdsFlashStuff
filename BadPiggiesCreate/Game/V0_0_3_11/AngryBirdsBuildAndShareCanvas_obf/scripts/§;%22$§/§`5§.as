package §;"$§
{
   import §+!d§.§"r§;
   import §+!d§.§6=§;
   import §+!d§.§8!=§;
   import §2!O§.§,w§;
   import §;!A§.§ !F§;
   import §;!A§.§#!w§;
   import §;!A§.§'!K§;
   import §;!A§.§;!u§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`5§ extends Sprite
   {
       
      
      protected var § v§:§;!u§;
      
      protected var §-!$§:MovieClip;
      
      protected var §-!H§:§,w§;
      
      public function §`5§(param1:§,w§)
      {
         super();
         this.§-!H§ = param1;
         this.§-!$§ = new MovieClip();
         addChild(this.§-!$§);
         this.§-!$§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§ v§ = new §;!u§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§8P§();
         this.§ v§.clear();
         this.§ v§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §%!>§() : void
      {
         if(this.§ v§)
         {
            this.§ v§.setActiveStatus(true);
         }
         visible = true;
         this.§-!$§.visible = visible;
      }
      
      public function §@@§(param1:§,w§) : void
      {
         this.§8P§();
         this.§-!H§ = param1;
         this.§%!>§();
      }
      
      public function §8P§() : void
      {
         if(this.§ v§)
         {
            this.§ v§.setActiveStatus(false);
         }
         visible = false;
         this.§-!$§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§6=§) : void
      {
         this.§-!H§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§ v§)
         {
            this.§ v§.§&!7§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §8!=§
      {
         if(this.§ v§)
         {
            return this.§ v§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is § !F§)
         {
            (_loc3_ as § !F§).setText(param1);
         }
      }
      
      public function §5!§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is § !F§)
         {
            return (_loc2_ as § !F§).§5!§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §"r§)
         {
            (_loc3_ as §"r§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §4!w§(param1:String, param2:String) : void
      {
         var _loc3_:§'!K§ = this.getItemByName(param1) as §'!K§;
         if(_loc3_)
         {
            _loc3_.§;!g§(param2);
         }
      }
      
      public function §!!v§(param1:String) : String
      {
         var _loc2_:§'!K§ = this.getItemByName(param1) as §'!K§;
         if(_loc2_)
         {
            return _loc2_.§ ,§;
         }
         return "";
      }
      
      public function §3>§() : void
      {
         var _loc1_:§#!w§ = null;
         for each(_loc1_ in this.§ v§.§`6§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §7!Z§() : Boolean
      {
         var _loc1_:§#!w§ = null;
         for each(_loc1_ in this.§ v§.§`6§)
         {
            if(_loc1_ && _loc1_.§<!&§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §'"%§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§-!H§.getAppWidth(),this.§-!H§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§ v§)
         {
            this.§ v§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§ v§)
         {
            this.§ v§.viewHeight = param1;
         }
      }
      
      public function get §=R§() : §,w§
      {
         return this.§-!H§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§-!$§;
      }
      
      public function get container() : §;!u§
      {
         return this.§ v§;
      }
   }
}
