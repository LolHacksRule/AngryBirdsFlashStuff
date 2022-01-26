package §_-8J§
{
   import §_-IC§.§_-Uw§;
   import §_-Ys§.§_-7o§;
   import §_-Ys§.§_-TM§;
   import §_-Ys§.§_-o-§;
   import §_-of§.§_-Ci§;
   import §_-of§.§_-H4§;
   import §_-of§.§_-Sa§;
   import §_-of§.§_-rt§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-8s§ extends Sprite
   {
       
      
      private var §_-wB§:§_-H4§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-OX§:§_-Uw§;
      
      public function §_-8s§(param1:§_-Uw§)
      {
         super();
         this.§_-OX§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML) : void
      {
         this.§_-wB§ = new §_-H4§(param1,null,this);
      }
      
      public function clear() : void
      {
         this.§_-8h§();
         this.§_-wB§.clear();
         this.§_-wB§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-gt§() : void
      {
         this.§_-wB§.setActiveStatus(true);
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-8h§() : void
      {
         this.§_-wB§.setActiveStatus(false);
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-o-§) : void
      {
         this.§_-OX§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §_-Z9§(param1:String, param2:Boolean) : void
      {
         this.§_-wB§.§_-0B§(param1,param2);
      }
      
      public function getItemByName(param1:String) : §_-7o§
      {
         return this.§_-wB§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-rt§)
         {
            (_loc3_ as §_-rt§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-rt§)
         {
            return (_loc2_ as §_-rt§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-TM§)
         {
            (_loc3_ as §_-TM§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-OM§(param1:String, param2:String) : void
      {
         var _loc3_:§_-Ci§ = this.getItemByName(param1) as §_-Ci§;
         if(_loc3_)
         {
            _loc3_.§_-w§(param2);
         }
      }
      
      public function §_-OH§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-wB§.§_-X5§)
         {
            if(_loc1_ is §_-Sa§)
            {
               (_loc1_ as §_-Sa§).close();
            }
         }
      }
      
      public function §_-FI§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-wB§.§_-X5§)
         {
            if(_loc1_ is §_-Sa§ && (_loc1_ as §_-Sa§).§_-s4§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-42§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-OX§.getAppWidth(),this.§_-OX§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-H4§
      {
         return this.§_-wB§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-wB§)
         {
            this.§_-wB§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-wB§)
         {
            this.§_-wB§.viewHeight = param1;
         }
      }
   }
}
