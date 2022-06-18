package §?H§
{
   import §2T§.§#!'§;
   import §2T§.§&M§;
   import §2T§.§+!I§;
   import §2T§.§5@§;
   import §7=§.§9Y§;
   import §7J§.§07§;
   import §7J§.§<!?§;
   import §7J§.§=U§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §+!B§ extends Sprite
   {
       
      
      protected var §<q§:§&M§;
      
      protected var §'z§:MovieClip;
      
      protected var §8!'§:§9Y§;
      
      public function §+!B§(param1:§9Y§)
      {
         super();
         this.§8!'§ = param1;
         this.§'z§ = new MovieClip();
         addChild(this.§'z§);
         this.§'z§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§<q§ = new §&M§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§]N§();
         this.§<q§.clear();
         this.§<q§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §`>§() : void
      {
         if(this.§<q§)
         {
            this.§<q§.setActiveStatus(true);
         }
         visible = true;
         this.§'z§.visible = visible;
      }
      
      public function §0!5§(param1:§9Y§) : void
      {
         this.§]N§();
         this.§8!'§ = param1;
         this.§`>§();
      }
      
      public function §]N§() : void
      {
         if(this.§<q§)
         {
            this.§<q§.setActiveStatus(false);
         }
         visible = false;
         this.§'z§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§<!?§) : void
      {
         this.§8!'§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§<q§)
         {
            this.§<q§.§ =§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §07§
      {
         if(this.§<q§)
         {
            return this.§<q§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §5@§)
         {
            (_loc3_ as §5@§).setText(param1);
         }
      }
      
      public function §!z§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §5@§)
         {
            return (_loc2_ as §5@§).§!z§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §=U§)
         {
            (_loc3_ as §=U§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §,A§(param1:String, param2:String) : void
      {
         var _loc3_:§#!'§ = this.getItemByName(param1) as §#!'§;
         if(_loc3_)
         {
            _loc3_.§2e§(param2);
         }
      }
      
      public function §@?§(param1:String) : String
      {
         var _loc2_:§#!'§ = this.getItemByName(param1) as §#!'§;
         if(_loc2_)
         {
            return _loc2_.§#z§;
         }
         return "";
      }
      
      public function §24§() : void
      {
         var _loc1_:§+!I§ = null;
         for each(_loc1_ in this.§<q§.§]§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §@X§() : Boolean
      {
         var _loc1_:§+!I§ = null;
         for each(_loc1_ in this.§<q§.§]§)
         {
            if(_loc1_ && _loc1_.§%r§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §@!?§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§8!'§.getAppWidth(),this.§8!'§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§<q§)
         {
            this.§<q§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§<q§)
         {
            this.§<q§.viewHeight = param1;
         }
      }
      
      public function get §5i§() : §9Y§
      {
         return this.§8!'§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§'z§;
      }
      
      public function get container() : §&M§
      {
         return this.§<q§;
      }
   }
}
