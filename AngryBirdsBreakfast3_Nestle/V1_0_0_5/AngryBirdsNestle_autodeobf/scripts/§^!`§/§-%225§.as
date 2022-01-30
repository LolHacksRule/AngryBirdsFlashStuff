package §^!`§
{
   import §"r§.§"j§;
   import §&<§.§2!q§;
   import §&<§.§@j§;
   import §&<§.§^!#§;
   import §[!F§.§,K§;
   import §[!F§.§1c§;
   import §[!F§.§2!;§;
   import §[!F§.§3j§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §-"5§ extends Sprite
   {
       
      
      protected var §[!<§:§3j§;
      
      protected var §`!5§:MovieClip;
      
      protected var §<D§:§"j§;
      
      public function §-"5§(param1:§"j§)
      {
         super();
         this.§<D§ = param1;
         this.§`!5§ = new MovieClip();
         addChild(this.§`!5§);
         this.§`!5§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§[!<§ = new §3j§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§2!f§();
         this.§[!<§.clear();
         this.§[!<§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §1!3§() : void
      {
         if(this.§[!<§)
         {
            this.§[!<§.setActiveStatus(true);
         }
         visible = true;
         this.§`!5§.visible = visible;
      }
      
      public function §=O§(param1:§"j§) : void
      {
         this.§2!f§();
         this.§<D§ = param1;
         this.§1!3§();
      }
      
      public function §2!f§() : void
      {
         if(this.§[!<§)
         {
            this.§[!<§.setActiveStatus(false);
         }
         visible = false;
         this.§`!5§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§^!#§) : void
      {
         this.§<D§.§""-§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§[!<§)
         {
            this.§[!<§.§;!N§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §2!q§
      {
         if(this.§[!<§)
         {
            return this.§[!<§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §1c§)
         {
            (_loc3_ as §1c§).setText(param1);
            return;
         }
         throw new Error("--#UIView[setText]:: object was not an instance of UITextFieldRovio");
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §1c§)
         {
            return (_loc2_ as §1c§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §@j§)
         {
            (_loc3_ as §@j§).setComponentState(param1);
         }
      }
      
      public function §'V§(param1:String) : Array
      {
         return null;
      }
      
      public function § >§(param1:String, param2:String) : void
      {
         var _loc3_:§2!;§ = this.getItemByName(param1) as §2!;§;
         if(_loc3_)
         {
            _loc3_.§;!k§(param2);
         }
      }
      
      public function §!!W§(param1:String) : String
      {
         var _loc2_:§2!;§ = this.getItemByName(param1) as §2!;§;
         if(_loc2_)
         {
            return _loc2_.§[b§;
         }
         return "";
      }
      
      public function § !G§() : void
      {
         var _loc1_:§,K§ = null;
         for each(_loc1_ in this.§[!<§.§ !C§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §<T§() : Boolean
      {
         var _loc1_:§,K§ = null;
         for each(_loc1_ in this.§[!<§.§ !C§)
         {
            if(_loc1_ && _loc1_.§1p§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §"!C§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§<D§.getAppWidth(),this.§<D§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§[!<§)
         {
            this.§[!<§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§[!<§)
         {
            this.§[!<§.viewHeight = param1;
         }
      }
      
      public function get §7"5§() : §"j§
      {
         return this.§<D§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§`!5§;
      }
      
      public function get container() : §3j§
      {
         return this.§[!<§;
      }
   }
}
