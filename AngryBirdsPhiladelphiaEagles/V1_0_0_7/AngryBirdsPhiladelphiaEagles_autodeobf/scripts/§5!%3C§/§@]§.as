package §5!<§
{
   import §5f§.§-G§;
   import §5f§.§=;§;
   import §5f§.§]_§;
   import §=u§.;
   import §=u§.§2"§;
   import §=u§.§7?§;
   import §=u§.§>v§;
   import §?!=§.§<!>§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §@]§ extends Sprite
   {
       
      
      protected var §8#§:§>v§;
      
      protected var §]3§:MovieClip;
      
      protected var §%!8§:§<!>§;
      
      public function §@]§(param1:§<!>§)
      {
         super();
         this.§%!8§ = param1;
         this.§]3§ = new MovieClip();
         addChild(this.§]3§);
         this.§]3§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§8#§ = new §>v§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§#!D§();
         this.§8#§.clear();
         this.§8#§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §4!2§() : void
      {
         if(this.§8#§)
         {
            this.§8#§.setActiveStatus(true);
         }
         visible = true;
         this.§]3§.visible = visible;
      }
      
      public function §&!1§(param1:§<!>§) : void
      {
         this.§#!D§();
         this.§%!8§ = param1;
         this.§4!2§();
      }
      
      public function §#!D§() : void
      {
         if(this.§8#§)
         {
            this.§8#§.setActiveStatus(false);
         }
         visible = false;
         this.§]3§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§]_§) : void
      {
         this.§%!8§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§8#§)
         {
            this.§8#§.§ I§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §-G§
      {
         if(this.§8#§)
         {
            return this.§8#§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §2"§)
         {
            (_loc3_ as §2"§).setText(param1);
         }
      }
      
      public function §7!=§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §2"§)
         {
            return (_loc2_ as §2"§).§7!=§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §=;§)
         {
            (_loc3_ as §=;§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §+?§(param1:String, param2:String) : void
      {
         var _loc3_:§#3§ = this.getItemByName(param1) as §#3§;
         if(_loc3_)
         {
            _loc3_.§%u§(param2);
         }
      }
      
      public function §-'§(param1:String) : String
      {
         var _loc2_:§#3§ = this.getItemByName(param1) as §#3§;
         if(_loc2_)
         {
            return _loc2_.§@o§;
         }
         return "";
      }
      
      public function §"§() : void
      {
         var _loc1_:§7?§ = null;
         for each(_loc1_ in this.§8#§.§@#§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function override() : Boolean
      {
         var _loc1_:§7?§ = null;
         for each(_loc1_ in this.§8#§.§@#§)
         {
            if(_loc1_ && _loc1_.§2!-§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §`!=§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§%!8§.getAppWidth(),this.§%!8§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§8#§)
         {
            this.§8#§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§8#§)
         {
            this.§8#§.viewHeight = param1;
         }
      }
      
      public function get §6!;§() : §<!>§
      {
         return this.§%!8§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§]3§;
      }
      
      public function get container() : §>v§
      {
         return this.§8#§;
      }
   }
}
