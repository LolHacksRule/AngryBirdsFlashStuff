package §[#A§
{
   import §2$;§.§ I§;
   import §2$;§.§!"e§;
   import §2$;§.§-$5§;
   import §2$;§.§6"$§;
   import §2$;§.§=]§;
   import §6#x§.§'!G§;
   import §<8§.§6!1§;
   import §<8§.§8!g§;
   import §<8§.§;"k§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §+#<§ extends Sprite
   {
       
      
      protected var §'o§:§!"e§;
      
      protected var §&W§:MovieClip;
      
      protected var §`K§:§'!G§;
      
      public function §+#<§(param1:§'!G§)
      {
         super();
         this.§`K§ = param1;
         this.§&W§ = new MovieClip();
         addChild(this.§&W§);
         this.§&W§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§'o§ = §6"$§.§<z§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.deactivateView();
         this.§'o§.clear();
         this.§'o§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§'o§)
         {
            this.§'o§.setActiveStatus(true);
         }
         visible = true;
         this.§&W§.visible = visible;
      }
      
      public function §?!i§(param1:§'!G§) : void
      {
         this.deactivateView();
         this.§`K§ = param1;
         this.activateView();
      }
      
      public function deactivateView() : void
      {
         if(this.§'o§)
         {
            this.§'o§.setActiveStatus(false);
         }
         visible = false;
         this.§&W§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§8!g§) : void
      {
         this.§`K§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§'o§)
         {
            this.§'o§.§3X§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §6!1§
      {
         if(this.§'o§)
         {
            return this.§'o§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(!_loc3_)
         {
            throw new Error("Could not find textfield \'" + param2 + "\' in view \'" + name + "\'.");
         }
         if(!(_loc3_ is §-$5§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §-$5§).setText(param1);
      }
      
      public function §>O§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §-$5§)
         {
            return (_loc2_ as §-$5§).§>O§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §;"k§)
         {
            (_loc3_ as §;"k§).setComponentState(param1);
         }
      }
      
      public function §"V§(param1:String) : Array
      {
         return null;
      }
      
      public function §&c§(param1:String, param2:String) : void
      {
         var _loc3_:§=]§ = this.getItemByName(param1) as §=]§;
         if(_loc3_)
         {
            _loc3_.§=t§(param2);
         }
      }
      
      public function §'!s§(param1:String) : String
      {
         var _loc2_:§=]§ = this.getItemByName(param1) as §=]§;
         if(_loc2_)
         {
            return _loc2_.§+#j§;
         }
         return "";
      }
      
      public function § !F§() : void
      {
         var _loc1_:§ I§ = null;
         for each(_loc1_ in this.§'o§.§#z§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §8#7§() : Boolean
      {
         var _loc1_:§ I§ = null;
         for each(_loc1_ in this.§'o§.§#z§)
         {
            if(_loc1_ && _loc1_.§?!v§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §8![§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§`K§.getAppWidth(),this.§`K§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§'o§)
         {
            this.§'o§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§'o§)
         {
            this.§'o§.viewHeight = param1;
         }
      }
      
      public function get §case§() : §'!G§
      {
         return this.§`K§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§&W§;
      }
      
      public function get container() : §!"e§
      {
         return this.§'o§;
      }
   }
}
