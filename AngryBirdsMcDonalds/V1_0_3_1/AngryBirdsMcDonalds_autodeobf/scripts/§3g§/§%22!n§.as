package §3g§
{
   import §&!V§.§=O§;
   import §2y§.§%L§;
   import §2y§.§?!H§;
   import §2y§.§?`§;
   import §2y§.§]`§;
   import §3!R§.§,=§;
   import §3!R§.§0!R§;
   import §3!R§.§81§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §"!n§ extends Sprite
   {
       
      
      protected var §%!-§:§]`§;
      
      protected var §9!3§:MovieClip;
      
      protected var §1X§:§=O§;
      
      public function §"!n§(param1:§=O§)
      {
         super();
         this.§1X§ = param1;
         this.§9!3§ = new MovieClip();
         addChild(this.§9!3§);
         this.§9!3§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§%!-§ = new §]`§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§=]§();
         this.§%!-§.clear();
         this.§%!-§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §4o§() : void
      {
         if(this.§%!-§)
         {
            this.§%!-§.setActiveStatus(true);
         }
         visible = true;
         this.§9!3§.visible = visible;
      }
      
      public function changeState(param1:§=O§) : void
      {
         this.§=]§();
         this.§1X§ = param1;
         this.§4o§();
      }
      
      public function §=]§() : void
      {
         if(this.§%!-§)
         {
            this.§%!-§.setActiveStatus(false);
         }
         visible = false;
         this.§9!3§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§81§) : void
      {
         this.§1X§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §,!H§(param1:String, param2:Boolean) : void
      {
         if(this.§%!-§)
         {
            this.§%!-§.§9!&§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §0!R§
      {
         if(this.§%!-§)
         {
            return this.§%!-§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §?`§)
         {
            (_loc3_ as §?`§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §?`§)
         {
            return (_loc2_ as §?`§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §,=§)
         {
            (_loc3_ as §,=§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §4!Z§(param1:String, param2:String) : void
      {
         var _loc3_:§?!H§ = this.getItemByName(param1) as §?!H§;
         if(_loc3_)
         {
            _loc3_.§7!j§(param2);
         }
      }
      
      public function §8!'§(param1:String) : String
      {
         var _loc2_:§?!H§ = this.getItemByName(param1) as §?!H§;
         if(_loc2_)
         {
            return _loc2_.§1!4§;
         }
         return "";
      }
      
      public function §+8§() : void
      {
         var _loc1_:§%L§ = null;
         for each(_loc1_ in this.§%!-§.§,]§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §in §() : Boolean
      {
         var _loc1_:§%L§ = null;
         for each(_loc1_ in this.§%!-§.§,]§)
         {
            if(_loc1_ && _loc1_.§ !!§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §[e§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§1X§.§2i§(),this.§1X§.§[!c§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§%!-§)
         {
            this.§%!-§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§%!-§)
         {
            this.§%!-§.viewHeight = param1;
         }
      }
      
      public function get §?<§() : §=O§
      {
         return this.§1X§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§9!3§;
      }
      
      public function get container() : §]`§
      {
         return this.§%!-§;
      }
   }
}
