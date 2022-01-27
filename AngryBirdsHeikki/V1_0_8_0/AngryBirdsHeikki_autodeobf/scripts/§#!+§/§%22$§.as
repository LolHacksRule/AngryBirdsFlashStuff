package §#!+§
{
   import §!a§.§&6§;
   import §-!V§.§##§;
   import §-!V§.§+V§;
   import §-!V§.§>,§;
   import §-!V§.§@§;
   import §;!0§.§"[§;
   import §;!0§.§-!'§;
   import §;!0§.§4!I§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §"$§ extends Sprite
   {
       
      
      protected var §5!P§:§@§;
      
      protected var §"!_§:MovieClip;
      
      protected var §^!>§:§&6§;
      
      public function §"$§(param1:§&6§)
      {
         super();
         this.§^!>§ = param1;
         this.§"!_§ = new MovieClip();
         addChild(this.§"!_§);
         this.§"!_§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§5!P§ = new §@§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§&!M§();
         this.§5!P§.clear();
         this.§5!P§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §6!P§() : void
      {
         if(this.§5!P§)
         {
            this.§5!P§.setActiveStatus(true);
         }
         visible = true;
         this.§"!_§.visible = visible;
      }
      
      public function changeState(param1:§&6§) : void
      {
         this.§&!M§();
         this.§^!>§ = param1;
         this.§6!P§();
      }
      
      public function §&!M§() : void
      {
         if(this.§5!P§)
         {
            this.§5!P§.setActiveStatus(false);
         }
         visible = false;
         this.§"!_§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§4!I§) : void
      {
         this.§^!>§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §!l§(param1:String, param2:Boolean) : void
      {
         if(this.§5!P§)
         {
            this.§5!P§.§5!C§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §-!'§
      {
         if(this.§5!P§)
         {
            return this.§5!P§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §+V§)
         {
            (_loc3_ as §+V§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §+V§)
         {
            return (_loc2_ as §+V§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §"[§)
         {
            (_loc3_ as §"[§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §&!6§(param1:String, param2:String) : void
      {
         var _loc3_:§##§ = this.getItemByName(param1) as §##§;
         if(_loc3_)
         {
            _loc3_.§2!T§(param2);
         }
      }
      
      public function §=a§(param1:String) : String
      {
         var _loc2_:§##§ = this.getItemByName(param1) as §##§;
         if(_loc2_)
         {
            return _loc2_.§]!G§;
         }
         return "";
      }
      
      public function §-3§() : void
      {
         var _loc1_:§>,§ = null;
         for each(_loc1_ in this.§5!P§.§@!^§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §=M§() : Boolean
      {
         var _loc1_:§>,§ = null;
         for each(_loc1_ in this.§5!P§.§@!^§)
         {
            if(_loc1_ && _loc1_.§=]§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §,!d§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§^!>§.§#!&§(),this.§^!>§.§'V§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§5!P§)
         {
            this.§5!P§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§5!P§)
         {
            this.§5!P§.viewHeight = param1;
         }
      }
      
      public function get §]_§() : §&6§
      {
         return this.§^!>§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§"!_§;
      }
      
      public function get container() : §@§
      {
         return this.§5!P§;
      }
   }
}
