package §<!G§
{
   import §"!&§.§#!,§;
   import §-!F§.§&!A§;
   import §-!F§.§^h§;
   import §-!F§.§`!&§;
   import §class§.§0r§;
   import §class§.§3C§;
   import §class§.§3D§;
   import §class§.§use §;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §^3§ extends Sprite
   {
       
      
      protected var § !$§:§3C§;
      
      protected var §<!5§:MovieClip;
      
      protected var §;?§:§#!,§;
      
      public function §^3§(param1:§#!,§)
      {
         super();
         this.§;?§ = param1;
         this.§<!5§ = new MovieClip();
         addChild(this.§<!5§);
         this.§<!5§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§ !$§ = new §3C§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§%Y§();
         this.§ !$§.clear();
         this.§ !$§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §<!&§() : void
      {
         if(this.§ !$§)
         {
            this.§ !$§.setActiveStatus(true);
         }
         visible = true;
         this.§<!5§.visible = visible;
      }
      
      public function §>V§(param1:§#!,§) : void
      {
         this.§%Y§();
         this.§;?§ = param1;
         this.§<!&§();
      }
      
      public function §%Y§() : void
      {
         if(this.§ !$§)
         {
            this.§ !$§.setActiveStatus(false);
         }
         visible = false;
         this.§<!5§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§^h§) : void
      {
         this.§;?§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§ !$§)
         {
            this.§ !$§.§%!+§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §&!A§
      {
         if(this.§ !$§)
         {
            return this.§ !$§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §3D§)
         {
            (_loc3_ as §3D§).setText(param1);
         }
      }
      
      public function §0S§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §3D§)
         {
            return (_loc2_ as §3D§).§0S§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §`!&§)
         {
            (_loc3_ as §`!&§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §=+§(param1:String, param2:String) : void
      {
         var _loc3_:§use § = this.getItemByName(param1) as §use §;
         if(_loc3_)
         {
            _loc3_.§>!?§(param2);
         }
      }
      
      public function §`!<§(param1:String) : String
      {
         var _loc2_:§use § = this.getItemByName(param1) as §use §;
         if(_loc2_)
         {
            return _loc2_.§@!0§;
         }
         return "";
      }
      
      public function §!!6§() : void
      {
         var _loc1_:§0r§ = null;
         for each(_loc1_ in this.§ !$§.§3! §)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §^l§() : Boolean
      {
         var _loc1_:§0r§ = null;
         for each(_loc1_ in this.§ !$§.§3! §)
         {
            if(_loc1_ && _loc1_.§#!#§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §4E§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§;?§.getAppWidth(),this.§;?§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§ !$§)
         {
            this.§ !$§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§ !$§)
         {
            this.§ !$§.viewHeight = param1;
         }
      }
      
      public function get §`%§() : §#!,§
      {
         return this.§;?§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§<!5§;
      }
      
      public function get container() : §3C§
      {
         return this.§ !$§;
      }
   }
}
