package §@!H§
{
   import §"!2§.§,!J§;
   import §"!2§.UIContainerRovio;
   import §"!2§.UIRepeaterRovio;
   import §"!2§.UITextFieldRovio;
   import §>!<§.UIComponentInteractiveRovio;
   import §>!<§.UIComponentRovio;
   import §>!<§.UIEventListenerRovio;
   import §[!>§.StateBase;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §-!H§ extends Sprite
   {
       
      
      protected var §6!$§:UIContainerRovio;
      
      protected var §&e§:MovieClip;
      
      protected var §<!a§:StateBase;
      
      public function §-!H§(param1:StateBase)
      {
         super();
         this.§<!a§ = param1;
         this.§&e§ = new MovieClip();
         addChild(this.§&e§);
         this.§&e§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§6!$§ = new UIContainerRovio(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§ !X§();
         this.§6!$§.clear();
         this.§6!$§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§6!$§)
         {
            this.§6!$§.setActiveStatus(true);
         }
         visible = true;
         this.§&e§.visible = visible;
      }
      
      public function §3Q§(param1:StateBase) : void
      {
         this.§ !X§();
         this.§<!a§ = param1;
         this.activateView();
      }
      
      public function § !X§() : void
      {
         if(this.§6!$§)
         {
            this.§6!$§.setActiveStatus(false);
         }
         visible = false;
         this.§&e§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         this.§<!a§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§6!$§)
         {
            this.§6!$§.§3N§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         if(this.§6!$§)
         {
            return this.§6!$§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is UITextFieldRovio)
         {
            (_loc3_ as UITextFieldRovio).setText(param1);
         }
      }
      
      public function §5!!§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is UITextFieldRovio)
         {
            return (_loc2_ as UITextFieldRovio).§5!!§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is UIComponentInteractiveRovio)
         {
            (_loc3_ as UIComponentInteractiveRovio).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §5n§(param1:String, param2:String) : void
      {
         var _loc3_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc3_)
         {
            _loc3_.§!+§(param2);
         }
      }
      
      public function §"D§(param1:String) : String
      {
         var _loc2_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc2_)
         {
            return _loc2_.§;!=§;
         }
         return "";
      }
      
      public function §9!^§() : void
      {
         var _loc1_:§,!J§ = null;
         for each(_loc1_ in this.§6!$§.§ !]§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §[!'§() : Boolean
      {
         var _loc1_:§,!J§ = null;
         for each(_loc1_ in this.§6!$§.§ !]§)
         {
            if(_loc1_ && _loc1_.§4b§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §&!L§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics = _loc3_.graphics;
         _loc4_.beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§<!a§.getAppWidth(),this.§<!a§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§6!$§)
         {
            this.§6!$§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§6!$§)
         {
            this.§6!$§.viewHeight = param1;
         }
      }
      
      public function get §-z§() : StateBase
      {
         return this.§<!a§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&e§;
      }
      
      public function get container() : UIContainerRovio
      {
         return this.§6!$§;
      }
   }
}
