package §7!X§
{
   import §#!&§.§0!`§;
   import §#!&§.§1![§;
   import §#!&§.§2l§;
   import §#!&§.§59§;
   import §4;§.§,h§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import §var§.§+!^§;
   import §var§.§8!_§;
   import §var§.§;!&§;
   
   public class §7g§ extends Sprite
   {
       
      
      protected var §+!@§:§59§;
      
      protected var §2b§:MovieClip;
      
      protected var §'-§:§,h§;
      
      public function §7g§(param1:§,h§)
      {
         super();
         this.§'-§ = param1;
         this.§2b§ = new MovieClip();
         addChild(this.§2b§);
         this.§2b§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§+!@§ = new §59§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§9!7§();
         this.§+!@§.clear();
         this.§+!@§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §^"§() : void
      {
         if(this.§+!@§)
         {
            this.§+!@§.setActiveStatus(true);
         }
         visible = true;
         this.§2b§.visible = visible;
      }
      
      public function changeState(param1:§,h§) : void
      {
         this.§9!7§();
         this.§'-§ = param1;
         this.§^"§();
      }
      
      public function §9!7§() : void
      {
         if(this.§+!@§)
         {
            this.§+!@§.setActiveStatus(false);
         }
         visible = false;
         this.§2b§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§+!^§) : void
      {
         this.§'-§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §%[§(param1:String, param2:Boolean) : void
      {
         if(this.§+!@§)
         {
            this.§+!@§.§#P§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §;!&§
      {
         if(this.§+!@§)
         {
            return this.§+!@§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §1![§)
         {
            (_loc3_ as §1![§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §1![§)
         {
            return (_loc2_ as §1![§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §8!_§)
         {
            (_loc3_ as §8!_§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §9!`§(param1:String, param2:String) : void
      {
         var _loc3_:§2l§ = this.getItemByName(param1) as §2l§;
         if(_loc3_)
         {
            _loc3_.§!@§(param2);
         }
      }
      
      public function §,!7§(param1:String) : String
      {
         var _loc2_:§2l§ = this.getItemByName(param1) as §2l§;
         if(_loc2_)
         {
            return _loc2_.§-_§;
         }
         return "";
      }
      
      public function §[Y§() : void
      {
         var _loc1_:§0!`§ = null;
         for each(_loc1_ in this.§+!@§.§0l§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §,p§() : Boolean
      {
         var _loc1_:§0!`§ = null;
         for each(_loc1_ in this.§+!@§.§0l§)
         {
            if(_loc1_ && _loc1_.§<u§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §<!E§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§'-§.§3m§(),this.§'-§.§3Y§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§+!@§)
         {
            this.§+!@§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§+!@§)
         {
            this.§+!@§.viewHeight = param1;
         }
      }
      
      public function get §^7§() : §,h§
      {
         return this.§'-§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§2b§;
      }
      
      public function get container() : §59§
      {
         return this.§+!@§;
      }
   }
}
