package §>!8§
{
   import §!!L§.§&!R§;
   import §'b§.§'!$§;
   import §'b§.§'^§;
   import §'b§.§3I§;
   import §'b§.§6!-§;
   import §6l§.§ l§;
   import §6l§.§#!Z§;
   import §6l§.§-a§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4!0§ extends Sprite
   {
       
      
      protected var §3=§:§'^§;
      
      protected var §3x§:MovieClip;
      
      protected var §]m§:§&!R§;
      
      public function §4!0§(param1:§&!R§)
      {
         super();
         this.§]m§ = param1;
         this.§3x§ = new MovieClip();
         addChild(this.§3x§);
         this.§3x§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§3=§ = new §'^§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§<!T§();
         this.§3=§.clear();
         this.§3=§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §"<§() : void
      {
         if(this.§3=§)
         {
            this.§3=§.setActiveStatus(true);
         }
         visible = true;
         this.§3x§.visible = visible;
      }
      
      public function changeState(param1:§&!R§) : void
      {
         this.§<!T§();
         this.§]m§ = param1;
         this.§"<§();
      }
      
      public function §<!T§() : void
      {
         if(this.§3=§)
         {
            this.§3=§.setActiveStatus(false);
         }
         visible = false;
         this.§3x§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§#!Z§) : void
      {
         this.§]m§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §!!<§(param1:String, param2:Boolean) : void
      {
         if(this.§3=§)
         {
            this.§3=§.§!V§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §-a§
      {
         if(this.§3=§)
         {
            return this.§3=§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §6!-§)
         {
            (_loc3_ as §6!-§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §6!-§)
         {
            return (_loc2_ as §6!-§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is § l§)
         {
            (_loc3_ as § l§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §4;§(param1:String, param2:String) : void
      {
         var _loc3_:§'!$§ = this.getItemByName(param1) as §'!$§;
         if(_loc3_)
         {
            _loc3_.§39§(param2);
         }
      }
      
      public function §<m§(param1:String) : String
      {
         var _loc2_:§'!$§ = this.getItemByName(param1) as §'!$§;
         if(_loc2_)
         {
            return _loc2_.§#+§;
         }
         return "";
      }
      
      public function §-!?§() : void
      {
         var _loc1_:§3I§ = null;
         for each(_loc1_ in this.§3=§.§ C§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §?!0§() : Boolean
      {
         var _loc1_:§3I§ = null;
         for each(_loc1_ in this.§3=§.§ C§)
         {
            if(_loc1_ && _loc1_.§-N§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2]§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§]m§.§@!?§(),this.§]m§.§@!U§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§3=§)
         {
            this.§3=§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§3=§)
         {
            this.§3=§.viewHeight = param1;
         }
      }
      
      public function get §8![§() : §&!R§
      {
         return this.§]m§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§3x§;
      }
      
      public function get container() : §'^§
      {
         return this.§3=§;
      }
   }
}
