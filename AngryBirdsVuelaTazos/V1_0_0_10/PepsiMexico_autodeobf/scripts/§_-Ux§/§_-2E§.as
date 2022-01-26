package §_-Ux§
{
   import §_-E-§.§_-IM§;
   import §_-E-§.§_-Yh§;
   import §_-E-§.§_-hw§;
   import §_-E-§.§_-mm§;
   import §_-Je§.§_-RH§;
   import §_-PK§.§_-Jb§;
   import §_-PK§.§_-ZR§;
   import §_-PK§.§_-ds§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-2E§ extends Sprite
   {
       
      
      private var §_-K4§:§_-hw§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-9V§:§_-RH§;
      
      public function §_-2E§(param1:§_-RH§)
      {
         super();
         this.§_-9V§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML) : void
      {
         this.§_-K4§ = new §_-hw§(param1,null,this);
      }
      
      public function clear() : void
      {
         this.§_-VN§();
         this.§_-K4§.clear();
         this.§_-K4§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-XS§() : void
      {
         this.§_-K4§.setActiveStatus(true);
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-VN§() : void
      {
         this.§_-K4§.setActiveStatus(false);
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-Jb§) : void
      {
         this.§_-9V§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §_-MG§(param1:String, param2:Boolean) : void
      {
         this.§_-K4§.§_-VF§(param1,param2);
      }
      
      public function getItemByName(param1:String) : §_-ZR§
      {
         return this.§_-K4§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-mm§)
         {
            (_loc3_ as §_-mm§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-mm§)
         {
            return (_loc2_ as §_-mm§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-ds§)
         {
            (_loc3_ as §_-ds§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-0A§(param1:String, param2:String) : void
      {
         var _loc3_:§_-IM§ = this.getItemByName(param1) as §_-IM§;
         if(_loc3_)
         {
            _loc3_.§_-Xk§(param2);
         }
      }
      
      public function §_-Qi§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-K4§.§_-Oe§)
         {
            if(_loc1_ is §_-Yh§)
            {
               (_loc1_ as §_-Yh§).close();
            }
         }
      }
      
      public function §get §() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-K4§.§_-Oe§)
         {
            if(_loc1_ is §_-Yh§ && (_loc1_ as §_-Yh§).§_-F4§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-MO§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-9V§.getAppWidth(),this.§_-9V§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-hw§
      {
         return this.§_-K4§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-K4§)
         {
            this.§_-K4§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-K4§)
         {
            this.§_-K4§.viewHeight = param1;
         }
      }
   }
}
