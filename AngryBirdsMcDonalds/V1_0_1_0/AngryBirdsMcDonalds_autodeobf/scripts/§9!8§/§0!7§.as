package §9!8§
{
   import §,![§.§'!S§;
   import §,![§.§2!=§;
   import §,![§.§8!?§;
   import §,![§.§[!S§;
   import §-1§.§%#§;
   import §-1§.§3!%§;
   import §-1§.§>!6§;
   import §^5§.§]!,§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0!7§ extends Sprite
   {
       
      
      protected var §+g§:§[!S§;
      
      protected var §#W§:MovieClip;
      
      protected var §1C§:§]!,§;
      
      public function §0!7§(param1:§]!,§)
      {
         super();
         this.§1C§ = param1;
         this.§#W§ = new MovieClip();
         addChild(this.§#W§);
         this.§#W§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§+g§ = new §[!S§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§>!c§();
         this.§+g§.clear();
         this.§+g§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §4b§() : void
      {
         if(this.§+g§)
         {
            this.§+g§.setActiveStatus(true);
         }
         visible = true;
         this.§#W§.visible = visible;
      }
      
      public function changeState(param1:§]!,§) : void
      {
         this.§>!c§();
         this.§1C§ = param1;
         this.§4b§();
      }
      
      public function §>!c§() : void
      {
         if(this.§+g§)
         {
            this.§+g§.setActiveStatus(false);
         }
         visible = false;
         this.§#W§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§%#§) : void
      {
         this.§1C§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §=5§(param1:String, param2:Boolean) : void
      {
         if(this.§+g§)
         {
            this.§+g§.§;T§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §3!%§
      {
         if(this.§+g§)
         {
            return this.§+g§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §'!S§)
         {
            (_loc3_ as §'!S§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §'!S§)
         {
            return (_loc2_ as §'!S§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>!6§)
         {
            (_loc3_ as §>!6§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §@!L§(param1:String, param2:String) : void
      {
         var _loc3_:§8!?§ = this.getItemByName(param1) as §8!?§;
         if(_loc3_)
         {
            _loc3_.§2!I§(param2);
         }
      }
      
      public function §]!g§(param1:String) : String
      {
         var _loc2_:§8!?§ = this.getItemByName(param1) as §8!?§;
         if(_loc2_)
         {
            return _loc2_.§?N§;
         }
         return "";
      }
      
      public function §`!-§() : void
      {
         var _loc1_:§2!=§ = null;
         for each(_loc1_ in this.§+g§.§]_§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §#$§() : Boolean
      {
         var _loc1_:§2!=§ = null;
         for each(_loc1_ in this.§+g§.§]_§)
         {
            if(_loc1_ && _loc1_.§5N§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §!a§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§1C§.§]!-§(),this.§1C§.§<§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§+g§)
         {
            this.§+g§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§+g§)
         {
            this.§+g§.viewHeight = param1;
         }
      }
      
      public function get §<;§() : §]!,§
      {
         return this.§1C§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§#W§;
      }
      
      public function get container() : §[!S§
      {
         return this.§+g§;
      }
   }
}
