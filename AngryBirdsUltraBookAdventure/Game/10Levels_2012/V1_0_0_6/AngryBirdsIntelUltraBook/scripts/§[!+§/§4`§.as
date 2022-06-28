package §[!+§
{
   import §+0§.§,!E§;
   import §1!E§.§#?§;
   import §1!E§.§&!J§;
   import §1!E§.§31§;
   import §1!E§.§?!x§;
   import §>7§.§&! §;
   import §>7§.§,!c§;
   import §>7§.§4+§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4`§ extends Sprite
   {
       
      
      protected var § t§:§#?§;
      
      protected var §&!v§:MovieClip;
      
      protected var §?<§:§,!E§;
      
      public function §4`§(param1:§,!E§)
      {
         super();
         this.§?<§ = param1;
         this.§&!v§ = new MovieClip();
         addChild(this.§&!v§);
         this.§&!v§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§ t§ = new §#?§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§=X§();
         this.§ t§.clear();
         this.§ t§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§ t§)
         {
            this.§ t§.setActiveStatus(true);
         }
         visible = true;
         this.§&!v§.visible = visible;
      }
      
      public function §]$§(param1:§,!E§) : void
      {
         this.§=X§();
         this.§?<§ = param1;
         this.activateView();
      }
      
      public function §=X§() : void
      {
         if(this.§ t§)
         {
            this.§ t§.setActiveStatus(false);
         }
         visible = false;
         this.§&!v§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§,!c§) : void
      {
         this.§?<§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§ t§)
         {
            this.§ t§.§package§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §&! §
      {
         if(this.§ t§)
         {
            return this.§ t§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §?!x§)
         {
            (_loc3_ as §?!x§).setText(param1);
         }
      }
      
      public function §]H§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §?!x§)
         {
            return (_loc2_ as §?!x§).§]H§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §4+§)
         {
            (_loc3_ as §4+§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §>!]§(param1:String, param2:String) : void
      {
         var _loc3_:§31§ = this.getItemByName(param1) as §31§;
         if(_loc3_)
         {
            _loc3_.§8!R§(param2);
         }
      }
      
      public function §[!?§(param1:String) : String
      {
         var _loc2_:§31§ = this.getItemByName(param1) as §31§;
         if(_loc2_)
         {
            return _loc2_.§!=§;
         }
         return "";
      }
      
      public function §6!>§() : void
      {
         var _loc1_:§&!J§ = null;
         for each(_loc1_ in this.§ t§.§6!§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §-k§() : Boolean
      {
         var _loc1_:§&!J§ = null;
         for each(_loc1_ in this.§ t§.§6!§)
         {
            if(_loc1_ && _loc1_.§8!N§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §,1§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§?<§.getAppWidth(),this.§?<§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§ t§)
         {
            this.§ t§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§ t§)
         {
            this.§ t§.viewHeight = param1;
         }
      }
      
      public function get §?!O§() : §,!E§
      {
         return this.§?<§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&!v§;
      }
      
      public function get §]1§() : §#?§
      {
         return this.§ t§;
      }
   }
}
