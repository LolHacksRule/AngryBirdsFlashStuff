package §^6§
{
   import §8!$§.§@![§;
   import §<!0§.§ !B§;
   import §<!0§.§'!%§;
   import §<!0§.§3!W§;
   import §>P§.§%`§;
   import §>P§.§3I§;
   import §>P§.§9A§;
   import §>P§.§]"4§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;!j§ extends Sprite
   {
       
      
      protected var §-"1§:§]"4§;
      
      protected var § Z§:MovieClip;
      
      protected var §`-§:§@![§;
      
      public function §;!j§(param1:§@![§)
      {
         super();
         this.§`-§ = param1;
         this.§ Z§ = new MovieClip();
         addChild(this.§ Z§);
         this.§ Z§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§-"1§ = new §]"4§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§7!L§();
         this.§-"1§.clear();
         this.§-"1§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §`J§() : void
      {
         if(this.§-"1§)
         {
            this.§-"1§.setActiveStatus(true);
         }
         visible = true;
         this.§ Z§.visible = visible;
      }
      
      public function §9!s§(param1:§@![§) : void
      {
         this.§7!L§();
         this.§`-§ = param1;
         this.§`J§();
      }
      
      public function §7!L§() : void
      {
         if(this.§-"1§)
         {
            this.§-"1§.setActiveStatus(false);
         }
         visible = false;
         this.§ Z§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§'!%§) : void
      {
         this.§`-§.§-!a§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§-"1§)
         {
            this.§-"1§.§#"#§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : § !B§
      {
         if(this.§-"1§)
         {
            return this.§-"1§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §%`§)
         {
            (_loc3_ as §%`§).setText(param1);
            return;
         }
         throw new Error("--#UIView[setText]:: object was not an instance of UITextFieldRovio");
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §%`§)
         {
            return (_loc2_ as §%`§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §3!W§)
         {
            (_loc3_ as §3!W§).setComponentState(param1);
         }
      }
      
      public function §!%§(param1:String) : Array
      {
         return null;
      }
      
      public function §8s§(param1:String, param2:String) : void
      {
         var _loc3_:§3I§ = this.getItemByName(param1) as §3I§;
         if(_loc3_)
         {
            _loc3_.§1O§(param2);
         }
      }
      
      public function §^"0§(param1:String) : String
      {
         var _loc2_:§3I§ = this.getItemByName(param1) as §3I§;
         if(_loc2_)
         {
            return _loc2_.§0!1§;
         }
         return "";
      }
      
      public function §^!4§() : void
      {
         var _loc1_:§9A§ = null;
         for each(_loc1_ in this.§-"1§.§ !"§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §-,§() : Boolean
      {
         var _loc1_:§9A§ = null;
         for each(_loc1_ in this.§-"1§.§ !"§)
         {
            if(_loc1_ && _loc1_.§<!Q§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §0k§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§`-§.getAppWidth(),this.§`-§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§-"1§)
         {
            this.§-"1§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§-"1§)
         {
            this.§-"1§.viewHeight = param1;
         }
      }
      
      public function get §1"6§() : §@![§
      {
         return this.§`-§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§ Z§;
      }
      
      public function get container() : §]"4§
      {
         return this.§-"1§;
      }
   }
}
