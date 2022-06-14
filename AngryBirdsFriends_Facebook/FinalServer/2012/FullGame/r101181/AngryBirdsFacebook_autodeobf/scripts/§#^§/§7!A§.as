package §#^§
{
   import §0!G§.§1-§;
   import §2!i§.§'M§;
   import §2!i§.§7'§;
   import §2!i§.§=!&§;
   import §4!e§.§-"E§;
   import §4!e§.§08§;
   import §4!e§.§5!a§;
   import §4!e§.§`'§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7!A§ extends Sprite
   {
       
      
      protected var §=!a§:§08§;
      
      protected var §"7§:MovieClip;
      
      protected var §3!E§:§1-§;
      
      public function §7!A§(param1:§1-§)
      {
         super();
         this.§3!E§ = param1;
         this.§"7§ = new MovieClip();
         addChild(this.§"7§);
         this.§"7§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§=!a§ = new §08§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§6v§();
         this.§=!a§.clear();
         this.§=!a§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§=!a§)
         {
            this.§=!a§.setActiveStatus(true);
         }
         visible = true;
         this.§"7§.visible = visible;
      }
      
      public function §4"@§(param1:§1-§) : void
      {
         this.§6v§();
         this.§3!E§ = param1;
         this.activateView();
      }
      
      public function §6v§() : void
      {
         if(this.§=!a§)
         {
            this.§=!a§.setActiveStatus(false);
         }
         visible = false;
         this.§"7§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§'M§) : void
      {
         this.§3!E§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§=!a§)
         {
            this.§=!a§.§&"A§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §7'§
      {
         if(this.§=!a§)
         {
            return this.§=!a§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §-"E§)
         {
            (_loc3_ as §-"E§).setText(param1);
         }
      }
      
      public function §-W§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §-"E§)
         {
            return (_loc2_ as §-"E§).§-W§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §=!&§)
         {
            (_loc3_ as §=!&§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §;S§(param1:String, param2:String) : void
      {
         var _loc3_:§5!a§ = this.getItemByName(param1) as §5!a§;
         if(_loc3_)
         {
            _loc3_.§5"?§(param2);
         }
      }
      
      public function §%d§(param1:String) : String
      {
         var _loc2_:§5!a§ = this.getItemByName(param1) as §5!a§;
         if(_loc2_)
         {
            return _loc2_.§,"1§;
         }
         return "";
      }
      
      public function §;!!§() : void
      {
         var _loc1_:§`'§ = null;
         for each(_loc1_ in this.§=!a§.§&!Z§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §@!w§() : Boolean
      {
         var _loc1_:§`'§ = null;
         for each(_loc1_ in this.§=!a§.§&!Z§)
         {
            if(_loc1_ && _loc1_.§5!d§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §&""§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§3!E§.getAppWidth(),this.§3!E§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§=!a§)
         {
            this.§=!a§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§=!a§)
         {
            this.§=!a§.viewHeight = param1;
         }
      }
      
      public function get §[!5§() : §1-§
      {
         return this.§3!E§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§"7§;
      }
      
      public function get §%4§() : §08§
      {
         return this.§=!a§;
      }
   }
}
