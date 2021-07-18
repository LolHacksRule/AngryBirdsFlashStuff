package §_-Ur§
{
   import §_-6r§.§_-7P§;
   import §_-6r§.§_-Tk§;
   import §_-6r§.§_-h3§;
   import §_-F1§.§_-Nk§;
   import §_-F1§.§_-V1§;
   import §_-F1§.§_-k4§;
   import §_-F1§.§_-mr§;
   import §_-y7§.§_-VA§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-ru§ extends Sprite
   {
       
      
      private var §_-gH§:§_-k4§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-q8§:§_-VA§;
      
      public function §_-ru§(param1:§_-VA§)
      {
         super();
         this.§_-q8§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML) : void
      {
         this.§_-gH§ = new §_-k4§(param1,null,this);
      }
      
      public function clear() : void
      {
         this.§_-JE§();
         this.§_-gH§.clear();
         this.§_-gH§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-aN§() : void
      {
         this.§_-gH§.setActiveStatus(true);
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-JE§() : void
      {
         this.§_-gH§.setActiveStatus(false);
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-7P§) : void
      {
         this.§_-q8§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §_-yS§(param1:String, param2:Boolean) : void
      {
         this.§_-gH§.§_-hr§(param1,param2);
      }
      
      public function getItemByName(param1:String) : §_-Tk§
      {
         return this.§_-gH§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-V1§)
         {
            (_loc3_ as §_-V1§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-V1§)
         {
            return (_loc2_ as §_-V1§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-h3§)
         {
            (_loc3_ as §_-h3§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-DR§(param1:String, param2:String) : void
      {
         var _loc3_:§_-mr§ = this.getItemByName(param1) as §_-mr§;
         if(_loc3_)
         {
            _loc3_.§_-Re§(param2);
         }
      }
      
      public function §_-NV§(param1:String) : String
      {
         var _loc2_:§_-mr§ = this.getItemByName(param1) as §_-mr§;
         if(_loc2_)
         {
            return _loc2_.§_-RU§;
         }
         return "";
      }
      
      public function §_-nl§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-gH§.§_-yZ§)
         {
            if(_loc1_ is §_-Nk§)
            {
               (_loc1_ as §_-Nk§).close();
            }
         }
      }
      
      public function §_-0Q§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-gH§.§_-yZ§)
         {
            if(_loc1_ is §_-Nk§ && (_loc1_ as §_-Nk§).§_-DE§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-Ai§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-q8§.getAppWidth(),this.§_-q8§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-k4§
      {
         return this.§_-gH§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-gH§)
         {
            this.§_-gH§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-gH§)
         {
            this.§_-gH§.viewHeight = param1;
         }
      }
   }
}
