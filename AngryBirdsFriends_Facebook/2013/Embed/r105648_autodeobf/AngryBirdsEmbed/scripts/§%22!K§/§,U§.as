package §"!K§
{
   import § if§.§2q§;
   import §&U§.§ 3§;
   import §&U§.§0!5§;
   import §&U§.§05§;
   import §&U§.§`%§;
   import §1t§.§-!M§;
   import §1t§.§@B§;
   import §1t§.§`!B§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,U§ extends Sprite
   {
       
      
      protected var §%!4§:§05§;
      
      protected var §<a§:MovieClip;
      
      protected var §7!1§:§2q§;
      
      public function §,U§(param1:§2q§)
      {
         super();
         this.§7!1§ = param1;
         this.§<a§ = new MovieClip();
         addChild(this.§<a§);
         this.§<a§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§%!4§ = new §05§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§;b§();
         this.§%!4§.clear();
         this.§%!4§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function § L§() : void
      {
         if(this.§%!4§)
         {
            this.§%!4§.setActiveStatus(true);
         }
         visible = true;
         this.§<a§.visible = visible;
      }
      
      public function §%!%§(param1:§2q§) : void
      {
         this.§;b§();
         this.§7!1§ = param1;
         this.§ L§();
      }
      
      public function §;b§() : void
      {
         if(this.§%!4§)
         {
            this.§%!4§.setActiveStatus(false);
         }
         visible = false;
         this.§<a§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§`!B§) : void
      {
         this.§7!1§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§%!4§)
         {
            this.§%!4§.§8!7§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §@B§
      {
         if(this.§%!4§)
         {
            return this.§%!4§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is § 3§)
         {
            (_loc3_ as § 3§).setText(param1);
         }
      }
      
      public function §=!$§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is § 3§)
         {
            return (_loc2_ as § 3§).§=!$§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §-!M§)
         {
            (_loc3_ as §-!M§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §^P§(param1:String, param2:String) : void
      {
         var _loc3_:§`%§ = this.getItemByName(param1) as §`%§;
         if(_loc3_)
         {
            _loc3_.§ C§(param2);
         }
      }
      
      public function §4A§(param1:String) : String
      {
         var _loc2_:§`%§ = this.getItemByName(param1) as §`%§;
         if(_loc2_)
         {
            return _loc2_.§"!@§;
         }
         return "";
      }
      
      public function §1$§() : void
      {
         var _loc1_:§0!5§ = null;
         for each(_loc1_ in this.§%!4§.§"6§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §@R§() : Boolean
      {
         var _loc1_:§0!5§ = null;
         for each(_loc1_ in this.§%!4§.§"6§)
         {
            if(_loc1_ && _loc1_.§0[§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §8E§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§7!1§.getAppWidth(),this.§7!1§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§%!4§)
         {
            this.§%!4§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§%!4§)
         {
            this.§%!4§.viewHeight = param1;
         }
      }
      
      public function get §9_§() : §2q§
      {
         return this.§7!1§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§<a§;
      }
      
      public function get container() : §05§
      {
         return this.§%!4§;
      }
   }
}
