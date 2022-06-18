package §[R§
{
   import §+n§.§&+§;
   import §+n§.§3P§;
   import §+n§.§^!%§;
   import §1G§.§`U§;
   import §3'§.§5f§;
   import §3'§.§6k§;
   import §3'§.§8I§;
   import §3'§.§>!F§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5h§ extends Sprite
   {
       
      
      protected var §0N§:§8I§;
      
      protected var §=H§:MovieClip;
      
      protected var §,!@§:§`U§;
      
      public function §5h§(param1:§`U§)
      {
         super();
         this.§,!@§ = param1;
         this.§=H§ = new MovieClip();
         addChild(this.§=H§);
         this.§=H§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§0N§ = new §8I§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§3!>§();
         this.§0N§.clear();
         this.§0N§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §0j§() : void
      {
         if(this.§0N§)
         {
            this.§0N§.setActiveStatus(true);
         }
         visible = true;
         this.§=H§.visible = visible;
      }
      
      public function §<p§(param1:§`U§) : void
      {
         this.§3!>§();
         this.§,!@§ = param1;
         this.§0j§();
      }
      
      public function §3!>§() : void
      {
         if(this.§0N§)
         {
            this.§0N§.setActiveStatus(false);
         }
         visible = false;
         this.§=H§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§^!%§) : void
      {
         this.§,!@§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§0N§)
         {
            this.§0N§.§4-§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §&+§
      {
         if(this.§0N§)
         {
            return this.§0N§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §6k§)
         {
            (_loc3_ as §6k§).setText(param1);
         }
      }
      
      public function §"<§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §6k§)
         {
            return (_loc2_ as §6k§).§"<§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §3P§)
         {
            (_loc3_ as §3P§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §,!3§(param1:String, param2:String) : void
      {
         var _loc3_:§5f§ = this.getItemByName(param1) as §5f§;
         if(_loc3_)
         {
            _loc3_.§@9§(param2);
         }
      }
      
      public function §0e§(param1:String) : String
      {
         var _loc2_:§5f§ = this.getItemByName(param1) as §5f§;
         if(_loc2_)
         {
            return _loc2_.§+A§;
         }
         return "";
      }
      
      public function §5!,§() : void
      {
         var _loc1_:§>!F§ = null;
         for each(_loc1_ in this.§0N§.§&P§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function § P§() : Boolean
      {
         var _loc1_:§>!F§ = null;
         for each(_loc1_ in this.§0N§.§&P§)
         {
            if(_loc1_ && _loc1_.§,^§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?x§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§,!@§.getAppWidth(),this.§,!@§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§0N§)
         {
            this.§0N§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§0N§)
         {
            this.§0N§.viewHeight = param1;
         }
      }
      
      public function get §>r§() : §`U§
      {
         return this.§,!@§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§=H§;
      }
      
      public function get container() : §8I§
      {
         return this.§0N§;
      }
   }
}
