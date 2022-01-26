package §>!D§
{
   import §&h§.§+Y§;
   import §2K§.§,!@§;
   import §2K§.§3!5§;
   import §2K§.§7&§;
   import §2K§.§catch§;
   import §6!K§.§#![§;
   import §6!K§.§3l§;
   import §6!K§.§7!!§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;,§ extends Sprite
   {
       
      
      protected var §"!P§:§,!@§;
      
      protected var §2!>§:MovieClip;
      
      protected var §,A§:§+Y§;
      
      public function §;,§(param1:§+Y§)
      {
         super();
         this.§,A§ = param1;
         this.§2!>§ = new MovieClip();
         addChild(this.§2!>§);
         this.§2!>§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§"!P§ = new §,!@§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§2'§();
         this.§"!P§.clear();
         this.§"!P§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §]O§() : void
      {
         if(this.§"!P§)
         {
            this.§"!P§.setActiveStatus(true);
         }
         visible = true;
         this.§2!>§.visible = visible;
      }
      
      public function §@!A§(param1:§+Y§) : void
      {
         this.§2'§();
         this.§,A§ = param1;
         this.§]O§();
      }
      
      public function §2'§() : void
      {
         if(this.§"!P§)
         {
            this.§"!P§.setActiveStatus(false);
         }
         visible = false;
         this.§2!>§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§#![§) : void
      {
         this.§,A§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §&B§(param1:String, param2:Boolean) : void
      {
         if(this.§"!P§)
         {
            this.§"!P§.§#!Z§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §7!!§
      {
         if(this.§"!P§)
         {
            return this.§"!P§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §catch§)
         {
            (_loc3_ as §catch§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §catch§)
         {
            return (_loc2_ as §catch§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §3l§)
         {
            (_loc3_ as §3l§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §;U§(param1:String, param2:String) : void
      {
         var _loc3_:§7&§ = this.getItemByName(param1) as §7&§;
         if(_loc3_)
         {
            _loc3_.§&?§(param2);
         }
      }
      
      public function §"!U§(param1:String) : String
      {
         var _loc2_:§7&§ = this.getItemByName(param1) as §7&§;
         if(_loc2_)
         {
            return _loc2_.§=r§;
         }
         return "";
      }
      
      public function §<E§() : void
      {
         var _loc1_:§3!5§ = null;
         for each(_loc1_ in this.§"!P§.§<G§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §^<§() : Boolean
      {
         var _loc1_:§3!5§ = null;
         for each(_loc1_ in this.§"!P§.§<G§)
         {
            if(_loc1_ && _loc1_.§7R§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §5!a§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§,A§.getAppWidth(),this.§,A§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§"!P§)
         {
            this.§"!P§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§"!P§)
         {
            this.§"!P§.viewHeight = param1;
         }
      }
      
      public function get §@P§() : §+Y§
      {
         return this.§,A§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§2!>§;
      }
      
      public function get container() : §,!@§
      {
         return this.§"!P§;
      }
   }
}
