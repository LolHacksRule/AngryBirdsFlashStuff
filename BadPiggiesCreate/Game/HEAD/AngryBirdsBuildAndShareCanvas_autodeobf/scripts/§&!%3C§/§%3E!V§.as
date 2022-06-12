package §&!<§
{
   import §;<§.§'B§;
   import §=!7§.§!!]§;
   import §=!7§.§3!b§;
   import §=!7§.§6W§;
   import §=!7§.§>!;§;
   import §@y§.§0"4§;
   import §@y§.§0=§;
   import §@y§.§>!D§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §>!V§ extends Sprite
   {
       
      
      protected var §,8§:§6W§;
      
      protected var §'Q§:MovieClip;
      
      protected var §4"8§:§'B§;
      
      public function §>!V§(param1:§'B§)
      {
         super();
         this.§4"8§ = param1;
         this.§'Q§ = new MovieClip();
         addChild(this.§'Q§);
         this.§'Q§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§,8§ = new §6W§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§!c§();
         this.§,8§.clear();
         this.§,8§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §6!<§() : void
      {
         if(this.§,8§)
         {
            this.§,8§.setActiveStatus(true);
         }
         visible = true;
         this.§'Q§.visible = visible;
      }
      
      public function §7!G§(param1:§'B§) : void
      {
         this.§!c§();
         this.§4"8§ = param1;
         this.§6!<§();
      }
      
      public function §!c§() : void
      {
         if(this.§,8§)
         {
            this.§,8§.setActiveStatus(false);
         }
         visible = false;
         this.§'Q§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§0=§) : void
      {
         this.§4"8§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§,8§)
         {
            this.§,8§.§9"$§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §0"4§
      {
         if(this.§,8§)
         {
            return this.§,8§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §!!]§)
         {
            (_loc3_ as §!!]§).setText(param1);
         }
      }
      
      public function §3!f§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §!!]§)
         {
            return (_loc2_ as §!!]§).§3!f§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>!D§)
         {
            (_loc3_ as §>!D§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §-!@§(param1:String, param2:String) : void
      {
         var _loc3_:§3!b§ = this.getItemByName(param1) as §3!b§;
         if(_loc3_)
         {
            _loc3_.§9N§(param2);
         }
      }
      
      public function §9M§(param1:String) : String
      {
         var _loc2_:§3!b§ = this.getItemByName(param1) as §3!b§;
         if(_loc2_)
         {
            return _loc2_.§]!G§;
         }
         return "";
      }
      
      public function §`M§() : void
      {
         var _loc1_:§>!;§ = null;
         for each(_loc1_ in this.§,8§.§[z§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §2!J§() : Boolean
      {
         var _loc1_:§>!;§ = null;
         for each(_loc1_ in this.§,8§.§[z§)
         {
            if(_loc1_ && _loc1_.§'">§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §^s§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§4"8§.getAppWidth(),this.§4"8§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§,8§)
         {
            this.§,8§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§,8§)
         {
            this.§,8§.viewHeight = param1;
         }
      }
      
      public function get §'"8§() : §'B§
      {
         return this.§4"8§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§'Q§;
      }
      
      public function get container() : §6W§
      {
         return this.§,8§;
      }
   }
}
