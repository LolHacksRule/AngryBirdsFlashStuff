package §]!F§
{
   import §!!t§.§,-§;
   import §"",§.§"%§;
   import §"",§.§+§;
   import §"",§.§-!D§;
   import §"",§.§<+§;
   import §1"2§.§ F§;
   import §1"2§.§#z§;
   import §1"2§.§,!]§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §"!j§ extends Sprite
   {
       
      
      protected var §="§:§<+§;
      
      protected var §%!D§:MovieClip;
      
      protected var §1!D§:§,-§;
      
      public function §"!j§(param1:§,-§)
      {
         super();
         this.§1!D§ = param1;
         this.§%!D§ = new MovieClip();
         addChild(this.§%!D§);
         this.§%!D§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§="§ = new §<+§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§!g§();
         this.§="§.clear();
         this.§="§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§="§)
         {
            this.§="§.setActiveStatus(true);
         }
         visible = true;
         this.§%!D§.visible = visible;
      }
      
      public function §7]§(param1:§,-§) : void
      {
         this.§!g§();
         this.§1!D§ = param1;
         this.activateView();
      }
      
      public function §!g§() : void
      {
         if(this.§="§)
         {
            this.§="§.setActiveStatus(false);
         }
         visible = false;
         this.§%!D§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§,!]§) : void
      {
         this.§1!D§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§="§)
         {
            this.§="§.§`E§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §#z§
      {
         if(this.§="§)
         {
            return this.§="§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §+§)
         {
            (_loc3_ as §+§).setText(param1);
         }
      }
      
      public function §0H§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §+§)
         {
            return (_loc2_ as §+§).§0H§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is § F§)
         {
            (_loc3_ as § F§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §]""§(param1:String, param2:String) : void
      {
         var _loc3_:§"%§ = this.getItemByName(param1) as §"%§;
         if(_loc3_)
         {
            _loc3_.§3!L§(param2);
         }
      }
      
      public function §^!"§(param1:String) : String
      {
         var _loc2_:§"%§ = this.getItemByName(param1) as §"%§;
         if(_loc2_)
         {
            return _loc2_.§9"&§;
         }
         return "";
      }
      
      public function § >§() : void
      {
         var _loc1_:§-!D§ = null;
         for each(_loc1_ in this.§="§.§8%§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §]B§() : Boolean
      {
         var _loc1_:§-!D§ = null;
         for each(_loc1_ in this.§="§.§8%§)
         {
            if(_loc1_ && _loc1_.§]m§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §+K§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§1!D§.getAppWidth(),this.§1!D§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§="§)
         {
            this.§="§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§="§)
         {
            this.§="§.viewHeight = param1;
         }
      }
      
      public function get §!!b§() : §,-§
      {
         return this.§1!D§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§%!D§;
      }
      
      public function get §7!>§() : §<+§
      {
         return this.§="§;
      }
   }
}
