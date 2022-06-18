package §&8§
{
   import §"I§.§-x§;
   import §7L§.§+!$§;
   import §7L§.§-!B§;
   import §7L§.§9I§;
   import §[]§.§'!X§;
   import §[]§.§-`§;
   import §[]§.§<!V§;
   import §[]§.§`!`§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §<O§ extends Sprite
   {
       
      
      protected var §>!3§:§`!`§;
      
      protected var §!^§:MovieClip;
      
      protected var §1W§:§-x§;
      
      public function §<O§(param1:§-x§)
      {
         super();
         this.§1W§ = param1;
         this.§!^§ = new MovieClip();
         addChild(this.§!^§);
         this.§!^§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§>!3§ = new §`!`§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§@!H§();
         this.§>!3§.clear();
         this.§>!3§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §0!;§() : void
      {
         if(this.§>!3§)
         {
            this.§>!3§.setActiveStatus(true);
         }
         visible = true;
         this.§!^§.visible = visible;
      }
      
      public function §8!0§(param1:§-x§) : void
      {
         this.§@!H§();
         this.§1W§ = param1;
         this.§0!;§();
      }
      
      public function §@!H§() : void
      {
         if(this.§>!3§)
         {
            this.§>!3§.setActiveStatus(false);
         }
         visible = false;
         this.§!^§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§9I§) : void
      {
         this.§1W§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §-!_§(param1:String, param2:Boolean) : void
      {
         if(this.§>!3§)
         {
            this.§>!3§.§4"§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §-!B§
      {
         if(this.§>!3§)
         {
            return this.§>!3§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §'!X§)
         {
            (_loc3_ as §'!X§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §'!X§)
         {
            return (_loc2_ as §'!X§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §+!$§)
         {
            (_loc3_ as §+!$§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function each(param1:String, param2:String) : void
      {
         var _loc3_:§-`§ = this.getItemByName(param1) as §-`§;
         if(_loc3_)
         {
            _loc3_.§;!@§(param2);
         }
      }
      
      public function §continue§(param1:String) : String
      {
         var _loc2_:§-`§ = this.getItemByName(param1) as §-`§;
         if(_loc2_)
         {
            return _loc2_.§<!O§;
         }
         return "";
      }
      
      public function §>v§() : void
      {
         var _loc1_:§<!V§ = null;
         for each(_loc1_ in this.§>!3§.§!h§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §;!4§() : Boolean
      {
         var _loc1_:§<!V§ = null;
         for each(_loc1_ in this.§>!3§.§!h§)
         {
            if(_loc1_ && _loc1_.§3E§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §&§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§1W§.getAppWidth(),this.§1W§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§>!3§)
         {
            this.§>!3§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§>!3§)
         {
            this.§>!3§.viewHeight = param1;
         }
      }
      
      public function get §`D§() : §-x§
      {
         return this.§1W§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§!^§;
      }
      
      public function get container() : §`!`§
      {
         return this.§>!3§;
      }
   }
}
