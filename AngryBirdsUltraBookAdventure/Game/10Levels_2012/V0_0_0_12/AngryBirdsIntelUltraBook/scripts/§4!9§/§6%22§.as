package §4!9§
{
   import §4H§.StateBase;
   import §>!-§.UIComponentInteractiveRovio;
   import §>!-§.UIComponentRovio;
   import §>!-§.UIEventListenerRovio;
   import §]!6§.§1B§;
   import §]!6§.UIContainerRovio;
   import §]!6§.UIRepeaterRovio;
   import §]!6§.UITextFieldRovio;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §6"§ extends Sprite
   {
       
      
      protected var §'K§:UIContainerRovio;
      
      protected var §`!j§:MovieClip;
      
      protected var §3!C§:StateBase;
      
      public function §6"§(param1:StateBase)
      {
         super();
         this.§3!C§ = param1;
         this.§`!j§ = new MovieClip();
         addChild(this.§`!j§);
         this.§`!j§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§'K§ = new UIContainerRovio(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§"!e§();
         this.§'K§.clear();
         this.§'K§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§'K§)
         {
            this.§'K§.setActiveStatus(true);
         }
         visible = true;
         this.§`!j§.visible = visible;
      }
      
      public function §,y§(param1:StateBase) : void
      {
         this.§"!e§();
         this.§3!C§ = param1;
         this.activateView();
      }
      
      public function §"!e§() : void
      {
         if(this.§'K§)
         {
            this.§'K§.setActiveStatus(false);
         }
         visible = false;
         this.§`!j§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:UIEventListenerRovio) : void
      {
         this.§3!C§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§'K§)
         {
            this.§'K§.§'§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : UIComponentRovio
      {
         if(this.§'K§)
         {
            return this.§'K§.getItemByName(param1);
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
      
      public function §8"§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is UITextFieldRovio)
         {
            return (_loc2_ as UITextFieldRovio).§8"§();
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
      
      public function §31§(param1:String, param2:String) : void
      {
         var _loc3_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc3_)
         {
            _loc3_.§ v§(param2);
         }
      }
      
      public function §2!<§(param1:String) : String
      {
         var _loc2_:UIRepeaterRovio = this.getItemByName(param1) as UIRepeaterRovio;
         if(_loc2_)
         {
            return _loc2_.§5!8§;
         }
         return "";
      }
      
      public function §<F§() : void
      {
         var _loc1_:§1B§ = null;
         for each(_loc1_ in this.§'K§.§4!W§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §5!g§() : Boolean
      {
         var _loc1_:§1B§ = null;
         for each(_loc1_ in this.§'K§.§4!W§)
         {
            if(_loc1_ && _loc1_.§@!#§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §'T§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics = _loc3_.graphics;
         _loc4_.beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§3!C§.getAppWidth(),this.§3!C§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§'K§)
         {
            this.§'K§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§'K§)
         {
            this.§'K§.viewHeight = param1;
         }
      }
      
      public function get §@s§() : StateBase
      {
         return this.§3!C§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§`!j§;
      }
      
      public function get container() : UIContainerRovio
      {
         return this.§'K§;
      }
   }
}
