package §;!K§
{
   import §'!N§.§2!3§;
   import §'!N§.§71§;
   import §'!N§.§9!O§;
   import §;[§.§'z§;
   import §;[§.§>!^§;
   import §;[§.§]T§;
   import §;[§.§`![§;
   import §]m§.§-D§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §+!4§ extends Sprite
   {
       
      
      protected var §4A§:§>!^§;
      
      protected var §;e§:MovieClip;
      
      protected var §[!8§:§-D§;
      
      public function §+!4§(param1:§-D§)
      {
         super();
         this.§[!8§ = param1;
         this.§;e§ = new MovieClip();
         addChild(this.§;e§);
         this.§;e§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§4A§ = new §>!^§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§`!7§();
         this.§4A§.clear();
         this.§4A§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function § R§() : void
      {
         if(this.§4A§)
         {
            this.§4A§.setActiveStatus(true);
         }
         visible = true;
         this.§;e§.visible = visible;
      }
      
      public function §'!a§(param1:§-D§) : void
      {
         this.§`!7§();
         this.§[!8§ = param1;
         this.§ R§();
      }
      
      public function §`!7§() : void
      {
         if(this.§4A§)
         {
            this.§4A§.setActiveStatus(false);
         }
         visible = false;
         this.§;e§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§9!O§) : void
      {
         this.§[!8§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §!S§(param1:String, param2:Boolean) : void
      {
         if(this.§4A§)
         {
            this.§4A§.§,b§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §2!3§
      {
         if(this.§4A§)
         {
            return this.§4A§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §'z§)
         {
            (_loc3_ as §'z§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §'z§)
         {
            return (_loc2_ as §'z§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §71§)
         {
            (_loc3_ as §71§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §"?§(param1:String, param2:String) : void
      {
         var _loc3_:§]T§ = this.getItemByName(param1) as §]T§;
         if(_loc3_)
         {
            _loc3_.§!!?§(param2);
         }
      }
      
      public function §7>§(param1:String) : String
      {
         var _loc2_:§]T§ = this.getItemByName(param1) as §]T§;
         if(_loc2_)
         {
            return _loc2_.§9[§;
         }
         return "";
      }
      
      public function §39§() : void
      {
         var _loc1_:§`![§ = null;
         for each(_loc1_ in this.§4A§.§[!Y§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §6W§() : Boolean
      {
         var _loc1_:§`![§ = null;
         for each(_loc1_ in this.§4A§.§[!Y§)
         {
            if(_loc1_ && _loc1_.§2p§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §=!3§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§[!8§.getAppWidth(),this.§[!8§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§4A§)
         {
            this.§4A§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§4A§)
         {
            this.§4A§.viewHeight = param1;
         }
      }
      
      public function get §9&§() : §-D§
      {
         return this.§[!8§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§;e§;
      }
      
      public function get container() : §>!^§
      {
         return this.§4A§;
      }
   }
}
