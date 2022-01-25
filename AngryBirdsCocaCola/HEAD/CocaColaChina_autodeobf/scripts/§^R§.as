package
{
   import §'P§.§5!_§;
   import §'P§.§;M§;
   import §'P§.§]! §;
   import §'P§.§`;§;
   import §6!@§.§ !!§;
   import §7]§.§'T§;
   import §7]§.§8N§;
   import §7]§.§;T§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §^R§ extends Sprite
   {
       
      
      protected var §,L§:§`;§;
      
      protected var § set§:MovieClip;
      
      protected var §>d§:§ !!§;
      
      public function §^R§(param1:§ !!§)
      {
         super();
         this.§>d§ = param1;
         this.§ set§ = new MovieClip();
         addChild(this.§ set§);
         this.§ set§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§,L§ = new §`;§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§-!_§();
         this.§,L§.clear();
         this.§,L§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §0Z§() : void
      {
         if(this.§,L§)
         {
            this.§,L§.setActiveStatus(true);
         }
         visible = true;
         this.§ set§.visible = visible;
      }
      
      public function changeState(param1:§ !!§) : void
      {
         this.§-!_§();
         this.§>d§ = param1;
         this.§0Z§();
      }
      
      public function §-!_§() : void
      {
         if(this.§,L§)
         {
            this.§,L§.setActiveStatus(false);
         }
         visible = false;
         this.§ set§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§;T§) : void
      {
         this.§>d§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §^!4§(param1:String, param2:Boolean) : void
      {
         if(this.§,L§)
         {
            this.§,L§.§8>§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §'T§
      {
         if(this.§,L§)
         {
            return this.§,L§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §5!_§)
         {
            (_loc3_ as §5!_§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §5!_§)
         {
            return (_loc2_ as §5!_§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §8N§)
         {
            (_loc3_ as §8N§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §#U§(param1:String, param2:String) : void
      {
         var _loc3_:§]! § = this.getItemByName(param1) as §]! §;
         if(_loc3_)
         {
            _loc3_.§7F§(param2);
         }
      }
      
      public function §=!N§(param1:String) : String
      {
         var _loc2_:§]! § = this.getItemByName(param1) as §]! §;
         if(_loc2_)
         {
            return _loc2_.§0!,§;
         }
         return "";
      }
      
      public function §=e§() : void
      {
         var _loc1_:§;M§ = null;
         for each(_loc1_ in this.§,L§.§1!M§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §!!"§() : Boolean
      {
         var _loc1_:§;M§ = null;
         for each(_loc1_ in this.§,L§.§1!M§)
         {
            if(_loc1_ && _loc1_.§7!A§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §!!L§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§>d§.§,V§(),this.§>d§.§6!D§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§,L§)
         {
            this.§,L§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§,L§)
         {
            this.§,L§.viewHeight = param1;
         }
      }
      
      public function get §1!c§() : § !!§
      {
         return this.§>d§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§ set§;
      }
      
      public function get container() : §`;§
      {
         return this.§,L§;
      }
   }
}
