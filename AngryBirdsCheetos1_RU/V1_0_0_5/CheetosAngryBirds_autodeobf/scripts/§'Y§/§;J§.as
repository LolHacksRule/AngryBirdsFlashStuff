package §'Y§
{
   import § =§.§ x§;
   import §<s§.§&4§;
   import §<s§.§'k§;
   import §<s§.§]@§;
   import §[%§.§&a§;
   import §[%§.§+![§;
   import §[%§.§2l§;
   import §[%§.§<@§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;J§ extends Sprite
   {
       
      
      protected var §5X§:§&a§;
      
      protected var §=D§:MovieClip;
      
      protected var §5>§:§ x§;
      
      public function §;J§(param1:§ x§)
      {
         super();
         this.§5>§ = param1;
         this.§=D§ = new MovieClip();
         addChild(this.§=D§);
         this.§=D§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§5X§ = new §&a§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§7Y§();
         this.§5X§.clear();
         this.§5X§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §[!V§() : void
      {
         if(this.§5X§)
         {
            this.§5X§.setActiveStatus(true);
         }
         visible = true;
         this.§=D§.visible = visible;
      }
      
      public function §3<§(param1:§ x§) : void
      {
         this.§7Y§();
         this.§5>§ = param1;
         this.§[!V§();
      }
      
      public function §7Y§() : void
      {
         if(this.§5X§)
         {
            this.§5X§.setActiveStatus(false);
         }
         visible = false;
         this.§=D§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§]@§) : void
      {
         this.§5>§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §5T§(param1:String, param2:Boolean) : void
      {
         if(this.§5X§)
         {
            this.§5X§.§?!3§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §'k§
      {
         if(this.§5X§)
         {
            return this.§5X§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §<@§)
         {
            (_loc3_ as §<@§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §<@§)
         {
            return (_loc2_ as §<@§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §&4§)
         {
            (_loc3_ as §&4§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §#A§(param1:String, param2:String) : void
      {
         var _loc3_:§+![§ = this.getItemByName(param1) as §+![§;
         if(_loc3_)
         {
            _loc3_.§5x§(param2);
         }
      }
      
      public function §?V§(param1:String) : String
      {
         var _loc2_:§+![§ = this.getItemByName(param1) as §+![§;
         if(_loc2_)
         {
            return _loc2_.§9!%§;
         }
         return "";
      }
      
      public function §<!@§() : void
      {
         var _loc1_:§2l§ = null;
         for each(_loc1_ in this.§5X§.§-8§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §0!9§() : Boolean
      {
         var _loc1_:§2l§ = null;
         for each(_loc1_ in this.§5X§.§-8§)
         {
            if(_loc1_ && _loc1_.§ !+§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function § T§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§5>§.getAppWidth(),this.§5>§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§5X§)
         {
            this.§5X§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§5X§)
         {
            this.§5X§.viewHeight = param1;
         }
      }
      
      public function get §%!J§() : § x§
      {
         return this.§5>§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§=D§;
      }
      
      public function get container() : §&a§
      {
         return this.§5X§;
      }
   }
}
