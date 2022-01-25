package §%3§
{
   import §7!H§.§&![§;
   import §7!H§.§12§;
   import §7!H§.§`f§;
   import §8!<§.§#u§;
   import §8!<§.§1e§;
   import §8!<§.§2W§;
   import §8!<§.§?!@§;
   import §@W§.§2!_§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7b§ extends Sprite
   {
       
      
      protected var §&!'§:§2W§;
      
      protected var §4!R§:MovieClip;
      
      protected var §;!`§:§2!_§;
      
      public function §7b§(param1:§2!_§)
      {
         super();
         this.§;!`§ = param1;
         this.§4!R§ = new MovieClip();
         addChild(this.§4!R§);
         this.§4!R§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§&!'§ = new §2W§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§=V§();
         this.§&!'§.clear();
         this.§&!'§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §]!6§() : void
      {
         if(this.§&!'§)
         {
            this.§&!'§.setActiveStatus(true);
         }
         visible = true;
         this.§4!R§.visible = visible;
      }
      
      public function changeState(param1:§2!_§) : void
      {
         this.§=V§();
         this.§;!`§ = param1;
         this.§]!6§();
      }
      
      public function §=V§() : void
      {
         if(this.§&!'§)
         {
            this.§&!'§.setActiveStatus(false);
         }
         visible = false;
         this.§4!R§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§12§) : void
      {
         this.§;!`§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §7y§(param1:String, param2:Boolean) : void
      {
         if(this.§&!'§)
         {
            this.§&!'§.§5!<§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §&![§
      {
         if(this.§&!'§)
         {
            return this.§&!'§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §#u§)
         {
            (_loc3_ as §#u§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §#u§)
         {
            return (_loc2_ as §#u§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §`f§)
         {
            (_loc3_ as §`f§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §6!P§(param1:String, param2:String) : void
      {
         var _loc3_:§1e§ = this.getItemByName(param1) as §1e§;
         if(_loc3_)
         {
            _loc3_.§>s§(param2);
         }
      }
      
      public function §1!5§(param1:String) : String
      {
         var _loc2_:§1e§ = this.getItemByName(param1) as §1e§;
         if(_loc2_)
         {
            return _loc2_.§"!`§;
         }
         return "";
      }
      
      public function §'R§() : void
      {
         var _loc1_:§?!@§ = null;
         for each(_loc1_ in this.§&!'§.§@!X§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §+!'§() : Boolean
      {
         var _loc1_:§?!@§ = null;
         for each(_loc1_ in this.§&!'§.§@!X§)
         {
            if(_loc1_ && _loc1_.§1>§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §^!C§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§;!`§.§5h§(),this.§;!`§.§,!B§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§&!'§)
         {
            this.§&!'§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§&!'§)
         {
            this.§&!'§.viewHeight = param1;
         }
      }
      
      public function get §#&§() : §2!_§
      {
         return this.§;!`§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§4!R§;
      }
      
      public function get container() : §2W§
      {
         return this.§&!'§;
      }
   }
}
