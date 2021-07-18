package §!y§
{
   import §"!E§.§8!%§;
   import §"!E§.§;!j§;
   import §"!E§.§?j§;
   import §"!E§.§[!s§;
   import §#!4§.§'^§;
   import §#!4§.§+!S§;
   import §#!4§.§<f§;
   import §=!3§.§;!!§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §2U§ extends Sprite
   {
       
      
      protected var §7f§:§[!s§;
      
      protected var §0q§:MovieClip;
      
      protected var §+&§:§;!!§;
      
      public function §2U§(param1:§;!!§)
      {
         super();
         this.§+&§ = param1;
         this.§0q§ = new MovieClip();
         addChild(this.§0q§);
         this.§0q§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§7f§ = new §[!s§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§=N§();
         this.§7f§.clear();
         this.§7f§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §[T§() : void
      {
         if(this.§7f§)
         {
            this.§7f§.setActiveStatus(true);
         }
         visible = true;
         this.§0q§.visible = visible;
      }
      
      public function §`s§(param1:§;!!§) : void
      {
         this.§=N§();
         this.§+&§ = param1;
         this.§[T§();
      }
      
      public function §=N§() : void
      {
         if(this.§7f§)
         {
            this.§7f§.setActiveStatus(false);
         }
         visible = false;
         this.§0q§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§+!S§) : void
      {
         this.§+&§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§7f§)
         {
            this.§7f§.§1P§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §'^§
      {
         if(this.§7f§)
         {
            return this.§7f§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §;!j§)
         {
            (_loc3_ as §;!j§).setText(param1);
         }
      }
      
      public function §,!v§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §;!j§)
         {
            return (_loc2_ as §;!j§).§,!v§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §<f§)
         {
            (_loc3_ as §<f§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §=i§(param1:String, param2:String) : void
      {
         var _loc3_:§?j§ = this.getItemByName(param1) as §?j§;
         if(_loc3_)
         {
            _loc3_.§+!b§(param2);
         }
      }
      
      public function §!!q§(param1:String) : String
      {
         var _loc2_:§?j§ = this.getItemByName(param1) as §?j§;
         if(_loc2_)
         {
            return _loc2_.§]!k§;
         }
         return "";
      }
      
      public function §+0§() : void
      {
         var _loc1_:§8!%§ = null;
         for each(_loc1_ in this.§7f§.§?n§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §`_§() : Boolean
      {
         var _loc1_:§8!%§ = null;
         for each(_loc1_ in this.§7f§.§?n§)
         {
            if(_loc1_ && _loc1_.§6!4§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §&!s§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§+&§.getAppWidth(),this.§+&§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§7f§)
         {
            this.§7f§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§7f§)
         {
            this.§7f§.viewHeight = param1;
         }
      }
      
      public function get get() : §;!!§
      {
         return this.§+&§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§0q§;
      }
      
      public function get container() : §[!s§
      {
         return this.§7f§;
      }
   }
}
