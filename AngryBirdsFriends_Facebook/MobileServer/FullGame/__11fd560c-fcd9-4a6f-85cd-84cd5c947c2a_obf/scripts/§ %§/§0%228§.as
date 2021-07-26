package § %§
{
   import §3#T§.§'§;
   import §3#T§.§,#[§;
   import §3#T§.§@"!§;
   import §7"§.§`#@§;
   import §<h§.§%M§;
   import §<h§.§7"K§;
   import §<h§.§<!a§;
   import §<h§.§=$4§;
   import §<h§.§[#K§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0"8§ extends Sprite
   {
       
      
      protected var §,#2§:§[#K§;
      
      protected var §]A§:MovieClip;
      
      protected var §@;§:§`#@§;
      
      public function §0"8§(param1:§`#@§)
      {
         super();
         this.§@;§ = param1;
         this.§]A§ = new MovieClip();
         addChild(this.§]A§);
         this.§]A§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§,#2§ = §<!a§.§=#,§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.deactivateView();
         this.§,#2§.clear();
         this.§,#2§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§,#2§)
         {
            this.§,#2§.setActiveStatus(true);
         }
         visible = true;
         this.§]A§.visible = visible;
      }
      
      public function §&$7§(param1:§`#@§) : void
      {
         this.deactivateView();
         this.§@;§ = param1;
         this.activateView();
      }
      
      public function deactivateView() : void
      {
         if(this.§,#2§)
         {
            this.§,#2§.setActiveStatus(false);
         }
         visible = false;
         this.§]A§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§'#0§) : void
      {
         this.§@;§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§,#2§)
         {
            this.§,#2§.§!!<§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §@"!§
      {
         if(this.§,#2§)
         {
            return this.§,#2§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc3_)
         {
            throw new Error("Could not find textfield \'" + param2 + "\' in view \'" + name + "\'.");
         }
         if(!(_loc3_ is §%M§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §%M§).setText(param1);
      }
      
      public function §,k§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §%M§)
         {
            return (_loc2_ as §%M§).§,k§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §,#[§)
         {
            (_loc3_ as §,#[§).setComponentState(param1);
         }
      }
      
      public function §"!k§(param1:String) : Array
      {
         return null;
      }
      
      public function § #l§(param1:String, param2:String) : void
      {
         var _loc3_:§=$4§ = this.getItemByName(param1) as §=$4§;
         if(_loc3_)
         {
            _loc3_.§;"v§(param2);
         }
      }
      
      public function §2!+§(param1:String) : String
      {
         var _loc2_:§=$4§ = this.getItemByName(param1) as §=$4§;
         if(_loc2_)
         {
            return _loc2_.§<`§;
         }
         return "";
      }
      
      public function §3!U§() : void
      {
         var _loc1_:§7"K§ = null;
         for each(_loc1_ in this.§,#2§.§6$!§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §-#h§() : Boolean
      {
         var _loc1_:§7"K§ = null;
         for each(_loc1_ in this.§,#2§.§6$!§)
         {
            if(_loc1_ && _loc1_.§+!9§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §9H§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§@;§.getAppWidth(),this.§@;§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§,#2§)
         {
            this.§,#2§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§,#2§)
         {
            this.§,#2§.viewHeight = param1;
         }
      }
      
      public function get §%w§() : §`#@§
      {
         return this.§@;§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§]A§;
      }
      
      public function get container() : §[#K§
      {
         return this.§,#2§;
      }
   }
}
