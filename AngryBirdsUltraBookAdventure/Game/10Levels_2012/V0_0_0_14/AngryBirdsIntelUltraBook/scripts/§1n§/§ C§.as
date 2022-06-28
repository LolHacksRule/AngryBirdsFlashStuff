package §1n§
{
   import §8,§.§+_§;
   import §=R§.§&W§;
   import §=R§.§5!a§;
   import §=R§.§7!"§;
   import §`M§.§%^§;
   import §`M§.§3!@§;
   import §`M§.§9!#§;
   import §`M§.§[A§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § C§ extends Sprite
   {
       
      
      protected var §5M§:§9!#§;
      
      protected var §=!Y§:MovieClip;
      
      protected var §default§:§+_§;
      
      public function § C§(param1:§+_§)
      {
         super();
         this.§default§ = param1;
         this.§=!Y§ = new MovieClip();
         addChild(this.§=!Y§);
         this.§=!Y§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§5M§ = new §9!#§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§#R§();
         this.§5M§.clear();
         this.§5M§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§5M§)
         {
            this.§5M§.setActiveStatus(true);
         }
         visible = true;
         this.§=!Y§.visible = visible;
      }
      
      public function §-E§(param1:§+_§) : void
      {
         this.§#R§();
         this.§default§ = param1;
         this.activateView();
      }
      
      public function §#R§() : void
      {
         if(this.§5M§)
         {
            this.§5M§.setActiveStatus(false);
         }
         visible = false;
         this.§=!Y§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§7!"§) : void
      {
         this.§default§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§5M§)
         {
            this.§5M§.§;!=§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §&W§
      {
         if(this.§5M§)
         {
            return this.§5M§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §3!@§)
         {
            (_loc3_ as §3!@§).setText(param1);
         }
      }
      
      public function §%!i§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §3!@§)
         {
            return (_loc2_ as §3!@§).§%!i§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §5!a§)
         {
            (_loc3_ as §5!a§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §%! §(param1:String, param2:String) : void
      {
         var _loc3_:§[A§ = this.getItemByName(param1) as §[A§;
         if(_loc3_)
         {
            _loc3_.§69§(param2);
         }
      }
      
      public function §[!,§(param1:String) : String
      {
         var _loc2_:§[A§ = this.getItemByName(param1) as §[A§;
         if(_loc2_)
         {
            return _loc2_.§[N§;
         }
         return "";
      }
      
      public function §5!_§() : void
      {
         var _loc1_:§%^§ = null;
         for each(_loc1_ in this.§5M§.§0!i§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §&!?§() : Boolean
      {
         var _loc1_:§%^§ = null;
         for each(_loc1_ in this.§5M§.§0!i§)
         {
            if(_loc1_ && _loc1_.§2]§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §=!N§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§default§.getAppWidth(),this.§default§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§5M§)
         {
            this.§5M§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§5M§)
         {
            this.§5M§.viewHeight = param1;
         }
      }
      
      public function get § T§() : §+_§
      {
         return this.§default§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§=!Y§;
      }
      
      public function get §>&§() : §9!#§
      {
         return this.§5M§;
      }
   }
}
