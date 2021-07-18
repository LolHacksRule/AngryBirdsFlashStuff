package §<u§
{
   import §'!N§.§#!V§;
   import §'!N§.§,2§;
   import §'!N§.§2O§;
   import §'!N§.§[!%§;
   import §-!"§.§=p§;
   import §8P§.§&-§;
   import §8P§.§1A§;
   import §8P§.§4!Y§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §]!Q§ extends Sprite
   {
       
      
      protected var §6!"§:§2O§;
      
      protected var §,n§:MovieClip;
      
      protected var §2!'§:§=p§;
      
      public function §]!Q§(param1:§=p§)
      {
         super();
         this.§2!'§ = param1;
         this.§,n§ = new MovieClip();
         addChild(this.§,n§);
         this.§,n§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§6!"§ = new §2O§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§@m§();
         this.§6!"§.clear();
         this.§6!"§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §6,§() : void
      {
         if(this.§6!"§)
         {
            this.§6!"§.setActiveStatus(true);
         }
         visible = true;
         this.§,n§.visible = visible;
      }
      
      public function changeState(param1:§=p§) : void
      {
         this.§@m§();
         this.§2!'§ = param1;
         this.§6,§();
      }
      
      public function §@m§() : void
      {
         if(this.§6!"§)
         {
            this.§6!"§.setActiveStatus(false);
         }
         visible = false;
         this.§,n§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§1A§) : void
      {
         this.§2!'§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function § '§(param1:String, param2:Boolean) : void
      {
         if(this.§6!"§)
         {
            this.§6!"§.§`x§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §&-§
      {
         if(this.§6!"§)
         {
            return this.§6!"§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §[!%§)
         {
            (_loc3_ as §[!%§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §[!%§)
         {
            return (_loc2_ as §[!%§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §4!Y§)
         {
            (_loc3_ as §4!Y§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §"!@§(param1:String, param2:String) : void
      {
         var _loc3_:§,2§ = this.getItemByName(param1) as §,2§;
         if(_loc3_)
         {
            _loc3_.§%v§(param2);
         }
      }
      
      public function §]!H§(param1:String) : String
      {
         var _loc2_:§,2§ = this.getItemByName(param1) as §,2§;
         if(_loc2_)
         {
            return _loc2_.§]!c§;
         }
         return "";
      }
      
      public function §-!F§() : void
      {
         var _loc1_:§#!V§ = null;
         for each(_loc1_ in this.§6!"§.§],§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §`!E§() : Boolean
      {
         var _loc1_:§#!V§ = null;
         for each(_loc1_ in this.§6!"§.§],§)
         {
            if(_loc1_ && _loc1_.§ !9§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §#!3§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§2!'§.§+C§(),this.§2!'§.§6!K§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§6!"§)
         {
            this.§6!"§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§6!"§)
         {
            this.§6!"§.viewHeight = param1;
         }
      }
      
      public function get §1!B§() : §=p§
      {
         return this.§2!'§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§,n§;
      }
      
      public function get container() : §2O§
      {
         return this.§6!"§;
      }
   }
}
