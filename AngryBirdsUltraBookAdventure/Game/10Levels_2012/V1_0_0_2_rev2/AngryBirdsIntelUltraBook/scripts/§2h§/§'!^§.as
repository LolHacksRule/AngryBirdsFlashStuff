package §2h§
{
   import §9Y§.§+!!§;
   import §9Y§.§6!8§;
   import §9Y§.§9j§;
   import §<!>§.§?Y§;
   import §?!7§.§"j§;
   import §?!7§.§8;§;
   import §?!7§.§?!x§;
   import §?!7§.§[![§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'!^§ extends Sprite
   {
       
      
      protected var §'Q§:§8;§;
      
      protected var §=!u§:MovieClip;
      
      protected var §,!+§:§?Y§;
      
      public function §'!^§(param1:§?Y§)
      {
         super();
         this.§,!+§ = param1;
         this.§=!u§ = new MovieClip();
         addChild(this.§=!u§);
         this.§=!u§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§'Q§ = new §8;§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§3a§();
         this.§'Q§.clear();
         this.§'Q§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§'Q§)
         {
            this.§'Q§.setActiveStatus(true);
         }
         visible = true;
         this.§=!u§.visible = visible;
      }
      
      public function §!!d§(param1:§?Y§) : void
      {
         this.§3a§();
         this.§,!+§ = param1;
         this.activateView();
      }
      
      public function §3a§() : void
      {
         if(this.§'Q§)
         {
            this.§'Q§.setActiveStatus(false);
         }
         visible = false;
         this.§=!u§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§6!8§) : void
      {
         this.§,!+§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§'Q§)
         {
            this.§'Q§.§for§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §9j§
      {
         if(this.§'Q§)
         {
            return this.§'Q§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §"j§)
         {
            (_loc3_ as §"j§).setText(param1);
         }
      }
      
      public function §%!o§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §"j§)
         {
            return (_loc2_ as §"j§).§%!o§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §+!!§)
         {
            (_loc3_ as §+!!§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §;!!§(param1:String, param2:String) : void
      {
         var _loc3_:§?!x§ = this.getItemByName(param1) as §?!x§;
         if(_loc3_)
         {
            _loc3_.§'!g§(param2);
         }
      }
      
      public function §4r§(param1:String) : String
      {
         var _loc2_:§?!x§ = this.getItemByName(param1) as §?!x§;
         if(_loc2_)
         {
            return _loc2_.§5!i§;
         }
         return "";
      }
      
      public function §&I§() : void
      {
         var _loc1_:§[![§ = null;
         for each(_loc1_ in this.§'Q§.§>!!§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §?a§() : Boolean
      {
         var _loc1_:§[![§ = null;
         for each(_loc1_ in this.§'Q§.§>!!§)
         {
            if(_loc1_ && _loc1_.§&!g§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §"!#§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§,!+§.getAppWidth(),this.§,!+§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§'Q§)
         {
            this.§'Q§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§'Q§)
         {
            this.§'Q§.viewHeight = param1;
         }
      }
      
      public function get §;!m§() : §?Y§
      {
         return this.§,!+§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§=!u§;
      }
      
      public function get §;H§() : §8;§
      {
         return this.§'Q§;
      }
   }
}
