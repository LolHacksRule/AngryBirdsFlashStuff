package §";§
{
   import § "L§.§!U§;
   import § "L§.§,p§;
   import § "L§.§23§;
   import § "L§.§7`§;
   import § "L§.§^§;
   import §[c§.§ #a§;
   import §^"3§.§ #&§;
   import §^"3§.§^"C§;
   import §^"3§.§`$4§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §%"X§ extends Sprite
   {
       
      
      protected var §;#'§:§23§;
      
      protected var §`!n§:MovieClip;
      
      protected var §'Y§:§ #a§;
      
      public function §%"X§(param1:§ #a§)
      {
         super();
         this.§'Y§ = param1;
         this.§`!n§ = new MovieClip();
         addChild(this.§`!n§);
         this.§`!n§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§;#'§ = §,p§.§-H§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.deactivateView();
         this.§;#'§.clear();
         this.§;#'§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§;#'§)
         {
            this.§;#'§.setActiveStatus(true);
         }
         visible = true;
         this.§`!n§.visible = visible;
      }
      
      public function §<R§(param1:§ #a§) : void
      {
         this.deactivateView();
         this.§'Y§ = param1;
         this.activateView();
      }
      
      public function deactivateView() : void
      {
         if(this.§;#'§)
         {
            this.§;#'§.setActiveStatus(false);
         }
         visible = false;
         this.§`!n§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§`$4§) : void
      {
         this.§'Y§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§;#'§)
         {
            this.§;#'§.§`"O§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §^"C§
      {
         if(this.§;#'§)
         {
            return this.§;#'§.getItemByName(param1);
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
         if(!(_loc3_ is §7`§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §7`§).setText(param1);
      }
      
      public function §`"L§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §7`§)
         {
            return (_loc2_ as §7`§).§`"L§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is § #&§)
         {
            (_loc3_ as § #&§).setComponentState(param1);
         }
      }
      
      public function §%">§(param1:String) : Array
      {
         return null;
      }
      
      public function §=!M§(param1:String, param2:String) : void
      {
         var _loc3_:§!U§ = this.getItemByName(param1) as §!U§;
         if(_loc3_)
         {
            _loc3_.§=!-§(param2);
         }
      }
      
      public function §`$!§(param1:String) : String
      {
         var _loc2_:§!U§ = this.getItemByName(param1) as §!U§;
         if(_loc2_)
         {
            return _loc2_.§@$@§;
         }
         return "";
      }
      
      public function §"$E§() : void
      {
         var _loc1_:§^#5§ = null;
         for each(_loc1_ in this.§;#'§.§2p§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §+$B§() : Boolean
      {
         var _loc1_:§^#5§ = null;
         for each(_loc1_ in this.§;#'§.§2p§)
         {
            if(_loc1_ && _loc1_.§0#Z§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §[!4§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§'Y§.getAppWidth(),this.§'Y§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§;#'§)
         {
            this.§;#'§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§;#'§)
         {
            this.§;#'§.viewHeight = param1;
         }
      }
      
      public function get §<"'§() : § #a§
      {
         return this.§'Y§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§`!n§;
      }
      
      public function get container() : §23§
      {
         return this.§;#'§;
      }
   }
}
