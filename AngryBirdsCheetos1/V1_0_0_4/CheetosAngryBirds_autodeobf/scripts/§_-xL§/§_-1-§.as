package §_-xL§
{
   import §_-16§.§_-8n§;
   import §_-16§.§_-MF§;
   import §_-16§.§_-VR§;
   import §_-EH§.§_-uz§;
   import §_-Eg§.§_-MT§;
   import §_-Eg§.§_-RK§;
   import §_-Eg§.§_-Up§;
   import §_-Eg§.§_-y2§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-1-§ extends Sprite
   {
       
      
      private var §_-3B§:§_-Up§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-nL§:§_-uz§;
      
      public function §_-1-§(param1:§_-uz§)
      {
         super();
         this.§_-nL§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§_-3B§ = new §_-Up§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§_-gk§();
         this.§_-3B§.clear();
         this.§_-3B§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-Zg§() : void
      {
         if(this.§_-3B§)
         {
            this.§_-3B§.setActiveStatus(true);
         }
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-gk§() : void
      {
         if(this.§_-3B§)
         {
            this.§_-3B§.setActiveStatus(false);
         }
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-VR§) : void
      {
         this.§_-nL§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §_-yT§(param1:String, param2:Boolean) : void
      {
         if(this.§_-3B§)
         {
            this.§_-3B§.§_-km§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §_-MF§
      {
         if(this.§_-3B§)
         {
            return this.§_-3B§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-MT§)
         {
            (_loc3_ as §_-MT§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-MT§)
         {
            return (_loc2_ as §_-MT§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-8n§)
         {
            (_loc3_ as §_-8n§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-Ej§(param1:String, param2:String) : void
      {
         var _loc3_:§_-y2§ = this.getItemByName(param1) as §_-y2§;
         if(_loc3_)
         {
            _loc3_.§_-aj§(param2);
         }
      }
      
      public function §_-tQ§(param1:String) : String
      {
         var _loc2_:§_-y2§ = this.getItemByName(param1) as §_-y2§;
         if(_loc2_)
         {
            return _loc2_.§_-2i§;
         }
         return "";
      }
      
      public function §_-Yu§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-3B§.§_-3P§)
         {
            if(_loc1_ is §_-RK§)
            {
               (_loc1_ as §_-RK§).close();
            }
         }
      }
      
      public function §_-OT§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-3B§.§_-3P§)
         {
            if(_loc1_ is §_-RK§ && (_loc1_ as §_-RK§).§_-tk§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-S3§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-nL§.getAppWidth(),this.§_-nL§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-Up§
      {
         return this.§_-3B§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-3B§)
         {
            this.§_-3B§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-3B§)
         {
            this.§_-3B§.viewHeight = param1;
         }
      }
   }
}
