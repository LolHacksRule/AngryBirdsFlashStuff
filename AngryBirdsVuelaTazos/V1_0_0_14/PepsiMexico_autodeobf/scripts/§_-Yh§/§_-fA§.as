package §_-Yh§
{
   import §_-Jx§.§_-Ao§;
   import §_-Jx§.§_-Tc§;
   import §_-Jx§.§_-dI§;
   import §_-hf§.§_-0J§;
   import §_-hf§.§_-3H§;
   import §_-hf§.§_-WL§;
   import §_-hf§.§_-b-§;
   import §_-qT§.§_-O5§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-fA§ extends Sprite
   {
       
      
      private var §_-tQ§:§_-WL§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-PN§:§_-O5§;
      
      public function §_-fA§(param1:§_-O5§)
      {
         super();
         this.§_-PN§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML) : void
      {
         this.§_-tQ§ = new §_-WL§(param1,null,this);
      }
      
      public function clear() : void
      {
         this.§_-HS§();
         this.§_-tQ§.clear();
         this.§_-tQ§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-M3§() : void
      {
         this.§_-tQ§.setActiveStatus(true);
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-HS§() : void
      {
         this.§_-tQ§.setActiveStatus(false);
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-Ao§) : void
      {
         this.§_-PN§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §_-cX§(param1:String, param2:Boolean) : void
      {
         this.§_-tQ§.§_-lj§(param1,param2);
      }
      
      public function getItemByName(param1:String) : §_-dI§
      {
         return this.§_-tQ§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-0J§)
         {
            (_loc3_ as §_-0J§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-0J§)
         {
            return (_loc2_ as §_-0J§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-Tc§)
         {
            (_loc3_ as §_-Tc§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-Sf§(param1:String, param2:String) : void
      {
         var _loc3_:§_-b-§ = this.getItemByName(param1) as §_-b-§;
         if(_loc3_)
         {
            _loc3_.§_-S1§(param2);
         }
      }
      
      public function §_-Ax§(param1:String) : String
      {
         var _loc2_:§_-b-§ = this.getItemByName(param1) as §_-b-§;
         if(_loc2_)
         {
            return _loc2_.§_-Bb§;
         }
         return "";
      }
      
      public function §_-QV§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-tQ§.§_-pf§)
         {
            if(_loc1_ is §_-3H§)
            {
               (_loc1_ as §_-3H§).close();
            }
         }
      }
      
      public function §_-Hn§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-tQ§.§_-pf§)
         {
            if(_loc1_ is §_-3H§ && (_loc1_ as §_-3H§).§_-F2§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-ys§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-PN§.getAppWidth(),this.§_-PN§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-WL§
      {
         return this.§_-tQ§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-tQ§)
         {
            this.§_-tQ§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-tQ§)
         {
            this.§_-tQ§.viewHeight = param1;
         }
      }
   }
}
