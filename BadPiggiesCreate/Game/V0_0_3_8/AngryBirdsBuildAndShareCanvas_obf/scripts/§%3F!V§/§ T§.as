package §?!V§
{
   import §!D§.§ use§;
   import §!D§.§%c§;
   import §!D§.§+! §;
   import §!D§.§2!b§;
   import §9!7§.§#p§;
   import §9!7§.§0!`§;
   import §9!7§.§6"0§;
   import §>w§.§4E§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § T§ extends Sprite
   {
       
      
      protected var §[+§:§ use§;
      
      protected var §2N§:MovieClip;
      
      protected var § r§:§4E§;
      
      public function § T§(param1:§4E§)
      {
         super();
         this.§ r§ = param1;
         this.§2N§ = new MovieClip();
         addChild(this.§2N§);
         this.§2N§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§[+§ = new § use§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§5!w§();
         this.§[+§.clear();
         this.§[+§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §?v§() : void
      {
         if(this.§[+§)
         {
            this.§[+§.setActiveStatus(true);
         }
         visible = true;
         this.§2N§.visible = visible;
      }
      
      public function §]!#§(param1:§4E§) : void
      {
         this.§5!w§();
         this.§ r§ = param1;
         this.§?v§();
      }
      
      public function §5!w§() : void
      {
         if(this.§[+§)
         {
            this.§[+§.setActiveStatus(false);
         }
         visible = false;
         this.§2N§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§#p§) : void
      {
         this.§ r§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§[+§)
         {
            this.§[+§.§8I§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §0!`§
      {
         if(this.§[+§)
         {
            return this.§[+§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §%c§)
         {
            (_loc3_ as §%c§).setText(param1);
         }
      }
      
      public function §8`§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §%c§)
         {
            return (_loc2_ as §%c§).§8`§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §6"0§)
         {
            (_loc3_ as §6"0§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §1"+§(param1:String, param2:String) : void
      {
         var _loc3_:§2!b§ = this.getItemByName(param1) as §2!b§;
         if(_loc3_)
         {
            _loc3_.§,I§(param2);
         }
      }
      
      public function §5o§(param1:String) : String
      {
         var _loc2_:§2!b§ = this.getItemByName(param1) as §2!b§;
         if(_loc2_)
         {
            return _loc2_.§@1§;
         }
         return "";
      }
      
      public function §?>§() : void
      {
         var _loc1_:§+! § = null;
         for each(_loc1_ in this.§[+§.§%`§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §<O§() : Boolean
      {
         var _loc1_:§+! § = null;
         for each(_loc1_ in this.§[+§.§%`§)
         {
            if(_loc1_ && _loc1_.§-s§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §="+§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§ r§.getAppWidth(),this.§ r§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§[+§)
         {
            this.§[+§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§[+§)
         {
            this.§[+§.viewHeight = param1;
         }
      }
      
      public function get §58§() : §4E§
      {
         return this.§ r§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§2N§;
      }
      
      public function get container() : § use§
      {
         return this.§[+§;
      }
   }
}
