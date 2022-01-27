package §]!-§
{
   import §"U§.§"]§;
   import §"U§.§36§;
   import §"U§.§@4§;
   import §"U§.§[Q§;
   import §'!O§.§'!#§;
   import §6v§.§@V§;
   import §6v§.§`M§;
   import §6v§.§var §;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`o§ extends Sprite
   {
       
      
      protected var §"F§:§[Q§;
      
      protected var §"!G§:MovieClip;
      
      protected var §`B§:§'!#§;
      
      public function §`o§(param1:§'!#§)
      {
         super();
         this.§`B§ = param1;
         this.§"!G§ = new MovieClip();
         addChild(this.§"!G§);
         this.§"!G§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§"F§ = new §[Q§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§!q§();
         this.§"F§.clear();
         this.§"F§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §[C§() : void
      {
         if(this.§"F§)
         {
            this.§"F§.setActiveStatus(true);
         }
         visible = true;
         this.§"!G§.visible = visible;
      }
      
      public function §>3§(param1:§'!#§) : void
      {
         this.§!q§();
         this.§`B§ = param1;
         this.§[C§();
      }
      
      public function §!q§() : void
      {
         if(this.§"F§)
         {
            this.§"F§.setActiveStatus(false);
         }
         visible = false;
         this.§"!G§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§`M§) : void
      {
         this.§`B§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§"F§)
         {
            this.§"F§.§>V§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §var §
      {
         if(this.§"F§)
         {
            return this.§"F§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §@4§)
         {
            (_loc3_ as §@4§).setText(param1);
         }
      }
      
      public function §null §(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §@4§)
         {
            return (_loc2_ as §@4§).§null §();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §@V§)
         {
            (_loc3_ as §@V§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §4!J§(param1:String, param2:String) : void
      {
         var _loc3_:§"]§ = this.getItemByName(param1) as §"]§;
         if(_loc3_)
         {
            _loc3_.§false§(param2);
         }
      }
      
      public function §0#§(param1:String) : String
      {
         var _loc2_:§"]§ = this.getItemByName(param1) as §"]§;
         if(_loc2_)
         {
            return _loc2_.§!Q§;
         }
         return "";
      }
      
      public function §!h§() : void
      {
         var _loc1_:§36§ = null;
         for each(_loc1_ in this.§"F§.§`!O§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §&T§() : Boolean
      {
         var _loc1_:§36§ = null;
         for each(_loc1_ in this.§"F§.§`!O§)
         {
            if(_loc1_ && _loc1_.§9'§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2!3§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§`B§.getAppWidth(),this.§`B§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§"F§)
         {
            this.§"F§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§"F§)
         {
            this.§"F§.viewHeight = param1;
         }
      }
      
      public function get §+G§() : §'!#§
      {
         return this.§`B§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§"!G§;
      }
      
      public function get container() : §[Q§
      {
         return this.§"F§;
      }
   }
}
