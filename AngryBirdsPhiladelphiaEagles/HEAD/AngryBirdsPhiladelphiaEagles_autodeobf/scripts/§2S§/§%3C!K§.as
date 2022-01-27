package §2S§
{
   import §%!;§.§!L§;
   import §9c§.§,x§;
   import §9c§.§3i§;
   import §9c§.§6P§;
   import §=!H§.§"L§;
   import §=!H§.§7w§;
   import §=!H§.§9V§;
   import §=!H§.§`S§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §<!K§ extends Sprite
   {
       
      
      protected var §6!N§:§9V§;
      
      protected var §&0§:MovieClip;
      
      protected var §86§:§!L§;
      
      public function §<!K§(param1:§!L§)
      {
         super();
         this.§86§ = param1;
         this.§&0§ = new MovieClip();
         addChild(this.§&0§);
         this.§&0§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§6!N§ = new §9V§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§%s§();
         this.§6!N§.clear();
         this.§6!N§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §%%§() : void
      {
         if(this.§6!N§)
         {
            this.§6!N§.setActiveStatus(true);
         }
         visible = true;
         this.§&0§.visible = visible;
      }
      
      public function §"!8§(param1:§!L§) : void
      {
         this.§%s§();
         this.§86§ = param1;
         this.§%%§();
      }
      
      public function §%s§() : void
      {
         if(this.§6!N§)
         {
            this.§6!N§.setActiveStatus(false);
         }
         visible = false;
         this.§&0§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§,x§) : void
      {
         this.§86§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§6!N§)
         {
            this.§6!N§.§0!1§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §3i§
      {
         if(this.§6!N§)
         {
            return this.§6!N§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §`S§)
         {
            (_loc3_ as §`S§).setText(param1);
         }
      }
      
      public function §67§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §`S§)
         {
            return (_loc2_ as §`S§).§67§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §6P§)
         {
            (_loc3_ as §6P§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §2!M§(param1:String, param2:String) : void
      {
         var _loc3_:§7w§ = this.getItemByName(param1) as §7w§;
         if(_loc3_)
         {
            _loc3_.§0!Q§(param2);
         }
      }
      
      public function §+o§(param1:String) : String
      {
         var _loc2_:§7w§ = this.getItemByName(param1) as §7w§;
         if(_loc2_)
         {
            return _loc2_.§4!L§;
         }
         return "";
      }
      
      public function §"?§() : void
      {
         var _loc1_:§"L§ = null;
         for each(_loc1_ in this.§6!N§.§=!L§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §34§() : Boolean
      {
         var _loc1_:§"L§ = null;
         for each(_loc1_ in this.§6!N§.§=!L§)
         {
            if(_loc1_ && _loc1_.§!U§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §-Z§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§86§.getAppWidth(),this.§86§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§6!N§)
         {
            this.§6!N§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§6!N§)
         {
            this.§6!N§.viewHeight = param1;
         }
      }
      
      public function get §]_§() : §!L§
      {
         return this.§86§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&0§;
      }
      
      public function get container() : §9V§
      {
         return this.§6!N§;
      }
   }
}
