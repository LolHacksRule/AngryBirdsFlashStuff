package §"A§
{
   import §7f§.§8!3§;
   import §7f§.§9c§;
   import §7f§.§?i§;
   import §7f§.§`g§;
   import §<!P§.§>l§;
   import §^r§.§ ^§;
   import §^r§.§%%§;
   import §^r§.§>`§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §?3§ extends Sprite
   {
       
      
      protected var §3]§:§?i§;
      
      protected var §,_§:MovieClip;
      
      protected var §2J§:§>l§;
      
      public function §?3§(param1:§>l§)
      {
         super();
         this.§2J§ = param1;
         this.§,_§ = new MovieClip();
         addChild(this.§,_§);
         this.§,_§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§3]§ = new §?i§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§7L§();
         this.§3]§.clear();
         this.§3]§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §,!Q§() : void
      {
         if(this.§3]§)
         {
            this.§3]§.setActiveStatus(true);
         }
         visible = true;
         this.§,_§.visible = visible;
      }
      
      public function §,Y§(param1:§>l§) : void
      {
         this.§7L§();
         this.§2J§ = param1;
         this.§,!Q§();
      }
      
      public function §7L§() : void
      {
         if(this.§3]§)
         {
            this.§3]§.setActiveStatus(false);
         }
         visible = false;
         this.§,_§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§>`§) : void
      {
         this.§2J§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §7s§(param1:String, param2:Boolean) : void
      {
         if(this.§3]§)
         {
            this.§3]§.§2!U§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : § ^§
      {
         if(this.§3]§)
         {
            return this.§3]§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §`g§)
         {
            (_loc3_ as §`g§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §`g§)
         {
            return (_loc2_ as §`g§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §%%§)
         {
            (_loc3_ as §%%§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §=1§(param1:String, param2:String) : void
      {
         var _loc3_:§8!3§ = this.getItemByName(param1) as §8!3§;
         if(_loc3_)
         {
            _loc3_.§9!Z§(param2);
         }
      }
      
      public function §^k§(param1:String) : String
      {
         var _loc2_:§8!3§ = this.getItemByName(param1) as §8!3§;
         if(_loc2_)
         {
            return _loc2_.§7!6§;
         }
         return "";
      }
      
      public function §5g§() : void
      {
         var _loc1_:§9c§ = null;
         for each(_loc1_ in this.§3]§.§!!X§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §5d§() : Boolean
      {
         var _loc1_:§9c§ = null;
         for each(_loc1_ in this.§3]§.§!!X§)
         {
            if(_loc1_ && _loc1_.§9!;§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §7#§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§2J§.getAppWidth(),this.§2J§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§3]§)
         {
            this.§3]§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§3]§)
         {
            this.§3]§.viewHeight = param1;
         }
      }
      
      public function get §9L§() : §>l§
      {
         return this.§2J§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§,_§;
      }
      
      public function get container() : §?i§
      {
         return this.§3]§;
      }
   }
}
