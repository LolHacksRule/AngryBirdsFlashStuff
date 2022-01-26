package §_-QM§
{
   import §_-TE§.§_-PN§;
   import §_-TW§.§_-CI§;
   import §_-TW§.§_-c3§;
   import §_-TW§.§_-iD§;
   import §_-TW§.§_-qq§;
   import §_-xN§.§_-WL§;
   import §_-xN§.§_-fA§;
   import §_-xN§.§_-pB§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §_-Ns§ extends Sprite
   {
       
      
      private var §_-EU§:§_-qq§;
      
      public var mMovieClip:MovieClip;
      
      public var §_-af§:§_-PN§;
      
      public function §_-Ns§(param1:§_-PN§)
      {
         super();
         this.§_-af§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML) : void
      {
         this.§_-EU§ = new §_-qq§(param1,null,this);
      }
      
      public function clear() : void
      {
         this.§_-a1§();
         this.§_-EU§.clear();
         this.§_-EU§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §_-ck§() : void
      {
         this.§_-EU§.setActiveStatus(true);
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §_-a1§() : void
      {
         this.§_-EU§.setActiveStatus(false);
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§_-pB§) : void
      {
         this.§_-af§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §_-YC§(param1:String, param2:Boolean) : void
      {
         this.§_-EU§.§_-ZC§(param1,param2);
      }
      
      public function getItemByName(param1:String) : §_-fA§
      {
         return this.§_-EU§.getItemByName(param1);
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-iD§)
         {
            (_loc3_ as §_-iD§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §_-iD§)
         {
            return (_loc2_ as §_-iD§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §_-WL§)
         {
            (_loc3_ as §_-WL§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §_-ob§(param1:String, param2:String) : void
      {
         var _loc3_:§_-CI§ = this.getItemByName(param1) as §_-CI§;
         if(_loc3_)
         {
            _loc3_.§_-gK§(param2);
         }
      }
      
      public function §_-gt§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-EU§.§_-rp§)
         {
            if(_loc1_ is §_-c3§)
            {
               (_loc1_ as §_-c3§).close();
            }
         }
      }
      
      public function §_-0B§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§_-EU§.§_-rp§)
         {
            if(_loc1_ is §_-c3§ && (_loc1_ as §_-c3§).§_-UE§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §_-5P§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§_-af§.getAppWidth(),this.§_-af§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §_-qq§
      {
         return this.§_-EU§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§_-EU§)
         {
            this.§_-EU§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§_-EU§)
         {
            this.§_-EU§.viewHeight = param1;
         }
      }
   }
}
