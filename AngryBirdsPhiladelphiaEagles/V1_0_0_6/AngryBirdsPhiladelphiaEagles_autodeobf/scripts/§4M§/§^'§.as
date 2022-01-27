package §4M§
{
   import §!!0§.§ true§;
   import §!!0§.§2§;
   import §!!0§.override;
   import §8]§.§&8§;
   import §8]§.§+a§;
   import §8]§.§2!N§;
   import §8]§.§?N§;
   import §;!!§.§0H§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §^'§ extends Sprite
   {
       
      
      protected var § y§:§+a§;
      
      protected var §`+§:MovieClip;
      
      protected var §"!7§:§0H§;
      
      public function §^'§(param1:§0H§)
      {
         super();
         this.§"!7§ = param1;
         this.§`+§ = new MovieClip();
         addChild(this.§`+§);
         this.§`+§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§ y§ = new §+a§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§6!@§();
         this.§ y§.clear();
         this.§ y§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §>j§() : void
      {
         if(this.§ y§)
         {
            this.§ y§.setActiveStatus(true);
         }
         visible = true;
         this.§`+§.visible = visible;
      }
      
      public function §6!§(param1:§0H§) : void
      {
         this.§6!@§();
         this.§"!7§ = param1;
         this.§>j§();
      }
      
      public function §6!@§() : void
      {
         if(this.§ y§)
         {
            this.§ y§.setActiveStatus(false);
         }
         visible = false;
         this.§`+§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§ true§) : void
      {
         this.§"!7§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§ y§)
         {
            this.§ y§.§]I§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : override
      {
         if(this.§ y§)
         {
            return this.§ y§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §?N§)
         {
            (_loc3_ as §?N§).setText(param1);
         }
      }
      
      public function §?k§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §?N§)
         {
            return (_loc2_ as §?N§).§?k§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §2§)
         {
            (_loc3_ as §2§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §%>§(param1:String, param2:String) : void
      {
         var _loc3_:§2!N§ = this.getItemByName(param1) as §2!N§;
         if(_loc3_)
         {
            _loc3_.§&s§(param2);
         }
      }
      
      public function §'j§(param1:String) : String
      {
         var _loc2_:§2!N§ = this.getItemByName(param1) as §2!N§;
         if(_loc2_)
         {
            return _loc2_.§^2§;
         }
         return "";
      }
      
      public function §^!'§() : void
      {
         var _loc1_:§&8§ = null;
         for each(_loc1_ in this.§ y§.§with§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §!!P§() : Boolean
      {
         var _loc1_:§&8§ = null;
         for each(_loc1_ in this.§ y§.§with§)
         {
            if(_loc1_ && _loc1_.§"j§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §0!%§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§"!7§.getAppWidth(),this.§"!7§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§ y§)
         {
            this.§ y§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§ y§)
         {
            this.§ y§.viewHeight = param1;
         }
      }
      
      public function get §?H§() : §0H§
      {
         return this.§"!7§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§`+§;
      }
      
      public function get container() : §+a§
      {
         return this.§ y§;
      }
   }
}
