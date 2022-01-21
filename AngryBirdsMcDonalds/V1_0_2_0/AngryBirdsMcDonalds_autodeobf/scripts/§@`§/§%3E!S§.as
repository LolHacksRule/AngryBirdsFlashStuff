package §@`§
{
   import §"%§.§+!&§;
   import §"%§.§,!n§;
   import §"%§.§9j§;
   import §6!Q§.§ !"§;
   import §>G§.§6!o§;
   import §>G§.§>U§;
   import §>G§.§]!W§;
   import §>G§.§]f§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §>!S§ extends Sprite
   {
       
      
      protected var §<O§:§]f§;
      
      protected var §>!;§:MovieClip;
      
      protected var §<!3§:§ !"§;
      
      public function §>!S§(param1:§ !"§)
      {
         super();
         this.§<!3§ = param1;
         this.§>!;§ = new MovieClip();
         addChild(this.§>!;§);
         this.§>!;§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§<O§ = new §]f§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§6!b§();
         this.§<O§.clear();
         this.§<O§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §<!L§() : void
      {
         if(this.§<O§)
         {
            this.§<O§.setActiveStatus(true);
         }
         visible = true;
         this.§>!;§.visible = visible;
      }
      
      public function changeState(param1:§ !"§) : void
      {
         this.§6!b§();
         this.§<!3§ = param1;
         this.§<!L§();
      }
      
      public function §6!b§() : void
      {
         if(this.§<O§)
         {
            this.§<O§.setActiveStatus(false);
         }
         visible = false;
         this.§>!;§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§,!n§) : void
      {
         this.§<!3§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §&!9§(param1:String, param2:Boolean) : void
      {
         if(this.§<O§)
         {
            this.§<O§.§=u§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §+!&§
      {
         if(this.§<O§)
         {
            return this.§<O§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §]!W§)
         {
            (_loc3_ as §]!W§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §]!W§)
         {
            return (_loc2_ as §]!W§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §9j§)
         {
            (_loc3_ as §9j§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §+?§(param1:String, param2:String) : void
      {
         var _loc3_:§>U§ = this.getItemByName(param1) as §>U§;
         if(_loc3_)
         {
            _loc3_.§;!N§(param2);
         }
      }
      
      public function §=!U§(param1:String) : String
      {
         var _loc2_:§>U§ = this.getItemByName(param1) as §>U§;
         if(_loc2_)
         {
            return _loc2_.§5!J§;
         }
         return "";
      }
      
      public function §]m§() : void
      {
         var _loc1_:§6!o§ = null;
         for each(_loc1_ in this.§<O§.§17§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §+!k§() : Boolean
      {
         var _loc1_:§6!o§ = null;
         for each(_loc1_ in this.§<O§.§17§)
         {
            if(_loc1_ && _loc1_.§>W§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §4<§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§<!3§.§4P§(),this.§<!3§.§^n§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§<O§)
         {
            this.§<O§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§<O§)
         {
            this.§<O§.viewHeight = param1;
         }
      }
      
      public function get §%J§() : § !"§
      {
         return this.§<!3§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§>!;§;
      }
      
      public function get container() : §]f§
      {
         return this.§<O§;
      }
   }
}
