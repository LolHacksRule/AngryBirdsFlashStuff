package §-M§
{
   import §'G§.§%!%§;
   import §'G§.§'!4§;
   import §'G§.§1!D§;
   import §'G§.§6%§;
   import §-V§.§9d§;
   import §-V§.§@!$§;
   import §-V§.§@R§;
   import §4!H§.§[4§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §3!6§ extends Sprite
   {
       
      
      private var §8!B§:§%!%§;
      
      public var mMovieClip:MovieClip;
      
      public var §,!N§:§[4§;
      
      public function §3!6§(param1:§[4§)
      {
         super();
         this.§,!N§ = param1;
         this.mMovieClip = new MovieClip();
         addChild(this.mMovieClip);
         this.mMovieClip.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§8!B§ = new §%!%§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§'$§();
         this.§8!B§.clear();
         this.§8!B§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §%!<§() : void
      {
         if(this.§8!B§)
         {
            this.§8!B§.setActiveStatus(true);
         }
         visible = true;
         this.mMovieClip.visible = visible;
      }
      
      public function §'$§() : void
      {
         if(this.§8!B§)
         {
            this.§8!B§.setActiveStatus(false);
         }
         visible = false;
         this.mMovieClip.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§@R§) : void
      {
         this.§,!N§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §[!F§(param1:String, param2:Boolean) : void
      {
         if(this.§8!B§)
         {
            this.§8!B§.§&!1§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §@!$§
      {
         if(this.§8!B§)
         {
            return this.§8!B§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §1!D§)
         {
            (_loc3_ as §1!D§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §1!D§)
         {
            return (_loc2_ as §1!D§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §9d§)
         {
            (_loc3_ as §9d§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §[T§(param1:String, param2:String) : void
      {
         var _loc3_:§'!4§ = this.getItemByName(param1) as §'!4§;
         if(_loc3_)
         {
            _loc3_.§=f§(param2);
         }
      }
      
      public function §-Y§(param1:String) : String
      {
         var _loc2_:§'!4§ = this.getItemByName(param1) as §'!4§;
         if(_loc2_)
         {
            return _loc2_.§;!K§;
         }
         return "";
      }
      
      public function §6!3§() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§8!B§.§%!&§)
         {
            if(_loc1_ is §6%§)
            {
               (_loc1_ as §6%§).close();
            }
         }
      }
      
      public function §<2§() : Boolean
      {
         var _loc1_:Object = null;
         for each(_loc1_ in this.§8!B§.§%!&§)
         {
            if(_loc1_ is §6%§ && (_loc1_ as §6%§).§4!>§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §@O§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§,!N§.getAppWidth(),this.§,!N§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function get container() : §%!%§
      {
         return this.§8!B§;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§8!B§)
         {
            this.§8!B§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§8!B§)
         {
            this.§8!B§.viewHeight = param1;
         }
      }
   }
}
