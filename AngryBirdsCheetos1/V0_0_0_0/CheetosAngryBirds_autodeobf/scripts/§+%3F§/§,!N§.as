package §+?§
{
   import §8!8§.§#_§;
   import §8!8§.§1!-§;
   import §8!8§.§4!C§;
   import §8!8§.§<!C§;
   import §@R§.§']§;
   import §@R§.§<d§;
   import §@R§.§]^§;
   import §]2§.§[4§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,!N§ extends Sprite
   {
       
      
      private var §08§:§4!C§;
      
      public var mMovieClip:MovieClip;
      
      public var §%!<§:§[4§;
      
      public function §,!N§(param1:§[4§)
      {
         super();
         this.§%!<§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§08§ = new §4!C§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§[!F§();
         this.§08§.clear();
         this.§08§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §'$§() : void
      {
         if(this.§08§)
         {
            this.§08§.setActiveStatus(true);
         }
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §[!F§() : void
      {
         if(this.§08§)
         {
            this.§08§.setActiveStatus(false);
         }
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§]^§) : void
      {
         this.§%!<§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §[T§(param1:String, param2:Boolean) : void
      {
         if(this.§08§)
         {
            this.§08§.§1!D§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §']§
      {
         if(this.§08§)
         {
            return this.§08§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §1!-§)
         {
            (_loc3_ as §1!-§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §1!-§)
         {
            return (_loc2_ as §1!-§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §<d§)
         {
            (_loc3_ as §<d§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §-Y§(param1:String, param2:String) : void
      {
         var _loc3_:§<!C§ = this.getItemByName(param1) as §<!C§;
         if(_loc3_)
         {
            _loc3_.§&-§(param2);
         }
      }
      
      public function §6!3§(param1:String) : String
      {
         var _loc2_:§<!C§ = this.getItemByName(param1) as §<!C§;
         if(_loc2_)
         {
            return _loc2_.§0e§;
         }
         return "";
      }
      
      public function §<2§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§08§.§@k§)
         {
            if(_loc1_ is §#_§)
            {
               (_loc1_ as §#_§).close();
            }
         }
      }
      
      public function §@O§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§08§.§@k§)
         {
            if(_loc1_ is §#_§ && (_loc1_ as §#_§).§+F§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function § 2§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§%!<§.getAppWidth(),this.§%!<§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §4!C§
      {
         return this.§08§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§08§)
         {
            this.§08§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§08§)
         {
            this.§08§.viewHeight = param1;
         }
      }
   }
}
