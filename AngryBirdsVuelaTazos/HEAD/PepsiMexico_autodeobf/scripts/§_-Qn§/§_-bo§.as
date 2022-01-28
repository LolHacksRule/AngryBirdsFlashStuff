package §_-Qn§
{
   import §_-7V§.§_-C§;
   import §_-7V§.§_-Gs§;
   import §_-7V§.§_-LB§;
   import §_-Ll§.§_-4G§;
   import §_-Ll§.§_-CD§;
   import §_-Ll§.§_-JL§;
   import §_-Ll§.§_-fZ§;
   import §_-QG§.§_-t6§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-bo§ extends Sprite
   {
       
      
      private var §_-Sb§:§_-4G§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-K§:§_-t6§;
      
      public function §_-bo§(param1:§_-t6§)
      {
         super();
         this.§_-K§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§_-Sb§ = new §_-4G§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§_-Hd§();
         this.§_-Sb§.clear();
         this.§_-Sb§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-UX§() : void
      {
         if(this.§_-Sb§)
         {
            this.§_-Sb§.setActiveStatus(true);
         }
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-Hd§() : void
      {
         if(this.§_-Sb§)
         {
            this.§_-Sb§.setActiveStatus(false);
         }
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-Gs§) : void
      {
         this.§_-K§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §var §(param1:String, param2:Boolean) : void
      {
         if(this.§_-Sb§)
         {
            this.§_-Sb§.§_-Y6§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §_-C§
      {
         if(this.§_-Sb§)
         {
            return this.§_-Sb§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-JL§)
         {
            (_loc3_ as §_-JL§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-JL§)
         {
            return (_loc2_ as §_-JL§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-LB§)
         {
            (_loc3_ as §_-LB§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-Ax§(param1:String, param2:String) : void
      {
         var _loc3_:§_-fZ§ = this.getItemByName(param1) as §_-fZ§;
         if(_loc3_)
         {
            _loc3_.§_-Jk§(param2);
         }
      }
      
      public function §_-OH§(param1:String) : String
      {
         var _loc2_:§_-fZ§ = this.getItemByName(param1) as §_-fZ§;
         if(_loc2_)
         {
            return _loc2_.§_-R8§;
         }
         return "";
      }
      
      public function §_-05§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-Sb§.§_-dD§)
         {
            if(_loc1_ is §_-CD§)
            {
               (_loc1_ as §_-CD§).close();
            }
         }
      }
      
      public function §_-Cz§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-Sb§.§_-dD§)
         {
            if(_loc1_ is §_-CD§ && (_loc1_ as §_-CD§).§_-Kc§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-nw§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-K§.getAppWidth(),this.§_-K§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-4G§
      {
         return this.§_-Sb§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-Sb§)
         {
            this.§_-Sb§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-Sb§)
         {
            this.§_-Sb§.viewHeight = param1;
         }
      }
   }
}
