package §8v§
{
   import §1Y§.§+$§;
   import §7'§.§ ?§;
   import §7'§.§'q§;
   import §7'§.§-!6§;
   import §?>§.§ !V§;
   import §?>§.§5t§;
   import §?>§.§<l§;
   import §?>§.§=p§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §#Z§ extends Sprite
   {
       
      
      protected var §0!"§:§ !V§;
      
      protected var §-B§:MovieClip;
      
      protected var §2]§:§+$§;
      
      public function §#Z§(param1:§+$§)
      {
         super();
         this.§2]§ = param1;
         this.§-B§ = new MovieClip();
         addChild(this.§-B§);
         this.§-B§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§0!"§ = new § !V§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§<s§();
         this.§0!"§.clear();
         this.§0!"§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §2e§() : void
      {
         if(this.§0!"§)
         {
            this.§0!"§.setActiveStatus(true);
         }
         visible = true;
         this.§-B§.visible = visible;
      }
      
      public function §+!>§(param1:§+$§) : void
      {
         this.§<s§();
         this.§2]§ = param1;
         this.§2e§();
      }
      
      public function §<s§() : void
      {
         if(this.§0!"§)
         {
            this.§0!"§.setActiveStatus(false);
         }
         visible = false;
         this.§-B§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§-!6§) : void
      {
         this.§2]§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §5!`§(param1:String, param2:Boolean) : void
      {
         if(this.§0!"§)
         {
            this.§0!"§.§2Q§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : § ?§
      {
         if(this.§0!"§)
         {
            return this.§0!"§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §<l§)
         {
            (_loc3_ as §<l§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §<l§)
         {
            return (_loc2_ as §<l§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §'q§)
         {
            (_loc3_ as §'q§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §7c§(param1:String, param2:String) : void
      {
         var _loc3_:§5t§ = this.getItemByName(param1) as §5t§;
         if(_loc3_)
         {
            _loc3_.§`t§(param2);
         }
      }
      
      public function §;T§(param1:String) : String
      {
         var _loc2_:§5t§ = this.getItemByName(param1) as §5t§;
         if(_loc2_)
         {
            return _loc2_.§'h§;
         }
         return "";
      }
      
      public function §6!^§() : void
      {
         var _loc1_:§=p§ = null;
         for each(_loc1_ in this.§0!"§.§!x§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §3T§() : Boolean
      {
         var _loc1_:§=p§ = null;
         for each(_loc1_ in this.§0!"§.§!x§)
         {
            if(_loc1_ && _loc1_.§8!B§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §]!Y§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§2]§.getAppWidth(),this.§2]§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§0!"§)
         {
            this.§0!"§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§0!"§)
         {
            this.§0!"§.viewHeight = param1;
         }
      }
      
      public function get §`!F§() : §+$§
      {
         return this.§2]§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§-B§;
      }
      
      public function get container() : § !V§
      {
         return this.§0!"§;
      }
   }
}
