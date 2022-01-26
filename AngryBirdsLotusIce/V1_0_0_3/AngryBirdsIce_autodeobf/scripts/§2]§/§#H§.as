package §2]§
{
   import §[v§.§&F§;
   import §[v§.§'4§;
   import §[v§.§+B§;
   import §[v§.§?H§;
   import §]4§.§-§;
   import §`W§.§-[§;
   import §`W§.§<r§;
   import §`W§.§`H§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §#H§ extends Sprite
   {
       
      
      protected var §%C§:§&F§;
      
      protected var §&&§:MovieClip;
      
      protected var §3v§:§-§;
      
      public function §#H§(param1:§-§)
      {
         super();
         this.§3v§ = param1;
         this.§&&§ = new MovieClip();
         addChild(this.§&&§);
         this.§&&§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§%C§ = new §&F§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§<w§();
         this.§%C§.clear();
         this.§%C§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §>T§() : void
      {
         if(this.§%C§)
         {
            this.§%C§.setActiveStatus(true);
         }
         visible = true;
         this.§&&§.visible = visible;
      }
      
      public function §5p§(param1:§-§) : void
      {
         this.§<w§();
         this.§3v§ = param1;
         this.§>T§();
      }
      
      public function §<w§() : void
      {
         if(this.§%C§)
         {
            this.§%C§.setActiveStatus(false);
         }
         visible = false;
         this.§&&§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§-[§) : void
      {
         this.§3v§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§%C§)
         {
            this.§%C§.§=W§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §`H§
      {
         if(this.§%C§)
         {
            return this.§%C§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §'4§)
         {
            (_loc3_ as §'4§).setText(param1);
         }
      }
      
      public function §&!>§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §'4§)
         {
            return (_loc2_ as §'4§).§&!>§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §<r§)
         {
            (_loc3_ as §<r§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §@V§(param1:String, param2:String) : void
      {
         var _loc3_:§?H§ = this.getItemByName(param1) as §?H§;
         if(_loc3_)
         {
            _loc3_.§!! §(param2);
         }
      }
      
      public function §2J§(param1:String) : String
      {
         var _loc2_:§?H§ = this.getItemByName(param1) as §?H§;
         if(_loc2_)
         {
            return _loc2_.§&5§;
         }
         return "";
      }
      
      public function §#h§() : void
      {
         var _loc1_:§+B§ = null;
         for each(_loc1_ in this.§%C§.§1I§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §@M§() : Boolean
      {
         var _loc1_:§+B§ = null;
         for each(_loc1_ in this.§%C§.§1I§)
         {
            if(_loc1_ && _loc1_.§^!@§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §>P§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§3v§.getAppWidth(),this.§3v§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§%C§)
         {
            this.§%C§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§%C§)
         {
            this.§%C§.viewHeight = param1;
         }
      }
      
      public function get §=]§() : §-§
      {
         return this.§3v§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&&§;
      }
      
      public function get container() : §&F§
      {
         return this.§%C§;
      }
   }
}
