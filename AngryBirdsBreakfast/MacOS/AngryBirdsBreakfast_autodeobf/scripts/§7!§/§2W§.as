package §7!§
{
   import §,L§.§%J§;
   import §,L§.§6!W§;
   import §,L§.§;[§;
   import §0"$§.§"!a§;
   import §0"$§.§""'§;
   import §0"$§.§+!@§;
   import §0"$§.§7!a§;
   import §?z§.§4!C§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2W§ extends Sprite
   {
       
      
      protected var §@'§:§"!a§;
      
      protected var §^!j§:MovieClip;
      
      protected var §9!N§:§4!C§;
      
      public function §2W§(param1:§4!C§)
      {
         super();
         this.§9!N§ = param1;
         this.§^!j§ = new MovieClip();
         addChild(this.§^!j§);
         this.§^!j§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§@'§ = new §"!a§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§8"-§();
         this.§@'§.clear();
         this.§@'§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §+!+§() : void
      {
         if(this.§@'§)
         {
            this.§@'§.setActiveStatus(true);
         }
         visible = true;
         this.§^!j§.visible = visible;
      }
      
      public function §2!Z§(param1:§4!C§) : void
      {
         this.§8"-§();
         this.§9!N§ = param1;
         this.§+!+§();
      }
      
      public function §8"-§() : void
      {
         if(this.§@'§)
         {
            this.§@'§.setActiveStatus(false);
         }
         visible = false;
         this.§^!j§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§6!W§) : void
      {
         this.§9!N§.§,n§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§@'§)
         {
            this.§@'§.§"!"§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §;[§
      {
         if(this.§@'§)
         {
            return this.§@'§.getItemByName(param1);
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
         if(!(_loc3_ is §+!@§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §+!@§).setText(param1);
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §+!@§)
         {
            return (_loc2_ as §+!@§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §%J§)
         {
            (_loc3_ as §%J§).setComponentState(param1);
         }
      }
      
      public function §`O§(param1:String) : Array
      {
         return null;
      }
      
      public function §72§(param1:String, param2:String) : void
      {
         var _loc3_:§7!a§ = this.getItemByName(param1) as §7!a§;
         if(_loc3_)
         {
            _loc3_.§=! §(param2);
         }
      }
      
      public function §8!l§(param1:String) : String
      {
         var _loc2_:§7!a§ = this.getItemByName(param1) as §7!a§;
         if(_loc2_)
         {
            return _loc2_.§!g§;
         }
         return "";
      }
      
      public function §=!+§() : void
      {
         var _loc1_:§""'§ = null;
         for each(_loc1_ in this.§@'§.§<C§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §;6§() : Boolean
      {
         var _loc1_:§""'§ = null;
         for each(_loc1_ in this.§@'§.§<C§)
         {
            if(_loc1_ && _loc1_.§]"'§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §1!z§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§9!N§.getAppWidth(),this.§9!N§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§@'§)
         {
            this.§@'§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§@'§)
         {
            this.§@'§.viewHeight = param1;
         }
      }
      
      public function get § V§() : §4!C§
      {
         return this.§9!N§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§^!j§;
      }
      
      public function get container() : §"!a§
      {
         return this.§@'§;
      }
   }
}
