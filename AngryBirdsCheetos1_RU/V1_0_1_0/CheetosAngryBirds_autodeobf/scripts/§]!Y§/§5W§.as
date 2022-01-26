package §]!Y§
{
   import §-!O§.§7'§;
   import §]!&§.§"!1§;
   import §]!&§.§#S§;
   import §]!&§.§=!2§;
   import §]!&§.§]!K§;
   import §]!5§.§-!3§;
   import §]!5§.§1k§;
   import §]!5§.§=j§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5W§ extends Sprite
   {
       
      
      protected var §`E§:§]!K§;
      
      protected var §5I§:MovieClip;
      
      protected var §&!R§:§7'§;
      
      public function §5W§(param1:§7'§)
      {
         super();
         this.§&!R§ = param1;
         this.§5I§ = new MovieClip();
         addChild(this.§5I§);
         this.§5I§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§`E§ = new §]!K§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§>%§();
         this.§`E§.clear();
         this.§`E§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §-H§() : void
      {
         if(this.§`E§)
         {
            this.§`E§.setActiveStatus(true);
         }
         visible = true;
         this.§5I§.visible = visible;
      }
      
      public function §]d§(param1:§7'§) : void
      {
         this.§>%§();
         this.§&!R§ = param1;
         this.§-H§();
      }
      
      public function §>%§() : void
      {
         if(this.§`E§)
         {
            this.§`E§.setActiveStatus(false);
         }
         visible = false;
         this.§5I§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§-!3§) : void
      {
         this.§&!R§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §2s§(param1:String, param2:Boolean) : void
      {
         if(this.§`E§)
         {
            this.§`E§.§1-§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §1k§
      {
         if(this.§`E§)
         {
            return this.§`E§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §"!1§)
         {
            (_loc3_ as §"!1§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §"!1§)
         {
            return (_loc2_ as §"!1§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §=j§)
         {
            (_loc3_ as §=j§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §%!S§(param1:String, param2:String) : void
      {
         var _loc3_:§#S§ = this.getItemByName(param1) as §#S§;
         if(_loc3_)
         {
            _loc3_.§[3§(param2);
         }
      }
      
      public function §1!N§(param1:String) : String
      {
         var _loc2_:§#S§ = this.getItemByName(param1) as §#S§;
         if(_loc2_)
         {
            return _loc2_.§for§;
         }
         return "";
      }
      
      public function §-!?§() : void
      {
         var _loc1_:§=!2§ = null;
         for each(_loc1_ in this.§`E§.§0!R§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §'!R§() : Boolean
      {
         var _loc1_:§=!2§ = null;
         for each(_loc1_ in this.§`E§.§0!R§)
         {
            if(_loc1_ && _loc1_.§#6§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §`m§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§&!R§.getAppWidth(),this.§&!R§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§`E§)
         {
            this.§`E§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§`E§)
         {
            this.§`E§.viewHeight = param1;
         }
      }
      
      public function get §do§() : §7'§
      {
         return this.§&!R§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§5I§;
      }
      
      public function get container() : §]!K§
      {
         return this.§`E§;
      }
   }
}
