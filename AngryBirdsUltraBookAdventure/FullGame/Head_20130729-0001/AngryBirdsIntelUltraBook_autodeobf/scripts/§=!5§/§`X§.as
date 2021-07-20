package §=!5§
{
   import §0!Q§.UIComponentInteractiveRovio;
   import §0!Q§.UIComponentRovio;
   import §0!Q§.UIEventListenerRovio;
   import §1N§.StateBase;
   import §6a§.§+_§;
   import §6a§.UIContainerRovio;
   import §6a§.UIRepeaterRovio;
   import §6a§.UITextFieldRovio;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`X§ extends Sprite
   {
       
      
      protected var §2$§:UIContainerRovio;
      
      protected var §2!U§:MovieClip;
      
      protected var §1!#§:StateBase;
      
      public function §`X§(param1:StateBase)
      {
         super();
         this.§1!#§ = param1;
         this.§2!U§ = new MovieClip();
         addChild(this.§2!U§);
         this.§2!U§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§2$§ = new UIContainerRovio(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§&!N§();
         this.§2$§.clear();
         this.§2$§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§2$§)
         {
            this.§2$§.setActiveStatus(true);
         }
         visible = true;
         this.§2!U§.visible = visible;
      }
      
      public function §0!5§(param1:StateBase) : void
      {
         this.§&!N§();
         this.§1!#§ = param1;
         this.activateView();
      }
      
      public function §&!N§() : void
      {
         if(this.§2$§)
         {
            this.§2$§.setActiveStatus(false);
         }
         visible = false;
         this.§2!U§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         this.§1!#§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§2$§)
         {
            this.§2$§.§?Q§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         if(this.§2$§)
         {
            return this.§2$§.getItemByName(param1);
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
      
      public function §+b§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is UITextFieldRovio)
         {
            return (_loc2_ as UITextFieldRovio).§+b§();
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
      
      public function §+!L§(param1:String, param2:String) : void
      {
         var _loc3_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc3_)
         {
            _loc3_.§>!K§(param2);
         }
      }
      
      public function §-!6§(param1:String) : String
      {
         var _loc2_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc2_)
         {
            return _loc2_.§ !5§;
         }
         return "";
      }
      
      public function §1#§() : void
      {
         var _loc1_:§+_§ = null;
         for each(_loc1_ in this.§2$§.§]6§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §6!#§() : Boolean
      {
         var _loc1_:§+_§ = null;
         for each(_loc1_ in this.§2$§.§]6§)
         {
            if(_loc1_ && _loc1_.§0x§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §7!%§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics = _loc3_.graphics;
         _loc4_.beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§1!#§.getAppWidth(),this.§1!#§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§2$§)
         {
            this.§2$§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§2$§)
         {
            this.§2$§.viewHeight = param1;
         }
      }
      
      public function get §'4§() : StateBase
      {
         return this.§1!#§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§2!U§;
      }
      
      public function get container() : UIContainerRovio
      {
         return this.§2$§;
      }
   }
}
