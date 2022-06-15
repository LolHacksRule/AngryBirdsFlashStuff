package §<!O§
{
   import §'!U§.§0!?§;
   import §'!U§.§4P§;
   import §'!U§.§>$$§;
   import §6"r§.§#j§;
   import §6"r§.§0"<§;
   import §6"r§.§3#@§;
   import §6"r§.§5$7§;
   import §6"r§.§]$!§;
   import §9"#§.§4$5§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'k§ extends Sprite
   {
       
      
      protected var §7!j§:§0"<§;
      
      protected var §]Z§:MovieClip;
      
      protected var §%#q§:§4$5§;
      
      public function §'k§(param1:§4$5§)
      {
         super();
         this.§%#q§ = param1;
         this.§]Z§ = new MovieClip();
         addChild(this.§]Z§);
         this.§]Z§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§7!j§ = §#j§.§const§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.deactivateView();
         this.§7!j§.clear();
         this.§7!j§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§7!j§)
         {
            this.§7!j§.setActiveStatus(true);
         }
         visible = true;
         this.§]Z§.visible = visible;
      }
      
      public function §;A§(param1:§4$5§) : void
      {
         this.deactivateView();
         this.§%#q§ = param1;
         this.activateView();
      }
      
      public function deactivateView() : void
      {
         if(this.§7!j§)
         {
            this.§7!j§.setActiveStatus(false);
         }
         visible = false;
         this.§]Z§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§0!?§) : void
      {
         this.§%#q§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§7!j§)
         {
            this.§7!j§.§?!L§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §>$$§
      {
         if(this.§7!j§)
         {
            return this.§7!j§.getItemByName(param1);
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
         if(!(_loc3_ is §]$!§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §]$!§).setText(param1);
      }
      
      public function §7$!§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §]$!§)
         {
            return (_loc2_ as §]$!§).§7$!§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §4P§)
         {
            (_loc3_ as §4P§).setComponentState(param1);
         }
      }
      
      public function §,![§(param1:String) : Array
      {
         return null;
      }
      
      public function §-">§(param1:String, param2:String) : void
      {
         var _loc3_:§3#@§ = this.getItemByName(param1) as §3#@§;
         if(_loc3_)
         {
            _loc3_.§5%§(param2);
         }
      }
      
      public function §;#4§(param1:String) : String
      {
         var _loc2_:§3#@§ = this.getItemByName(param1) as §3#@§;
         if(_loc2_)
         {
            return _loc2_.§+"A§;
         }
         return "";
      }
      
      public function §3!?§() : void
      {
         var _loc1_:§5$7§ = null;
         for each(_loc1_ in this.§7!j§.§5&§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §[p§() : Boolean
      {
         var _loc1_:§5$7§ = null;
         for each(_loc1_ in this.§7!j§.§5&§)
         {
            if(_loc1_ && _loc1_.§null §)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2#D§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§%#q§.getAppWidth(),this.§%#q§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§7!j§)
         {
            this.§7!j§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§7!j§)
         {
            this.§7!j§.viewHeight = param1;
         }
      }
      
      public function get §,#U§() : §4$5§
      {
         return this.§%#q§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§]Z§;
      }
      
      public function get container() : §0"<§
      {
         return this.§7!j§;
      }
   }
}
