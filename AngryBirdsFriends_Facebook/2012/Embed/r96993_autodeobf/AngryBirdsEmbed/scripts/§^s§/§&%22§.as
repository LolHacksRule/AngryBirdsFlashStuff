package §^s§
{
   import §!^§.§ >§;
   import §!^§.§"%§;
   import §!^§.§+!5§;
   import §-!'§.§ !4§;
   import §-!'§.;
   import §-!'§.§&!H§;
   import §-!'§.§in §;
   import §[A§.§3!'§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §&"§ extends Sprite
   {
       
      
      protected var §0&§:§in §;
      
      protected var §'f§:MovieClip;
      
      protected var §<E§:§3!'§;
      
      public function §&"§(param1:§3!'§)
      {
         super();
         this.§<E§ = param1;
         this.§'f§ = new MovieClip();
         addChild(this.§'f§);
         this.§'f§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§0&§ = new §in §(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§6l§();
         this.§0&§.clear();
         this.§0&§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §%g§() : void
      {
         if(this.§0&§)
         {
            this.§0&§.setActiveStatus(true);
         }
         visible = true;
         this.§'f§.visible = visible;
      }
      
      public function §,v§(param1:§3!'§) : void
      {
         this.§6l§();
         this.§<E§ = param1;
         this.§%g§();
      }
      
      public function §6l§() : void
      {
         if(this.§0&§)
         {
            this.§0&§.setActiveStatus(false);
         }
         visible = false;
         this.§'f§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§"%§) : void
      {
         this.§<E§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§0&§)
         {
            this.§0&§.§8!$§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : § >§
      {
         if(this.§0&§)
         {
            return this.§0&§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §&!H§)
         {
            (_loc3_ as §&!H§).setText(param1);
         }
      }
      
      public function §6_§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §&!H§)
         {
            return (_loc2_ as §&!H§).§6_§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §+!5§)
         {
            (_loc3_ as §+!5§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §=-§(param1:String, param2:String) : void
      {
         var _loc3_:§#7§ = this.getItemByName(param1) as §#7§;
         if(_loc3_)
         {
            _loc3_.§&7§(param2);
         }
      }
      
      public function §&l§(param1:String) : String
      {
         var _loc2_:§#7§ = this.getItemByName(param1) as §#7§;
         if(_loc2_)
         {
            return _loc2_.§4!E§;
         }
         return "";
      }
      
      public function §"A§() : void
      {
         var _loc1_:§ !4§ = null;
         for each(_loc1_ in this.§0&§.§%!;§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §"'§() : Boolean
      {
         var _loc1_:§ !4§ = null;
         for each(_loc1_ in this.§0&§.§%!;§)
         {
            if(_loc1_ && _loc1_.§-I§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §`w§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§<E§.getAppWidth(),this.§<E§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§0&§)
         {
            this.§0&§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§0&§)
         {
            this.§0&§.viewHeight = param1;
         }
      }
      
      public function get §>z§() : §3!'§
      {
         return this.§<E§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§'f§;
      }
      
      public function get container() : §in §
      {
         return this.§0&§;
      }
   }
}
