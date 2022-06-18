package §5Y§
{
   import §"V§.§true§;
   import §8B§.§+;§;
   import §8B§.§3J§;
   import §8B§.§6!9§;
   import §[V§.§#G§;
   import §[V§.§-!E§;
   import §[V§.§=!'§;
   import §[V§.§`@§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §"!4§ extends Sprite
   {
       
      
      protected var §36§:§=!'§;
      
      protected var §-2§:MovieClip;
      
      protected var §]2§:§true§;
      
      public function §"!4§(param1:§true§)
      {
         super();
         this.§]2§ = param1;
         this.§-2§ = new MovieClip();
         addChild(this.§-2§);
         this.§-2§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§36§ = new §=!'§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§"k§();
         this.§36§.clear();
         this.§36§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §!N§() : void
      {
         if(this.§36§)
         {
            this.§36§.setActiveStatus(true);
         }
         visible = true;
         this.§-2§.visible = visible;
      }
      
      public function §@G§(param1:§true§) : void
      {
         this.§"k§();
         this.§]2§ = param1;
         this.§!N§();
      }
      
      public function §"k§() : void
      {
         if(this.§36§)
         {
            this.§36§.setActiveStatus(false);
         }
         visible = false;
         this.§-2§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§6!9§) : void
      {
         this.§]2§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§36§)
         {
            this.§36§.§,E§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §3J§
      {
         if(this.§36§)
         {
            return this.§36§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §`@§)
         {
            (_loc3_ as §`@§).setText(param1);
         }
      }
      
      public function §@!2§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §`@§)
         {
            return (_loc2_ as §`@§).§@!2§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §+;§)
         {
            (_loc3_ as §+;§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §9U§(param1:String, param2:String) : void
      {
         var _loc3_:§#G§ = this.getItemByName(param1) as §#G§;
         if(_loc3_)
         {
            _loc3_.§[^§(param2);
         }
      }
      
      public function §!!'§(param1:String) : String
      {
         var _loc2_:§#G§ = this.getItemByName(param1) as §#G§;
         if(_loc2_)
         {
            return _loc2_.§]C§;
         }
         return "";
      }
      
      public function §7!E§() : void
      {
         var _loc1_:§-!E§ = null;
         for each(_loc1_ in this.§36§.§7A§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §?N§() : Boolean
      {
         var _loc1_:§-!E§ = null;
         for each(_loc1_ in this.§36§.§7A§)
         {
            if(_loc1_ && _loc1_.§'!H§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §"A§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§]2§.getAppWidth(),this.§]2§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§36§)
         {
            this.§36§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§36§)
         {
            this.§36§.viewHeight = param1;
         }
      }
      
      public function get §"3§() : §true§
      {
         return this.§]2§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§-2§;
      }
      
      public function get container() : §=!'§
      {
         return this.§36§;
      }
   }
}
