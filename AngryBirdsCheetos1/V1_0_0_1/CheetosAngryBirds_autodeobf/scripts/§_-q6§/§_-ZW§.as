package §_-q6§
{
   import §_-9J§.§_-DA§;
   import §_-9J§.§_-mr§;
   import §_-9J§.§_-xD§;
   import §_-ES§.§_-GJ§;
   import §_-ES§.§_-KD§;
   import §_-ES§.§_-L8§;
   import §_-ES§.§_-To§;
   import §_-Py§.§_-eK§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-ZW§ extends Sprite
   {
       
      
      private var §_-ab§:§_-L8§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-BI§:§_-eK§;
      
      public function §_-ZW§(param1:§_-eK§)
      {
         super();
         this.§_-BI§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§_-ab§ = new §_-L8§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§_-jM§();
         this.§_-ab§.clear();
         this.§_-ab§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-2y§() : void
      {
         if(this.§_-ab§)
         {
            this.§_-ab§.setActiveStatus(true);
         }
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-jM§() : void
      {
         if(this.§_-ab§)
         {
            this.§_-ab§.setActiveStatus(false);
         }
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-xD§) : void
      {
         this.§_-BI§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §_-3O§(param1:String, param2:Boolean) : void
      {
         if(this.§_-ab§)
         {
            this.§_-ab§.§_-t7§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §_-mr§
      {
         if(this.§_-ab§)
         {
            return this.§_-ab§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-To§)
         {
            (_loc3_ as §_-To§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-To§)
         {
            return (_loc2_ as §_-To§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-DA§)
         {
            (_loc3_ as §_-DA§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-ur§(param1:String, param2:String) : void
      {
         var _loc3_:§_-GJ§ = this.getItemByName(param1) as §_-GJ§;
         if(_loc3_)
         {
            _loc3_.§_-Ww§(param2);
         }
      }
      
      public function §_-lr§(param1:String) : String
      {
         var _loc2_:§_-GJ§ = this.getItemByName(param1) as §_-GJ§;
         if(_loc2_)
         {
            return _loc2_.§_-JX§;
         }
         return "";
      }
      
      public function §_-23§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-ab§.§_-l0§)
         {
            if(_loc1_ is §_-KD§)
            {
               (_loc1_ as §_-KD§).close();
            }
         }
      }
      
      public function §_-Wn§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-ab§.§_-l0§)
         {
            if(_loc1_ is §_-KD§ && (_loc1_ as §_-KD§).§_-jT§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-qE§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-BI§.getAppWidth(),this.§_-BI§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-L8§
      {
         return this.§_-ab§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-ab§)
         {
            this.§_-ab§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-ab§)
         {
            this.§_-ab§.viewHeight = param1;
         }
      }
   }
}
