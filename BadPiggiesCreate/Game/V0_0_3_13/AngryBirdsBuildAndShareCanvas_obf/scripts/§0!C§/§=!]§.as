package §0!C§
{
   import § true§.§0!g§;
   import § true§.§1H§;
   import § true§.§<!V§;
   import § true§.§<"-§;
   import §4!j§.§""3§;
   import §4!j§.§0p§;
   import §4!j§.§[!f§;
   import §>!5§.§>!T§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §=!]§ extends Sprite
   {
       
      
      protected var §'"&§:§1H§;
      
      protected var §-!`§:MovieClip;
      
      protected var §=p§:§>!T§;
      
      public function §=!]§(param1:§>!T§)
      {
         super();
         this.§=p§ = param1;
         this.§-!`§ = new MovieClip();
         addChild(this.§-!`§);
         this.§-!`§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§'"&§ = new §1H§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§^!N§();
         this.§'"&§.clear();
         this.§'"&§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §6!n§() : void
      {
         if(this.§'"&§)
         {
            this.§'"&§.setActiveStatus(true);
         }
         visible = true;
         this.§-!`§.visible = visible;
      }
      
      public function §0!b§(param1:§>!T§) : void
      {
         this.§^!N§();
         this.§=p§ = param1;
         this.§6!n§();
      }
      
      public function §^!N§() : void
      {
         if(this.§'"&§)
         {
            this.§'"&§.setActiveStatus(false);
         }
         visible = false;
         this.§-!`§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§0p§) : void
      {
         this.§=p§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§'"&§)
         {
            this.§'"&§.§"`§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §[!f§
      {
         if(this.§'"&§)
         {
            return this.§'"&§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §<"-§)
         {
            (_loc3_ as §<"-§).setText(param1);
         }
      }
      
      public function §@!;§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §<"-§)
         {
            return (_loc2_ as §<"-§).§@!;§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §""3§)
         {
            (_loc3_ as §""3§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §;s§(param1:String, param2:String) : void
      {
         var _loc3_:§0!g§ = this.getItemByName(param1) as §0!g§;
         if(_loc3_)
         {
            _loc3_.§,K§(param2);
         }
      }
      
      public function §3!2§(param1:String) : String
      {
         var _loc2_:§0!g§ = this.getItemByName(param1) as §0!g§;
         if(_loc2_)
         {
            return _loc2_.§[!D§;
         }
         return "";
      }
      
      public function §0!&§() : void
      {
         var _loc1_:§<!V§ = null;
         for each(_loc1_ in this.§'"&§.§[!P§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §=[§() : Boolean
      {
         var _loc1_:§<!V§ = null;
         for each(_loc1_ in this.§'"&§.§[!P§)
         {
            if(_loc1_ && _loc1_.§@?§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §6"2§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§=p§.getAppWidth(),this.§=p§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§'"&§)
         {
            this.§'"&§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§'"&§)
         {
            this.§'"&§.viewHeight = param1;
         }
      }
      
      public function get §-!p§() : §>!T§
      {
         return this.§=p§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§-!`§;
      }
      
      public function get container() : §1H§
      {
         return this.§'"&§;
      }
   }
}
