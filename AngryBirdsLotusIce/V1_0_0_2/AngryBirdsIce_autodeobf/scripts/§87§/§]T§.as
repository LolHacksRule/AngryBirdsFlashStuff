package §87§
{
   import §%S§.§,1§;
   import §%S§.§7g§;
   import §%S§.§>p§;
   import §%S§.§]r§;
   import §`<§.§,!6§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import §in§.§%K§;
   import §in§.§9c§;
   import §in§.§]R§;
   
   public class §]T§ extends Sprite
   {
       
      
      protected var §@a§:§,1§;
      
      protected var §+D§:MovieClip;
      
      protected var §3o§:§,!6§;
      
      public function §]T§(param1:§,!6§)
      {
         super();
         this.§3o§ = param1;
         this.§+D§ = new MovieClip();
         addChild(this.§+D§);
         this.§+D§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§@a§ = new §,1§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§=!B§();
         this.§@a§.clear();
         this.§@a§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §'X§() : void
      {
         if(this.§@a§)
         {
            this.§@a§.setActiveStatus(true);
         }
         visible = true;
         this.§+D§.visible = visible;
      }
      
      public function §2<§(param1:§,!6§) : void
      {
         this.§=!B§();
         this.§3o§ = param1;
         this.§'X§();
      }
      
      public function §=!B§() : void
      {
         if(this.§@a§)
         {
            this.§@a§.setActiveStatus(false);
         }
         visible = false;
         this.§+D§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§%K§) : void
      {
         this.§3o§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§@a§)
         {
            this.§@a§.§4!>§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §]R§
      {
         if(this.§@a§)
         {
            return this.§@a§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §7g§)
         {
            (_loc3_ as §7g§).setText(param1);
         }
      }
      
      public function §8_§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §7g§)
         {
            return (_loc2_ as §7g§).§8_§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §9c§)
         {
            (_loc3_ as §9c§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §^-§(param1:String, param2:String) : void
      {
         var _loc3_:§]r§ = this.getItemByName(param1) as §]r§;
         if(_loc3_)
         {
            _loc3_.§-!?§(param2);
         }
      }
      
      public function §^w§(param1:String) : String
      {
         var _loc2_:§]r§ = this.getItemByName(param1) as §]r§;
         if(_loc2_)
         {
            return _loc2_.§'3§;
         }
         return "";
      }
      
      public function § !'§() : void
      {
         var _loc1_:§>p§ = null;
         for each(_loc1_ in this.§@a§.§0V§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §5&§() : Boolean
      {
         var _loc1_:§>p§ = null;
         for each(_loc1_ in this.§@a§.§0V§)
         {
            if(_loc1_ && _loc1_.§9I§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §"!&§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§3o§.getAppWidth(),this.§3o§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§@a§)
         {
            this.§@a§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§@a§)
         {
            this.§@a§.viewHeight = param1;
         }
      }
      
      public function get §9p§() : §,!6§
      {
         return this.§3o§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§+D§;
      }
      
      public function get container() : §,1§
      {
         return this.§@a§;
      }
   }
}
