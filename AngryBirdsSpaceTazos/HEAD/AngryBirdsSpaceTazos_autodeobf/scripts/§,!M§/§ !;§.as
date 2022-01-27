package §,!M§
{
   import §"o§.§>!!§;
   import §7!6§.§"!O§;
   import §7!6§.§@Y§;
   import §7!6§.§^l§;
   import §="<§.§#`§;
   import §="<§.§,"$§;
   import §="<§.§5!;§;
   import §="<§.§?C§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § !;§ extends Sprite
   {
       
      
      protected var §3!a§:§,"$§;
      
      protected var §1!§:MovieClip;
      
      protected var §7x§:§>!!§;
      
      public function § !;§(param1:§>!!§)
      {
         super();
         this.§7x§ = param1;
         this.§1!§ = new MovieClip();
         addChild(this.§1!§);
         this.§1!§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§3!a§ = new §,"$§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§<!D§();
         this.§3!a§.clear();
         this.§3!a§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §<0§() : void
      {
         if(this.§3!a§)
         {
            this.§3!a§.setActiveStatus(true);
         }
         visible = true;
         this.§1!§.visible = visible;
      }
      
      public function changeState(param1:§>!!§) : void
      {
         this.§<!D§();
         this.§7x§ = param1;
         this.§<0§();
      }
      
      public function §<!D§() : void
      {
         if(this.§3!a§)
         {
            this.§3!a§.setActiveStatus(false);
         }
         visible = false;
         this.§1!§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§@Y§) : void
      {
         this.§7x§.§;!A§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§3!a§)
         {
            this.§3!a§.§7!]§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §"!O§
      {
         if(this.§3!a§)
         {
            return this.§3!a§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §#`§)
         {
            (_loc3_ as §#`§).setText(param1);
            return;
         }
         throw new Error("--#UIView[setText]:: object was not an instance of UITextFieldRovio");
      }
      
      public function §%!E§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §#`§)
         {
            return (_loc2_ as §#`§).§%!E§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §^l§)
         {
            (_loc3_ as §^l§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §@'§(param1:String, param2:String) : void
      {
         var _loc3_:§5!;§ = this.getItemByName(param1) as §5!;§;
         if(_loc3_)
         {
            _loc3_.§]a§(param2);
         }
      }
      
      public function §20§(param1:String) : String
      {
         var _loc2_:§5!;§ = this.getItemByName(param1) as §5!;§;
         if(_loc2_)
         {
            return _loc2_.§[t§;
         }
         return "";
      }
      
      public function §3"!§() : void
      {
         var _loc1_:§?C§ = null;
         for each(_loc1_ in this.§3!a§.§,[§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §2f§() : Boolean
      {
         var _loc1_:§?C§ = null;
         for each(_loc1_ in this.§3!a§.§,[§)
         {
            if(_loc1_ && _loc1_.§!!i§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §%!9§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§7x§.getAppWidth(),this.§7x§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§3!a§)
         {
            this.§3!a§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§3!a§)
         {
            this.§3!a§.viewHeight = param1;
         }
      }
      
      public function get §0"B§() : §>!!§
      {
         return this.§7x§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§1!§;
      }
      
      public function get container() : §,"$§
      {
         return this.§3!a§;
      }
   }
}
