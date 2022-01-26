package §_-1p§
{
   import §_-58§.§_-WC§;
   import §_-58§.§_-iR§;
   import §_-58§.§_-sg§;
   import §_-58§.§_-tH§;
   import §_-J-§.§_-9C§;
   import §_-J-§.§_-BT§;
   import §_-J-§.§_-ZG§;
   import §_-cu§.§_-UO§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-K9§ extends Sprite
   {
       
      
      private var §_-LK§:§_-WC§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-K7§:§_-UO§;
      
      public function §_-K9§(param1:§_-UO§)
      {
         super();
         this.§_-K7§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML) : void
      {
         this.§_-LK§ = new §_-WC§(param1,null,this);
      }
      
      public function clear() : void
      {
         this.§_-Q6§();
         this.§_-LK§.clear();
         this.§_-LK§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-ZB§() : void
      {
         this.§_-LK§.setActiveStatus(true);
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-Q6§() : void
      {
         this.§_-LK§.setActiveStatus(false);
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-ZG§) : void
      {
         this.§_-K7§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §_-xP§(param1:String, param2:Boolean) : void
      {
         this.§_-LK§.§_-LQ§(param1,param2);
      }
      
      public function getItemByName(param1:String) : §_-9C§
      {
         return this.§_-LK§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-sg§)
         {
            (_loc3_ as §_-sg§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-sg§)
         {
            return (_loc2_ as §_-sg§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-BT§)
         {
            (_loc3_ as §_-BT§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-J8§(param1:String, param2:String) : void
      {
         var _loc3_:§_-iR§ = this.getItemByName(param1) as §_-iR§;
         if(_loc3_)
         {
            _loc3_.§_-Cp§(param2);
         }
      }
      
      public function §_-Oj§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-LK§.§_-7u§)
         {
            if(_loc1_ is §_-tH§)
            {
               (_loc1_ as §_-tH§).close();
            }
         }
      }
      
      public function §_-p5§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-LK§.§_-7u§)
         {
            if(_loc1_ is §_-tH§ && (_loc1_ as §_-tH§).§_-S7§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-cH§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-K7§.getAppWidth(),this.§_-K7§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-WC§
      {
         return this.§_-LK§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-LK§)
         {
            this.§_-LK§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-LK§)
         {
            this.§_-LK§.viewHeight = param1;
         }
      }
   }
}
