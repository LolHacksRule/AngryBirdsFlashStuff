package §`"%§
{
   import §%i§.§0!Y§;
   import §%i§.§4"9§;
   import §%i§.§7!t§;
   import §%i§.§=!t§;
   import §1!t§.§!!G§;
   import §1!t§.§!>§;
   import §1!t§.§""B§;
   import §8";§.§+d§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`_§ extends Sprite
   {
       
      
      protected var §>!=§:§0!Y§;
      
      protected var §&R§:MovieClip;
      
      protected var §3"U§:§+d§;
      
      public function §`_§(param1:§+d§)
      {
         super();
         this.§3"U§ = param1;
         this.§&R§ = new MovieClip();
         addChild(this.§&R§);
         this.§&R§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§>!=§ = new §0!Y§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§^#§();
         this.§>!=§.clear();
         this.§>!=§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§>!=§)
         {
            this.§>!=§.setActiveStatus(true);
         }
         visible = true;
         this.§&R§.visible = visible;
      }
      
      public function §6!!§(param1:§+d§) : void
      {
         this.§^#§();
         this.§3"U§ = param1;
         this.activateView();
      }
      
      public function §^#§() : void
      {
         if(this.§>!=§)
         {
            this.§>!=§.setActiveStatus(false);
         }
         visible = false;
         this.§&R§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§""B§) : void
      {
         this.§3"U§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§>!=§)
         {
            this.§>!=§.§0! §(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §!>§
      {
         if(this.§>!=§)
         {
            return this.§>!=§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §4"9§)
         {
            (_loc3_ as §4"9§).setText(param1);
         }
      }
      
      public function § do§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §4"9§)
         {
            return (_loc2_ as §4"9§).§ do§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §!!G§)
         {
            (_loc3_ as §!!G§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §+"I§(param1:String, param2:String) : void
      {
         var _loc3_:§7!t§ = this.getItemByName(param1) as §7!t§;
         if(_loc3_)
         {
            _loc3_.§@"W§(param2);
         }
      }
      
      public function §8!F§(param1:String) : String
      {
         var _loc2_:§7!t§ = this.getItemByName(param1) as §7!t§;
         if(_loc2_)
         {
            return _loc2_.§9!?§;
         }
         return "";
      }
      
      public function §=g§() : void
      {
         var _loc1_:§=!t§ = null;
         for each(_loc1_ in this.§>!=§.§+?§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §4j§() : Boolean
      {
         var _loc1_:§=!t§ = null;
         for each(_loc1_ in this.§>!=§.§+?§)
         {
            if(_loc1_ && _loc1_.§!!V§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §!B§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§3"U§.getAppWidth(),this.§3"U§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§>!=§)
         {
            this.§>!=§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§>!=§)
         {
            this.§>!=§.viewHeight = param1;
         }
      }
      
      public function get §=z§() : §+d§
      {
         return this.§3"U§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&R§;
      }
      
      public function get container() : §0!Y§
      {
         return this.§>!=§;
      }
   }
}
