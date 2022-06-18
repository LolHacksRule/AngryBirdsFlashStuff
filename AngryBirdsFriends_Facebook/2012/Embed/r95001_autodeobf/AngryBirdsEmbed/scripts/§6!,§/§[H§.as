package §6!,§
{
   import §0m§.§1!,§;
   import §0u§.§"`§;
   import §0u§.§&]§;
   import §0u§.§^S§;
   import §4-§.§'J§;
   import §4-§.§-%§;
   import §4-§.§1U§;
   import §4-§.§>Z§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §[H§ extends Sprite
   {
       
      
      private var §?>§:§'J§;
      
      public var mMovieClip:MovieClip;
      
      public var §7Z§:§1!,§;
      
      public function §[H§(param1:§1!,§)
      {
         super();
         this.§7Z§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§?>§ = new §'J§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§'y§();
         this.§?>§.clear();
         this.§?>§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §"!B§() : void
      {
         if(this.§?>§)
         {
            this.§?>§.setActiveStatus(true);
         }
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §'y§() : void
      {
         if(this.§?>§)
         {
            this.§?>§.setActiveStatus(false);
         }
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§&]§) : void
      {
         this.§7Z§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§?>§)
         {
            this.§?>§.§,b§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §^S§
      {
         if(this.§?>§)
         {
            return this.§?>§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>Z§)
         {
            (_loc3_ as §>Z§).setText(param1);
         }
      }
      
      public function §1C§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §>Z§)
         {
            return (_loc2_ as §>Z§).§1C§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §"`§)
         {
            (_loc3_ as §"`§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §@!B§(param1:String, param2:String) : void
      {
         var _loc3_:§1U§ = this.getItemByName(param1) as §1U§;
         if(_loc3_)
         {
            _loc3_.§]v§(param2);
         }
      }
      
      public function §%J§(param1:String) : String
      {
         var _loc2_:§1U§ = this.getItemByName(param1) as §1U§;
         if(_loc2_)
         {
            return _loc2_.§@m§;
         }
         return "";
      }
      
      public function §29§() : void
      {
         var _loc1_:§-%§ = null;
         for each(_loc1_ in this.§?>§.§2J§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §`5§() : Boolean
      {
         var _loc1_:§-%§ = null;
         for each(_loc1_ in this.§?>§.§2J§)
         {
            if(_loc1_ && _loc1_.§'N§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §>7§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§7Z§.getAppWidth(),this.§7Z§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §'J§
      {
         return this.§?>§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§?>§)
         {
            this.§?>§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§?>§)
         {
            this.§?>§.viewHeight = param1;
         }
      }
   }
}
