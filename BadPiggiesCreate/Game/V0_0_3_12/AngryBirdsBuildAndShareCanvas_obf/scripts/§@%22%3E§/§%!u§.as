package §@">§
{
   import §%!,§.§,v§;
   import §5!8§.§+!?§;
   import §5!8§.§-!+§;
   import §5!8§.§6m§;
   import §5!8§.§`""§;
   import §^x§.§3!r§;
   import §^x§.§;_§;
   import §^x§.§<!w§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §%!u§ extends Sprite
   {
       
      
      protected var §;!f§:§+!?§;
      
      protected var §8_§:MovieClip;
      
      protected var §%!c§:§,v§;
      
      public function §%!u§(param1:§,v§)
      {
         super();
         this.§%!c§ = param1;
         this.§8_§ = new MovieClip();
         addChild(this.§8_§);
         this.§8_§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§;!f§ = new §+!?§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§0"$§();
         this.§;!f§.clear();
         this.§;!f§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §<O§() : void
      {
         if(this.§;!f§)
         {
            this.§;!f§.setActiveStatus(true);
         }
         visible = true;
         this.§8_§.visible = visible;
      }
      
      public function §2C§(param1:§,v§) : void
      {
         this.§0"$§();
         this.§%!c§ = param1;
         this.§<O§();
      }
      
      public function §0"$§() : void
      {
         if(this.§;!f§)
         {
            this.§;!f§.setActiveStatus(false);
         }
         visible = false;
         this.§8_§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§<!w§) : void
      {
         this.§%!c§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§;!f§)
         {
            this.§;!f§.§,!X§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §3!r§
      {
         if(this.§;!f§)
         {
            return this.§;!f§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §6m§)
         {
            (_loc3_ as §6m§).setText(param1);
         }
      }
      
      public function §5!A§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §6m§)
         {
            return (_loc2_ as §6m§).§5!A§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §;_§)
         {
            (_loc3_ as §;_§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §>V§(param1:String, param2:String) : void
      {
         var _loc3_:§-!+§ = this.getItemByName(param1) as §-!+§;
         if(_loc3_)
         {
            _loc3_.§#!s§(param2);
         }
      }
      
      public function §#4§(param1:String) : String
      {
         var _loc2_:§-!+§ = this.getItemByName(param1) as §-!+§;
         if(_loc2_)
         {
            return _loc2_.§@P§;
         }
         return "";
      }
      
      public function §^!i§() : void
      {
         var _loc1_:§`""§ = null;
         for each(_loc1_ in this.§;!f§.§@"9§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §?+§() : Boolean
      {
         var _loc1_:§`""§ = null;
         for each(_loc1_ in this.§;!f§.§@"9§)
         {
            if(_loc1_ && _loc1_.§;!c§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §5!§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§%!c§.getAppWidth(),this.§%!c§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§;!f§)
         {
            this.§;!f§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§;!f§)
         {
            this.§;!f§.viewHeight = param1;
         }
      }
      
      public function get §^!S§() : §,v§
      {
         return this.§%!c§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§8_§;
      }
      
      public function get container() : §+!?§
      {
         return this.§;!f§;
      }
   }
}
