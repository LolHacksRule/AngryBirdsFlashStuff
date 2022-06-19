package §0F§
{
   import §,j§.§'G§;
   import §,j§.§1-§;
   import §,j§.§<U§;
   import §,j§.§[i§;
   import §-H§.§&c§;
   import §1§.§&!3§;
   import §1§.§'n§;
   import §1§.§;d§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §'j§ extends Sprite
   {
       
      
      protected var §]!?§:§1-§;
      
      protected var §^B§:MovieClip;
      
      protected var set:§&c§;
      
      public function §'j§(param1:§&c§)
      {
         super();
         this.set = param1;
         this.§^B§ = new MovieClip();
         addChild(this.§^B§);
         this.§^B§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§]!?§ = new §1-§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§8!Q§();
         this.§]!?§.clear();
         this.§]!?§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §'a§() : void
      {
         if(this.§]!?§)
         {
            this.§]!?§.setActiveStatus(true);
         }
         visible = true;
         this.§^B§.visible = visible;
      }
      
      public function §"H§(param1:§&c§) : void
      {
         this.§8!Q§();
         this.set = param1;
         this.§'a§();
      }
      
      public function §8!Q§() : void
      {
         if(this.§]!?§)
         {
            this.§]!?§.setActiveStatus(false);
         }
         visible = false;
         this.§^B§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§'n§) : void
      {
         this.set.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §%6§(param1:String, param2:Boolean) : void
      {
         if(this.§]!?§)
         {
            this.§]!?§.§7T§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §;d§
      {
         if(this.§]!?§)
         {
            return this.§]!?§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §[i§)
         {
            (_loc3_ as §[i§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §[i§)
         {
            return (_loc2_ as §[i§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §&!3§)
         {
            (_loc3_ as §&!3§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §4y§(param1:String, param2:String) : void
      {
         var _loc3_:§'G§ = this.getItemByName(param1) as §'G§;
         if(_loc3_)
         {
            _loc3_.§=s§(param2);
         }
      }
      
      public function §implements§(param1:String) : String
      {
         var _loc2_:§'G§ = this.getItemByName(param1) as §'G§;
         if(_loc2_)
         {
            return _loc2_.§2d§;
         }
         return "";
      }
      
      public function §'§() : void
      {
         var _loc1_:§<U§ = null;
         for each(_loc1_ in this.§]!?§.§%o§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §^h§() : Boolean
      {
         var _loc1_:§<U§ = null;
         for each(_loc1_ in this.§]!?§.§%o§)
         {
            if(_loc1_ && _loc1_.§4Z§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?#§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.set.getAppWidth(),this.set.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§]!?§)
         {
            this.§]!?§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§]!?§)
         {
            this.§]!?§.viewHeight = param1;
         }
      }
      
      public function get §?!9§() : §&c§
      {
         return this.set;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§^B§;
      }
      
      public function get container() : §1-§
      {
         return this.§]!?§;
      }
   }
}
