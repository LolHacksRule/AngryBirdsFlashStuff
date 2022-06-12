package §4!t§
{
   import §0!d§.§+J§;
   import §0!d§.§7!a§;
   import §0!d§.§>!4§;
   import §0!d§.§`G§;
   import §3[§.§0!K§;
   import §<8§.§"h§;
   import §<8§.§'X§;
   import §<8§.§7!n§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §=p§ extends Sprite
   {
       
      
      protected var §7I§:§7!a§;
      
      protected var §0Z§:MovieClip;
      
      protected var §,$§:§0!K§;
      
      public function §=p§(param1:§0!K§)
      {
         super();
         this.§,$§ = param1;
         this.§0Z§ = new MovieClip();
         addChild(this.§0Z§);
         this.§0Z§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§7I§ = new §7!a§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§continue§();
         this.§7I§.clear();
         this.§7I§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §@Y§() : void
      {
         if(this.§7I§)
         {
            this.§7I§.setActiveStatus(true);
         }
         visible = true;
         this.§0Z§.visible = visible;
      }
      
      public function §use §(param1:§0!K§) : void
      {
         this.§continue§();
         this.§,$§ = param1;
         this.§@Y§();
      }
      
      public function §continue§() : void
      {
         if(this.§7I§)
         {
            this.§7I§.setActiveStatus(false);
         }
         visible = false;
         this.§0Z§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§7!n§) : void
      {
         this.§,$§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§7I§)
         {
            this.§7I§.§`!F§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §'X§
      {
         if(this.§7I§)
         {
            return this.§7I§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §`G§)
         {
            (_loc3_ as §`G§).setText(param1);
         }
      }
      
      public function §0$§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §`G§)
         {
            return (_loc2_ as §`G§).§0$§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §"h§)
         {
            (_loc3_ as §"h§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §6"&§(param1:String, param2:String) : void
      {
         var _loc3_:§+J§ = this.getItemByName(param1) as §+J§;
         if(_loc3_)
         {
            _loc3_.§,!1§(param2);
         }
      }
      
      public function §6r§(param1:String) : String
      {
         var _loc2_:§+J§ = this.getItemByName(param1) as §+J§;
         if(_loc2_)
         {
            return _loc2_.§;!D§;
         }
         return "";
      }
      
      public function §7!z§() : void
      {
         var _loc1_:§>!4§ = null;
         for each(_loc1_ in this.§7I§.§`F§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §>E§() : Boolean
      {
         var _loc1_:§>!4§ = null;
         for each(_loc1_ in this.§7I§.§`F§)
         {
            if(_loc1_ && _loc1_.§>!L§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §^![§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§,$§.getAppWidth(),this.§,$§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§7I§)
         {
            this.§7I§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§7I§)
         {
            this.§7I§.viewHeight = param1;
         }
      }
      
      public function get §2O§() : §0!K§
      {
         return this.§,$§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§0Z§;
      }
      
      public function get container() : §7!a§
      {
         return this.§7I§;
      }
   }
}
