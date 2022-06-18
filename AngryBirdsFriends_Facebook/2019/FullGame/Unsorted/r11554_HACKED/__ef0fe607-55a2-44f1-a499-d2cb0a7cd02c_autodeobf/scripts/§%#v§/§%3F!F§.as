package §%#v§
{
   import §4!n§.§#$>§;
   import §4!n§.§'!,§;
   import §4!n§.§'!V§;
   import §5!$§.§ #A§;
   import §5!$§.§-#j§;
   import §5!$§.§<c§;
   import §5!$§.§>;§;
   import §5!$§.§@"D§;
   import §?#h§.§3#=§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §?!F§ extends Sprite
   {
       
      
      protected var §8#Y§:§<c§;
      
      protected var §%#D§:MovieClip;
      
      protected var §4!x§:§3#=§;
      
      public function §?!F§(param1:§3#=§)
      {
         super();
         this.§4!x§ = param1;
         this.§%#D§ = new MovieClip();
         addChild(this.§%#D§);
         this.§%#D§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§8#Y§ = § #A§.§8x§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.deactivateView();
         this.§8#Y§.clear();
         this.§8#Y§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§8#Y§)
         {
            this.§8#Y§.setActiveStatus(true);
         }
         visible = true;
         this.§%#D§.visible = visible;
      }
      
      public function §,D§(param1:§3#=§) : void
      {
         this.deactivateView();
         this.§4!x§ = param1;
         this.activateView();
      }
      
      public function deactivateView() : void
      {
         if(this.§8#Y§)
         {
            this.§8#Y§.setActiveStatus(false);
         }
         visible = false;
         this.§%#D§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§'!,§) : void
      {
         this.§4!x§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§8#Y§)
         {
            this.§8#Y§.§"!F§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §#$>§
      {
         if(this.§8#Y§)
         {
            return this.§8#Y§.getItemByName(param1);
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
         if(!(_loc3_ is §-#j§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §-#j§).setText(param1);
      }
      
      public function §0!m§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §-#j§)
         {
            return (_loc2_ as §-#j§).§0!m§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §'!V§)
         {
            (_loc3_ as §'!V§).setComponentState(param1);
         }
      }
      
      public function §=t§(param1:String) : Array
      {
         return null;
      }
      
      public function §=R§(param1:String, param2:String) : void
      {
         var _loc3_:§>;§ = this.getItemByName(param1) as §>;§;
         if(_loc3_)
         {
            _loc3_.§6!^§(param2);
         }
      }
      
      public function §!i§(param1:String) : String
      {
         var _loc2_:§>;§ = this.getItemByName(param1) as §>;§;
         if(_loc2_)
         {
            return _loc2_.§&"'§;
         }
         return "";
      }
      
      public function §^"2§() : void
      {
         var _loc1_:§@"D§ = null;
         for each(_loc1_ in this.§8#Y§.§,#i§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §;!t§() : Boolean
      {
         var _loc1_:§@"D§ = null;
         for each(_loc1_ in this.§8#Y§.§,#i§)
         {
            if(_loc1_ && _loc1_.§0"<§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §-"r§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§4!x§.getAppWidth(),this.§4!x§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§8#Y§)
         {
            this.§8#Y§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§8#Y§)
         {
            this.§8#Y§.viewHeight = param1;
         }
      }
      
      public function get §5$0§() : §3#=§
      {
         return this.§4!x§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§%#D§;
      }
      
      public function get container() : §<c§
      {
         return this.§8#Y§;
      }
   }
}
