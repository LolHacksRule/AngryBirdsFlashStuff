package §+!2§
{
   import §!R§.§#!L§;
   import §!R§.§-!T§;
   import §!R§.§9!8§;
   import §4Y§.§%n§;
   import §4Y§.§&0§;
   import §4Y§.§>!S§;
   import §4Y§.§["4§;
   import §?9§.§ x§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0!%§ extends Sprite
   {
       
      
      protected var §;"#§:§%n§;
      
      protected var §+!m§:MovieClip;
      
      protected var §8!"§:§ x§;
      
      public function §0!%§(param1:§ x§)
      {
         super();
         this.§8!"§ = param1;
         this.§+!m§ = new MovieClip();
         addChild(this.§+!m§);
         this.§+!m§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§;"#§ = new §%n§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§%<§();
         this.§;"#§.clear();
         this.§;"#§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §<'§() : void
      {
         if(this.§;"#§)
         {
            this.§;"#§.setActiveStatus(true);
         }
         visible = true;
         this.§+!m§.visible = visible;
      }
      
      public function §5N§(param1:§ x§) : void
      {
         this.§%<§();
         this.§8!"§ = param1;
         this.§<'§();
      }
      
      public function §%<§() : void
      {
         if(this.§;"#§)
         {
            this.§;"#§.setActiveStatus(false);
         }
         visible = false;
         this.§+!m§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§#!L§) : void
      {
         this.§8!"§.§#%§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§;"#§)
         {
            this.§;"#§.§2[§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §9!8§
      {
         if(this.§;"#§)
         {
            return this.§;"#§.getItemByName(param1);
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
         if(!(_loc3_ is §&0§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §&0§).setText(param1);
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §&0§)
         {
            return (_loc2_ as §&0§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §-!T§)
         {
            (_loc3_ as §-!T§).setComponentState(param1);
         }
      }
      
      public function §;7§(param1:String) : Array
      {
         return null;
      }
      
      public function §&!6§(param1:String, param2:String) : void
      {
         var _loc3_:§["4§ = this.getItemByName(param1) as §["4§;
         if(_loc3_)
         {
            _loc3_.§5z§(param2);
         }
      }
      
      public function §8!b§(param1:String) : String
      {
         var _loc2_:§["4§ = this.getItemByName(param1) as §["4§;
         if(_loc2_)
         {
            return _loc2_.§2!a§;
         }
         return "";
      }
      
      public function §9"7§() : void
      {
         var _loc1_:§>!S§ = null;
         for each(_loc1_ in this.§;"#§.§@U§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §5!t§() : Boolean
      {
         var _loc1_:§>!S§ = null;
         for each(_loc1_ in this.§;"#§.§@U§)
         {
            if(_loc1_ && _loc1_.§+!J§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §`!-§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§8!"§.getAppWidth(),this.§8!"§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§;"#§)
         {
            this.§;"#§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§;"#§)
         {
            this.§;"#§.viewHeight = param1;
         }
      }
      
      public function get §9u§() : § x§
      {
         return this.§8!"§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§+!m§;
      }
      
      public function get container() : §%n§
      {
         return this.§;"#§;
      }
   }
}
