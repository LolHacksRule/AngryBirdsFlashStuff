package §<Z§
{
   import §"h§.§<"+§;
   import §&!&§.§&"1§;
   import §&!&§.§+!A§;
   import §&!&§.§7!8§;
   import §<!I§.§%2§;
   import §<!I§.§7!N§;
   import §<!I§.§>"-§;
   import §<!I§.§`!n§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §7!!§ extends Sprite
   {
       
      
      protected var §?=§:§>"-§;
      
      protected var §'!7§:MovieClip;
      
      protected var §!a§:§<"+§;
      
      public function §7!!§(param1:§<"+§)
      {
         super();
         this.§!a§ = param1;
         this.§'!7§ = new MovieClip();
         addChild(this.§'!7§);
         this.§'!7§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§?=§ = new §>"-§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§^<§();
         this.§?=§.clear();
         this.§?=§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §,!r§() : void
      {
         if(this.§?=§)
         {
            this.§?=§.setActiveStatus(true);
         }
         visible = true;
         this.§'!7§.visible = visible;
      }
      
      public function §3!,§(param1:§<"+§) : void
      {
         this.§^<§();
         this.§!a§ = param1;
         this.§,!r§();
      }
      
      public function §^<§() : void
      {
         if(this.§?=§)
         {
            this.§?=§.setActiveStatus(false);
         }
         visible = false;
         this.§'!7§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§7!8§) : void
      {
         this.§!a§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§?=§)
         {
            this.§?=§.§2F§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §&"1§
      {
         if(this.§?=§)
         {
            return this.§?=§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §7!N§)
         {
            (_loc3_ as §7!N§).setText(param1);
         }
      }
      
      public function §2!^§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §7!N§)
         {
            return (_loc2_ as §7!N§).§2!^§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §+!A§)
         {
            (_loc3_ as §+!A§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §%"!§(param1:String, param2:String) : void
      {
         var _loc3_:§`!n§ = this.getItemByName(param1) as §`!n§;
         if(_loc3_)
         {
            _loc3_.§>H§(param2);
         }
      }
      
      public function §#W§(param1:String) : String
      {
         var _loc2_:§`!n§ = this.getItemByName(param1) as §`!n§;
         if(_loc2_)
         {
            return _loc2_.§&V§;
         }
         return "";
      }
      
      public function §-V§() : void
      {
         var _loc1_:§%2§ = null;
         for each(_loc1_ in this.§?=§.§7!z§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §9!4§() : Boolean
      {
         var _loc1_:§%2§ = null;
         for each(_loc1_ in this.§?=§.§7!z§)
         {
            if(_loc1_ && _loc1_.§-!;§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §;H§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§!a§.getAppWidth(),this.§!a§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§?=§)
         {
            this.§?=§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§?=§)
         {
            this.§?=§.viewHeight = param1;
         }
      }
      
      public function get §1Y§() : §<"+§
      {
         return this.§!a§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§'!7§;
      }
      
      public function get container() : §>"-§
      {
         return this.§?=§;
      }
   }
}
