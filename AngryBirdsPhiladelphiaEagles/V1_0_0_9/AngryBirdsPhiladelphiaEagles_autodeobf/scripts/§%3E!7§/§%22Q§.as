package §>!7§
{
   import §!t§.§;1§;
   import §!t§.§;j§;
   import §!t§.§>B§;
   import §!t§.§@R§;
   import §5F§.§!!A§;
   import §5F§.§+!O§;
   import §5F§.§3^§;
   import §^w§.§-!,§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §"Q§ extends Sprite
   {
       
      
      protected var §0?§:§;1§;
      
      protected var §&0§:MovieClip;
      
      protected var §<b§:§-!,§;
      
      public function §"Q§(param1:§-!,§)
      {
         super();
         this.§<b§ = param1;
         this.§&0§ = new MovieClip();
         addChild(this.§&0§);
         this.§&0§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§0?§ = new §;1§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§]f§();
         this.§0?§.clear();
         this.§0?§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §`!H§() : void
      {
         if(this.§0?§)
         {
            this.§0?§.setActiveStatus(true);
         }
         visible = true;
         this.§&0§.visible = visible;
      }
      
      public function §;f§(param1:§-!,§) : void
      {
         this.§]f§();
         this.§<b§ = param1;
         this.§`!H§();
      }
      
      public function §]f§() : void
      {
         if(this.§0?§)
         {
            this.§0?§.setActiveStatus(false);
         }
         visible = false;
         this.§&0§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§+!O§) : void
      {
         this.§<b§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§0?§)
         {
            this.§0?§.§-U§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §!!A§
      {
         if(this.§0?§)
         {
            return this.§0?§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>B§)
         {
            (_loc3_ as §>B§).setText(param1);
         }
      }
      
      public function §-`§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §>B§)
         {
            return (_loc2_ as §>B§).§-`§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §3^§)
         {
            (_loc3_ as §3^§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §!!&§(param1:String, param2:String) : void
      {
         var _loc3_:§@R§ = this.getItemByName(param1) as §@R§;
         if(_loc3_)
         {
            _loc3_.§!!<§(param2);
         }
      }
      
      public function §@r§(param1:String) : String
      {
         var _loc2_:§@R§ = this.getItemByName(param1) as §@R§;
         if(_loc2_)
         {
            return _loc2_.§7!6§;
         }
         return "";
      }
      
      public function §5I§() : void
      {
         var _loc1_:§;j§ = null;
         for each(_loc1_ in this.§0?§.§8A§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §]S§() : Boolean
      {
         var _loc1_:§;j§ = null;
         for each(_loc1_ in this.§0?§.§8A§)
         {
            if(_loc1_ && _loc1_.§^!5§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §2!+§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§<b§.getAppWidth(),this.§<b§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§0?§)
         {
            this.§0?§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§0?§)
         {
            this.§0?§.viewHeight = param1;
         }
      }
      
      public function get §2!-§() : §-!,§
      {
         return this.§<b§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&0§;
      }
      
      public function get container() : §;1§
      {
         return this.§0?§;
      }
   }
}
