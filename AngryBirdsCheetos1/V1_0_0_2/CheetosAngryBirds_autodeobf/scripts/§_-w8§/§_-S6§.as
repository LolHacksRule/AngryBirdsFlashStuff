package §_-w8§
{
   import §_-A§.§_-Hw§;
   import §_-A§.§_-KQ§;
   import §_-A§.§_-YT§;
   import §_-ab§.§_-5q§;
   import §_-ab§.§_-EI§;
   import §_-ab§.§_-EN§;
   import §_-ab§.§_-IP§;
   import §_-sj§.§_-qs§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-S6§ extends Sprite
   {
       
      
      private var §_-4T§:§_-IP§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-Sh§:§_-qs§;
      
      public function §_-S6§(param1:§_-qs§)
      {
         super();
         this.§_-Sh§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§_-4T§ = new §_-IP§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§_-tN§();
         this.§_-4T§.clear();
         this.§_-4T§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-0-M§() : void
      {
         if(this.§_-4T§)
         {
            this.§_-4T§.setActiveStatus(true);
         }
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-tN§() : void
      {
         if(this.§_-4T§)
         {
            this.§_-4T§.setActiveStatus(false);
         }
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-KQ§) : void
      {
         this.§_-Sh§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §_-fz§(param1:String, param2:Boolean) : void
      {
         if(this.§_-4T§)
         {
            this.§_-4T§.§_-aM§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §_-Hw§
      {
         if(this.§_-4T§)
         {
            return this.§_-4T§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-5q§)
         {
            (_loc3_ as §_-5q§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-5q§)
         {
            return (_loc2_ as §_-5q§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-YT§)
         {
            (_loc3_ as §_-YT§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-Kr§(param1:String, param2:String) : void
      {
         var _loc3_:§_-EN§ = this.getItemByName(param1) as §_-EN§;
         if(_loc3_)
         {
            _loc3_.§_-C5§(param2);
         }
      }
      
      public function §_-bf§(param1:String) : String
      {
         var _loc2_:§_-EN§ = this.getItemByName(param1) as §_-EN§;
         if(_loc2_)
         {
            return _loc2_.§_-rM§;
         }
         return "";
      }
      
      public function §_-sl§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-4T§.§_-uU§)
         {
            if(_loc1_ is §_-EI§)
            {
               (_loc1_ as §_-EI§).close();
            }
         }
      }
      
      public function §_-Ng§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-4T§.§_-uU§)
         {
            if(_loc1_ is §_-EI§ && (_loc1_ as §_-EI§).§_-5i§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-Jj§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-Sh§.getAppWidth(),this.§_-Sh§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-IP§
      {
         return this.§_-4T§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-4T§)
         {
            this.§_-4T§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-4T§)
         {
            this.§_-4T§.viewHeight = param1;
         }
      }
   }
}
