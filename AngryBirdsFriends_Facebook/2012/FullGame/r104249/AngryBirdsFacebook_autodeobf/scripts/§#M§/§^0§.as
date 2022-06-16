package §#M§
{
   import §-B§.§#!'§;
   import §-B§.§#p§;
   import §-B§.§<"$§;
   import §-B§.§?!j§;
   import §;n§.§&G§;
   import §;n§.§^!;§;
   import §;n§.§^q§;
   import §=#§.§5!S§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §^0§ extends Sprite
   {
       
      
      protected var §+<§:§?!j§;
      
      protected var §`!d§:MovieClip;
      
      protected var §43§:§5!S§;
      
      public function §^0§(param1:§5!S§)
      {
         super();
         this.§43§ = param1;
         this.§`!d§ = new MovieClip();
         addChild(this.§`!d§);
         this.§`!d§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§+<§ = new §?!j§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§<%§();
         this.§+<§.clear();
         this.§+<§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§+<§)
         {
            this.§+<§.setActiveStatus(true);
         }
         visible = true;
         this.§`!d§.visible = visible;
      }
      
      public function §4!9§(param1:§5!S§) : void
      {
         this.§<%§();
         this.§43§ = param1;
         this.activateView();
      }
      
      public function §<%§() : void
      {
         if(this.§+<§)
         {
            this.§+<§.setActiveStatus(false);
         }
         visible = false;
         this.§`!d§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§^!;§) : void
      {
         this.§43§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§+<§)
         {
            this.§+<§.§!<§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §&G§
      {
         if(this.§+<§)
         {
            return this.§+<§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §#p§)
         {
            (_loc3_ as §#p§).setText(param1);
         }
      }
      
      public function §%m§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §#p§)
         {
            return (_loc2_ as §#p§).§%m§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §^q§)
         {
            (_loc3_ as §^q§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §7^§(param1:String, param2:String) : void
      {
         var _loc3_:§<"$§ = this.getItemByName(param1) as §<"$§;
         if(_loc3_)
         {
            _loc3_.§,t§(param2);
         }
      }
      
      public function §%w§(param1:String) : String
      {
         var _loc2_:§<"$§ = this.getItemByName(param1) as §<"$§;
         if(_loc2_)
         {
            return _loc2_.§@D§;
         }
         return "";
      }
      
      public function §48§() : void
      {
         var _loc1_:§#!'§ = null;
         for each(_loc1_ in this.§+<§.§!!&§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §%!d§() : Boolean
      {
         var _loc1_:§#!'§ = null;
         for each(_loc1_ in this.§+<§.§!!&§)
         {
            if(_loc1_ && _loc1_.§3!Y§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §!M§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§43§.getAppWidth(),this.§43§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§+<§)
         {
            this.§+<§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§+<§)
         {
            this.§+<§.viewHeight = param1;
         }
      }
      
      public function get §@G§() : §5!S§
      {
         return this.§43§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§`!d§;
      }
      
      public function get §@H§() : §?!j§
      {
         return this.§+<§;
      }
   }
}
