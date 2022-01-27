package §]!O§
{
   import §'!N§.§"f§;
   import §'!N§.§%!E§;
   import §'!N§.§>p§;
   import §,!<§.§6!M§;
   import §=8§.§%y§;
   import §=8§.§&>§;
   import §=8§.§&H§;
   import §=8§.§'^§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §+[§ extends Sprite
   {
       
      
      protected var §2>§:§'^§;
      
      protected var §`!0§:MovieClip;
      
      protected var §+S§:§6!M§;
      
      public function §+[§(param1:§6!M§)
      {
         super();
         this.§+S§ = param1;
         this.§`!0§ = new MovieClip();
         addChild(this.§`!0§);
         this.§`!0§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§2>§ = new §'^§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§?!3§();
         this.§2>§.clear();
         this.§2>§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §#W§() : void
      {
         if(this.§2>§)
         {
            this.§2>§.setActiveStatus(true);
         }
         visible = true;
         this.§`!0§.visible = visible;
      }
      
      public function §"[§(param1:§6!M§) : void
      {
         this.§?!3§();
         this.§+S§ = param1;
         this.§#W§();
      }
      
      public function §?!3§() : void
      {
         if(this.§2>§)
         {
            this.§2>§.setActiveStatus(false);
         }
         visible = false;
         this.§`!0§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§%!E§) : void
      {
         this.§+S§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§2>§)
         {
            this.§2>§.§3Y§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §"f§
      {
         if(this.§2>§)
         {
            return this.§2>§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §&H§)
         {
            (_loc3_ as §&H§).setText(param1);
         }
      }
      
      public function §[X§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §&H§)
         {
            return (_loc2_ as §&H§).§[X§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>p§)
         {
            (_loc3_ as §>p§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §#%§(param1:String, param2:String) : void
      {
         var _loc3_:§%y§ = this.getItemByName(param1) as §%y§;
         if(_loc3_)
         {
            _loc3_.§5B§(param2);
         }
      }
      
      public function §%0§(param1:String) : String
      {
         var _loc2_:§%y§ = this.getItemByName(param1) as §%y§;
         if(_loc2_)
         {
            return _loc2_.§2;§;
         }
         return "";
      }
      
      public function §4_§() : void
      {
         var _loc1_:§&>§ = null;
         for each(_loc1_ in this.§2>§.§4C§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §>h§() : Boolean
      {
         var _loc1_:§&>§ = null;
         for each(_loc1_ in this.§2>§.§4C§)
         {
            if(_loc1_ && _loc1_.§-Z§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §1!L§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§+S§.getAppWidth(),this.§+S§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§2>§)
         {
            this.§2>§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§2>§)
         {
            this.§2>§.viewHeight = param1;
         }
      }
      
      public function get §[!"§() : §6!M§
      {
         return this.§+S§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§`!0§;
      }
      
      public function get container() : §'^§
      {
         return this.§2>§;
      }
   }
}
