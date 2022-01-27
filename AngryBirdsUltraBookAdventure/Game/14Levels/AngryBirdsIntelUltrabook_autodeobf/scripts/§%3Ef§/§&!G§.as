package §>f§
{
   import §2y§.§54§;
   import §2y§.§<N§;
   import §2y§.§=!o§;
   import §2y§.§^! §;
   import §8!H§.§9![§;
   import §@!&§.§'!o§;
   import §@!&§.§-0§;
   import §@!&§.§7!>§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §&!G§ extends Sprite
   {
       
      
      protected var §>0§:§^! §;
      
      protected var §&!m§:MovieClip;
      
      protected var §<!§:§9![§;
      
      public function §&!G§(param1:§9![§)
      {
         super();
         this.§<!§ = param1;
         this.§&!m§ = new MovieClip();
         addChild(this.§&!m§);
         this.§&!m§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§>0§ = new §^! §(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§^!M§();
         this.§>0§.clear();
         this.§>0§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§>0§)
         {
            this.§>0§.setActiveStatus(true);
         }
         visible = true;
         this.§&!m§.visible = visible;
      }
      
      public function §3`§(param1:§9![§) : void
      {
         this.§^!M§();
         this.§<!§ = param1;
         this.activateView();
      }
      
      public function §^!M§() : void
      {
         if(this.§>0§)
         {
            this.§>0§.setActiveStatus(false);
         }
         visible = false;
         this.§&!m§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§'!o§) : void
      {
         this.§<!§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§>0§)
         {
            this.§>0§.§'!W§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §7!>§
      {
         if(this.§>0§)
         {
            return this.§>0§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §54§)
         {
            (_loc3_ as §54§).setText(param1);
         }
      }
      
      public function §5Q§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §54§)
         {
            return (_loc2_ as §54§).§5Q§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §-0§)
         {
            (_loc3_ as §-0§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §?!]§(param1:String, param2:String) : void
      {
         var _loc3_:§<N§ = this.getItemByName(param1) as §<N§;
         if(_loc3_)
         {
            _loc3_.§-U§(param2);
         }
      }
      
      public function §]!8§(param1:String) : String
      {
         var _loc2_:§<N§ = this.getItemByName(param1) as §<N§;
         if(_loc2_)
         {
            return _loc2_.§]E§;
         }
         return "";
      }
      
      public function §>!>§() : void
      {
         var _loc1_:§=!o§ = null;
         for each(_loc1_ in this.§>0§.§&O§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §4f§() : Boolean
      {
         var _loc1_:§=!o§ = null;
         for each(_loc1_ in this.§>0§.§&O§)
         {
            if(_loc1_ && _loc1_.§0a§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §!!s§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§<!§.getAppWidth(),this.§<!§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§>0§)
         {
            this.§>0§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§>0§)
         {
            this.§>0§.viewHeight = param1;
         }
      }
      
      public function get §9]§() : §9![§
      {
         return this.§<!§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&!m§;
      }
      
      public function get §^!W§() : §^! §
      {
         return this.§>0§;
      }
   }
}
