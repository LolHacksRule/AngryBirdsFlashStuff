package §0w§
{
   import §4C§.§'!D§;
   import §4C§.§->§;
   import §4C§.§1!=§;
   import §4C§.§<k§;
   import §6H§.§>3§;
   import §`!0§.§"?§;
   import §`!0§.§4Y§;
   import §`!0§.§[4§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §0#§ extends Sprite
   {
       
      
      protected var §46§:§1!=§;
      
      protected var §6!7§:MovieClip;
      
      protected var §+%§:§>3§;
      
      public function §0#§(param1:§>3§)
      {
         super();
         this.§+%§ = param1;
         this.§6!7§ = new MovieClip();
         addChild(this.§6!7§);
         this.§6!7§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§46§ = new §1!=§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§2!"§();
         this.§46§.clear();
         this.§46§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §@`§() : void
      {
         if(this.§46§)
         {
            this.§46§.setActiveStatus(true);
         }
         visible = true;
         this.§6!7§.visible = visible;
      }
      
      public function §@9§(param1:§>3§) : void
      {
         this.§2!"§();
         this.§+%§ = param1;
         this.§@`§();
      }
      
      public function §2!"§() : void
      {
         if(this.§46§)
         {
            this.§46§.setActiveStatus(false);
         }
         visible = false;
         this.§6!7§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§"?§) : void
      {
         this.§+%§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§46§)
         {
            this.§46§.§`X§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §4Y§
      {
         if(this.§46§)
         {
            return this.§46§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §<k§)
         {
            (_loc3_ as §<k§).setText(param1);
         }
      }
      
      public function §<!A§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §<k§)
         {
            return (_loc2_ as §<k§).§<!A§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §[4§)
         {
            (_loc3_ as §[4§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §&E§(param1:String, param2:String) : void
      {
         var _loc3_:§->§ = this.getItemByName(param1) as §->§;
         if(_loc3_)
         {
            _loc3_.§1!#§(param2);
         }
      }
      
      public function §8k§(param1:String) : String
      {
         var _loc2_:§->§ = this.getItemByName(param1) as §->§;
         if(_loc2_)
         {
            return _loc2_.§90§;
         }
         return "";
      }
      
      public function §3!-§() : void
      {
         var _loc1_:§'!D§ = null;
         for each(_loc1_ in this.§46§.§@_§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §1E§() : Boolean
      {
         var _loc1_:§'!D§ = null;
         for each(_loc1_ in this.§46§.§@_§)
         {
            if(_loc1_ && _loc1_.§2!-§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §&g§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§+%§.getAppWidth(),this.§+%§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§46§)
         {
            this.§46§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§46§)
         {
            this.§46§.viewHeight = param1;
         }
      }
      
      public function get §'8§() : §>3§
      {
         return this.§+%§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§6!7§;
      }
      
      public function get container() : §1!=§
      {
         return this.§46§;
      }
   }
}
