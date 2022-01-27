package §+k§
{
   import §,!7§.§2a§;
   import §,!7§.§5!k§;
   import §,!7§.§;k§;
   import §,!7§.§]I§;
   import §6B§.§&9§;
   import §6B§.§5![§;
   import §6B§.§?"2§;
   import §6O§.§6!x§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0"4§ extends Sprite
   {
       
      
      protected var § 1§:§5!k§;
      
      protected var §3!U§:MovieClip;
      
      protected var §>"3§:§6!x§;
      
      public function §0"4§(param1:§6!x§)
      {
         super();
         this.§>"3§ = param1;
         this.§3!U§ = new MovieClip();
         addChild(this.§3!U§);
         this.§3!U§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§ 1§ = new §5!k§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§>n§();
         this.§ 1§.clear();
         this.§ 1§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §="6§() : void
      {
         if(this.§ 1§)
         {
            this.§ 1§.setActiveStatus(true);
         }
         visible = true;
         this.§3!U§.visible = visible;
      }
      
      public function changeState(param1:§6!x§) : void
      {
         this.§>n§();
         this.§>"3§ = param1;
         this.§="6§();
      }
      
      public function §>n§() : void
      {
         if(this.§ 1§)
         {
            this.§ 1§.setActiveStatus(false);
         }
         visible = false;
         this.§3!U§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§?"2§) : void
      {
         this.§>"3§.§>!f§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§ 1§)
         {
            this.§ 1§.§@v§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §&9§
      {
         if(this.§ 1§)
         {
            return this.§ 1§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §2a§)
         {
            (_loc3_ as §2a§).setText(param1);
            return;
         }
         throw new Error("--#UIView[setText]:: object was not an instance of UITextFieldRovio");
      }
      
      public function §;!E§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §2a§)
         {
            return (_loc2_ as §2a§).§;!E§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §5![§)
         {
            (_loc3_ as §5![§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §"!1§(param1:String, param2:String) : void
      {
         var _loc3_:§]I§ = this.getItemByName(param1) as §]I§;
         if(_loc3_)
         {
            _loc3_.§#"B§(param2);
         }
      }
      
      public function §>!-§(param1:String) : String
      {
         var _loc2_:§]I§ = this.getItemByName(param1) as §]I§;
         if(_loc2_)
         {
            return _loc2_.§>! §;
         }
         return "";
      }
      
      public function §>@§() : void
      {
         var _loc1_:§;k§ = null;
         for each(_loc1_ in this.§ 1§.§<!d§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §3"4§() : Boolean
      {
         var _loc1_:§;k§ = null;
         for each(_loc1_ in this.§ 1§.§<!d§)
         {
            if(_loc1_ && _loc1_.§<!m§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §[d§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§>"3§.getAppWidth(),this.§>"3§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§ 1§)
         {
            this.§ 1§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§ 1§)
         {
            this.§ 1§.viewHeight = param1;
         }
      }
      
      public function get §!!3§() : §6!x§
      {
         return this.§>"3§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§3!U§;
      }
      
      public function get container() : §5!k§
      {
         return this.§ 1§;
      }
   }
}
