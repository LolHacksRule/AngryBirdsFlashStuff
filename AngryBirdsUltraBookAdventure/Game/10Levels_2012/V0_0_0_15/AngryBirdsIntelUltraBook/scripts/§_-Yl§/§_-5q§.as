package §_-Yl§
{
   import §_-6C§.§_-05d§;
   import §_-6C§.§_-0Eo§;
   import §_-6C§.§_-SW§;
   import §_-6C§.§_-gt§;
   import §_-MN§.§_-rD§;
   import §_-MN§.§_-rR§;
   import §_-MN§.§_-wU§;
   import §_-x8§.§_-nG§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-5q§ extends Sprite
   {
       
      
      protected var §_-7c§:§_-gt§;
      
      protected var §_-Y4§:MovieClip;
      
      protected var §_-bQ§:§_-nG§;
      
      public function §_-5q§(param1:§_-nG§)
      {
         super();
         this.§_-bQ§ = param1;
         this.§_-Y4§ = new MovieClip();
         addChild(this.§_-Y4§);
         this.§_-Y4§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§_-7c§ = new §_-gt§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§_-nr§();
         this.§_-7c§.clear();
         this.§_-7c§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§_-7c§)
         {
            this.§_-7c§.setActiveStatus(true);
         }
         visible = true;
         this.§_-Y4§.visible = visible;
      }
      
      public function §_-LG§(param1:§_-nG§) : void
      {
         this.§_-nr§();
         this.§_-bQ§ = param1;
         this.activateView();
      }
      
      public function §_-nr§() : void
      {
         if(this.§_-7c§)
         {
            this.§_-7c§.setActiveStatus(false);
         }
         visible = false;
         this.§_-Y4§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-wU§) : void
      {
         this.§_-bQ§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§_-7c§)
         {
            this.§_-7c§.§_-dA§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §_-rD§
      {
         if(this.§_-7c§)
         {
            return this.§_-7c§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-0Eo§)
         {
            (_loc3_ as §_-0Eo§).setText(param1);
         }
      }
      
      public function §_-06e§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-0Eo§)
         {
            return (_loc2_ as §_-0Eo§).§_-06e§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-rR§)
         {
            (_loc3_ as §_-rR§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-oK§(param1:String, param2:String) : void
      {
         var _loc3_:§_-05d§ = this.getItemByName(param1) as §_-05d§;
         if(_loc3_)
         {
            _loc3_.§_-F8§(param2);
         }
      }
      
      public function §_-0ER§(param1:String) : String
      {
         var _loc2_:§_-05d§ = this.getItemByName(param1) as §_-05d§;
         if(_loc2_)
         {
            return _loc2_.§_-eR§;
         }
         return "";
      }
      
      public function §_-hW§() : void
      {
         var _loc1_:§_-SW§ = null;
         for each(_loc1_ in this.§_-7c§.§_-057§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §_-Sf§() : Boolean
      {
         var _loc1_:§_-SW§ = null;
         for each(_loc1_ in this.§_-7c§.§_-057§)
         {
            if(_loc1_ && _loc1_.§_-ej§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-Zv§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-bQ§.getAppWidth(),this.§_-bQ§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-7c§)
         {
            this.§_-7c§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-7c§)
         {
            this.§_-7c§.viewHeight = param1;
         }
      }
      
      public function get §_-Dh§() : §_-nG§
      {
         return this.§_-bQ§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§_-Y4§;
      }
      
      public function get §_-jX§() : §_-gt§
      {
         return this.§_-7c§;
      }
   }
}
