package §#Q§
{
   import §&!6§.§5r§;
   import §1Q§.§'!`§;
   import §1Q§.§4p§;
   import §1Q§.§6'§;
   import §@!]§.§"[§;
   import §@!]§.§%!S§;
   import §@!]§.§'!9§;
   import §@!]§.§?u§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §8Y§ extends Sprite
   {
       
      
      protected var § !2§:§'!9§;
      
      protected var §#!X§:MovieClip;
      
      protected var §;4§:§5r§;
      
      public function §8Y§(param1:§5r§)
      {
         super();
         this.§;4§ = param1;
         this.§#!X§ = new MovieClip();
         addChild(this.§#!X§);
         this.§#!X§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§ !2§ = new §'!9§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§>m§();
         this.§ !2§.clear();
         this.§ !2§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §`C§() : void
      {
         if(this.§ !2§)
         {
            this.§ !2§.setActiveStatus(true);
         }
         visible = true;
         this.§#!X§.visible = visible;
      }
      
      public function changeState(param1:§5r§) : void
      {
         this.§>m§();
         this.§;4§ = param1;
         this.§`C§();
      }
      
      public function §>m§() : void
      {
         if(this.§ !2§)
         {
            this.§ !2§.setActiveStatus(false);
         }
         visible = false;
         this.§#!X§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§'!`§) : void
      {
         this.§;4§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §9!+§(param1:String, param2:Boolean) : void
      {
         if(this.§ !2§)
         {
            this.§ !2§.§1Z§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §6'§
      {
         if(this.§ !2§)
         {
            return this.§ !2§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §%!S§)
         {
            (_loc3_ as §%!S§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §%!S§)
         {
            return (_loc2_ as §%!S§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §4p§)
         {
            (_loc3_ as §4p§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §`-§(param1:String, param2:String) : void
      {
         var _loc3_:§?u§ = this.getItemByName(param1) as §?u§;
         if(_loc3_)
         {
            _loc3_.§3q§(param2);
         }
      }
      
      public function §>k§(param1:String) : String
      {
         var _loc2_:§?u§ = this.getItemByName(param1) as §?u§;
         if(_loc2_)
         {
            return _loc2_.§1c§;
         }
         return "";
      }
      
      public function §3l§() : void
      {
         var _loc1_:§"[§ = null;
         for each(_loc1_ in this.§ !2§.§'t§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §>Z§() : Boolean
      {
         var _loc1_:§"[§ = null;
         for each(_loc1_ in this.§ !2§.§'t§)
         {
            if(_loc1_ && _loc1_.§?!a§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?!<§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§;4§.§%!B§(),this.§;4§.§`b§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§ !2§)
         {
            this.§ !2§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§ !2§)
         {
            this.§ !2§.viewHeight = param1;
         }
      }
      
      public function get §9!8§() : §5r§
      {
         return this.§;4§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§#!X§;
      }
      
      public function get container() : §'!9§
      {
         return this.§ !2§;
      }
   }
}
