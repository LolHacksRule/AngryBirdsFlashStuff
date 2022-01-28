package §1"2§
{
   import §'!A§.§-!2§;
   import §'!A§.§-!S§;
   import §'!A§.§9!!§;
   import §'p§.§"S§;
   import §'p§.§+!,§;
   import §'p§.§`!<§;
   import §'p§.§`!T§;
   import §5"-§.§5y§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'s§ extends Sprite
   {
       
      
      protected var §+!e§:§`!T§;
      
      protected var §["-§:MovieClip;
      
      protected var §?!T§:§5y§;
      
      public function §'s§(param1:§5y§)
      {
         super();
         this.§?!T§ = param1;
         this.§["-§ = new MovieClip();
         addChild(this.§["-§);
         this.§["-§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§+!e§ = new §`!T§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§['§();
         this.§+!e§.clear();
         this.§+!e§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §&o§() : void
      {
         if(this.§+!e§)
         {
            this.§+!e§.setActiveStatus(true);
         }
         visible = true;
         this.§["-§.visible = visible;
      }
      
      public function §[j§(param1:§5y§) : void
      {
         this.§['§();
         this.§?!T§ = param1;
         this.§&o§();
      }
      
      public function §['§() : void
      {
         if(this.§+!e§)
         {
            this.§+!e§.setActiveStatus(false);
         }
         visible = false;
         this.§["-§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§-!S§) : void
      {
         this.§?!T§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§+!e§)
         {
            this.§+!e§.§ F§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §-!2§
      {
         if(this.§+!e§)
         {
            return this.§+!e§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §`!<§)
         {
            (_loc3_ as §`!<§).setText(param1);
         }
      }
      
      public function §2! §(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §`!<§)
         {
            return (_loc2_ as §`!<§).§2! §();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §9!!§)
         {
            (_loc3_ as §9!!§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §'!=§(param1:String, param2:String) : void
      {
         var _loc3_:§+!,§ = this.getItemByName(param1) as §+!,§;
         if(_loc3_)
         {
            _loc3_.§%D§(param2);
         }
      }
      
      public function §7u§(param1:String) : String
      {
         var _loc2_:§+!,§ = this.getItemByName(param1) as §+!,§;
         if(_loc2_)
         {
            return _loc2_.§0y§;
         }
         return "";
      }
      
      public function §"§() : void
      {
         var _loc1_:§"S§ = null;
         for each(_loc1_ in this.§+!e§.§"!_§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §'!d§() : Boolean
      {
         var _loc1_:§"S§ = null;
         for each(_loc1_ in this.§+!e§.§"!_§)
         {
            if(_loc1_ && _loc1_.§-j§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §8"-§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§?!T§.getAppWidth(),this.§?!T§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§+!e§)
         {
            this.§+!e§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§+!e§)
         {
            this.§+!e§.viewHeight = param1;
         }
      }
      
      public function get §'!n§() : §5y§
      {
         return this.§?!T§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§["-§;
      }
      
      public function get container() : §`!T§
      {
         return this.§+!e§;
      }
   }
}
