package §^6§
{
   import § !C§.§6!W§;
   import §&V§.§!q§;
   import §&V§.§4o§;
   import §&V§.§9t§;
   import §68§.§9v§;
   import §68§.§[!V§;
   import §68§.§`?§;
   import §68§.§`e§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;l§ extends Sprite
   {
       
      
      protected var §&!G§:§`?§;
      
      protected var §]z§:MovieClip;
      
      protected var §]O§:§6!W§;
      
      public function §;l§(param1:§6!W§)
      {
         super();
         this.§]O§ = param1;
         this.§]z§ = new MovieClip();
         addChild(this.§]z§);
         this.§]z§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§&!G§ = new §`?§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§@^§();
         this.§&!G§.clear();
         this.§&!G§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §%a§() : void
      {
         if(this.§&!G§)
         {
            this.§&!G§.setActiveStatus(true);
         }
         visible = true;
         this.§]z§.visible = visible;
      }
      
      public function changeState(param1:§6!W§) : void
      {
         this.§@^§();
         this.§]O§ = param1;
         this.§%a§();
      }
      
      public function §@^§() : void
      {
         if(this.§&!G§)
         {
            this.§&!G§.setActiveStatus(false);
         }
         visible = false;
         this.§]z§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§9t§) : void
      {
         this.§]O§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §9!V§(param1:String, param2:Boolean) : void
      {
         if(this.§&!G§)
         {
            this.§&!G§.§+!?§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §!q§
      {
         if(this.§&!G§)
         {
            return this.§&!G§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §9v§)
         {
            (_loc3_ as §9v§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §9v§)
         {
            return (_loc2_ as §9v§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §4o§)
         {
            (_loc3_ as §4o§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §3!7§(param1:String, param2:String) : void
      {
         var _loc3_:§[!V§ = this.getItemByName(param1) as §[!V§;
         if(_loc3_)
         {
            _loc3_.§6M§(param2);
         }
      }
      
      public function §7!c§(param1:String) : String
      {
         var _loc2_:§[!V§ = this.getItemByName(param1) as §[!V§;
         if(_loc2_)
         {
            return _loc2_.§3!C§;
         }
         return "";
      }
      
      public function §[!§() : void
      {
         var _loc1_:§`e§ = null;
         for each(_loc1_ in this.§&!G§.§+z§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function § !4§() : Boolean
      {
         var _loc1_:§`e§ = null;
         for each(_loc1_ in this.§&!G§.§+z§)
         {
            if(_loc1_ && _loc1_.§"!!§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §;!>§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§]O§.§6A§(),this.§]O§.§'i§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§&!G§)
         {
            this.§&!G§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§&!G§)
         {
            this.§&!G§.viewHeight = param1;
         }
      }
      
      public function get §-!!§() : §6!W§
      {
         return this.§]O§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§]z§;
      }
      
      public function get container() : §`?§
      {
         return this.§&!G§;
      }
   }
}
