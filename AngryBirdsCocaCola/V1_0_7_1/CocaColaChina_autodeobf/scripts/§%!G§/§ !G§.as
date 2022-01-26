package §%!G§
{
   import §!E§.§'P§;
   import §!E§.§,!B§;
   import §!E§.§-!%§;
   import §!E§.§]!G§;
   import §2!$§.§#!K§;
   import §2!$§.§<!%§;
   import §2!$§.§=!&§;
   import §6!@§.§ !!§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § !G§ extends Sprite
   {
       
      
      protected var §8!S§:§-!%§;
      
      protected var §'_§:MovieClip;
      
      protected var §!F§:§ !!§;
      
      public function § !G§(param1:§ !!§)
      {
         super();
         this.§!F§ = param1;
         this.§'_§ = new MovieClip();
         addChild(this.§'_§);
         this.§'_§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§8!S§ = new §-!%§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§7!^§();
         this.§8!S§.clear();
         this.§8!S§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §#1§() : void
      {
         if(this.§8!S§)
         {
            this.§8!S§.setActiveStatus(true);
         }
         visible = true;
         this.§'_§.visible = visible;
      }
      
      public function changeState(param1:§ !!§) : void
      {
         this.§7!^§();
         this.§!F§ = param1;
         this.§#1§();
      }
      
      public function §7!^§() : void
      {
         if(this.§8!S§)
         {
            this.§8!S§.setActiveStatus(false);
         }
         visible = false;
         this.§'_§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§<!%§) : void
      {
         this.§!F§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §`!E§(param1:String, param2:Boolean) : void
      {
         if(this.§8!S§)
         {
            this.§8!S§.§0d§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §=!&§
      {
         if(this.§8!S§)
         {
            return this.§8!S§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §,!B§)
         {
            (_loc3_ as §,!B§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §,!B§)
         {
            return (_loc2_ as §,!B§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §#!K§)
         {
            (_loc3_ as §#!K§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §^R§(param1:String, param2:String) : void
      {
         var _loc3_:§]!G§ = this.getItemByName(param1) as §]!G§;
         if(_loc3_)
         {
            _loc3_.§61§(param2);
         }
      }
      
      public function § set§(param1:String) : String
      {
         var _loc2_:§]!G§ = this.getItemByName(param1) as §]!G§;
         if(_loc2_)
         {
            return _loc2_.§2!#§;
         }
         return "";
      }
      
      public function §>d§() : void
      {
         var _loc1_:§'P§ = null;
         for each(_loc1_ in this.§8!S§.§ 7§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §0Z§() : Boolean
      {
         var _loc1_:§'P§ = null;
         for each(_loc1_ in this.§8!S§.§ 7§)
         {
            if(_loc1_ && _loc1_.§"y§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §-!_§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§!F§.§,V§(),this.§!F§.§6!D§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§8!S§)
         {
            this.§8!S§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§8!S§)
         {
            this.§8!S§.viewHeight = param1;
         }
      }
      
      public function get §^!4§() : § !!§
      {
         return this.§!F§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§'_§;
      }
      
      public function get container() : §-!%§
      {
         return this.§8!S§;
      }
   }
}
