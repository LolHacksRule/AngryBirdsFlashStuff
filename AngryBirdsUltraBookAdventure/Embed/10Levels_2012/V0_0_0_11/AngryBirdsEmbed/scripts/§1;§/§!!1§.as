package §1;§
{
   import §'X§.§9[§;
   import §=^§.§ p§;
   import §=^§.§"M§;
   import §=^§.§;%§;
   import §=^§.§`f§;
   import §@s§.§'!0§;
   import §@s§.§3!?§;
   import §@s§.§9$§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §!!1§ extends Sprite
   {
       
      
      protected var § !6§:§`f§;
      
      protected var §[!;§:MovieClip;
      
      protected var §^t§:§9[§;
      
      public function §!!1§(param1:§9[§)
      {
         super();
         this.§^t§ = param1;
         this.§[!;§ = new MovieClip();
         addChild(this.§[!;§);
         this.§[!;§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§ !6§ = new §`f§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§=Q§();
         this.§ !6§.clear();
         this.§ !6§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §+,§() : void
      {
         if(this.§ !6§)
         {
            this.§ !6§.setActiveStatus(true);
         }
         visible = true;
         this.§[!;§.visible = visible;
      }
      
      public function §"!7§(param1:§9[§) : void
      {
         this.§=Q§();
         this.§^t§ = param1;
         this.§+,§();
      }
      
      public function §=Q§() : void
      {
         if(this.§ !6§)
         {
            this.§ !6§.setActiveStatus(false);
         }
         visible = false;
         this.§[!;§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§'!0§) : void
      {
         this.§^t§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§ !6§)
         {
            this.§ !6§.§`Y§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §3!?§
      {
         if(this.§ !6§)
         {
            return this.§ !6§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is § p§)
         {
            (_loc3_ as § p§).setText(param1);
         }
      }
      
      public function §6"§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is § p§)
         {
            return (_loc2_ as § p§).§6"§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §9$§)
         {
            (_loc3_ as §9$§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function § case§(param1:String, param2:String) : void
      {
         var _loc3_:§"M§ = this.getItemByName(param1) as §"M§;
         if(_loc3_)
         {
            _loc3_.§]h§(param2);
         }
      }
      
      public function §'f§(param1:String) : String
      {
         var _loc2_:§"M§ = this.getItemByName(param1) as §"M§;
         if(_loc2_)
         {
            return _loc2_.§]u§;
         }
         return "";
      }
      
      public function §,Y§() : void
      {
         var _loc1_:§;%§ = null;
         for each(_loc1_ in this.§ !6§.§2x§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §@K§() : Boolean
      {
         var _loc1_:§;%§ = null;
         for each(_loc1_ in this.§ !6§.§2x§)
         {
            if(_loc1_ && _loc1_.§const§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §<6§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§^t§.getAppWidth(),this.§^t§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§ !6§)
         {
            this.§ !6§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§ !6§)
         {
            this.§ !6§.viewHeight = param1;
         }
      }
      
      public function get §!j§() : §9[§
      {
         return this.§^t§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§[!;§;
      }
      
      public function get container() : §`f§
      {
         return this.§ !6§;
      }
   }
}
