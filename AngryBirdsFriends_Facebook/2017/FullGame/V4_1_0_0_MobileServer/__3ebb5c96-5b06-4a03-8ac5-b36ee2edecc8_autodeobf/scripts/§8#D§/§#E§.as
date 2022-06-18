package §8#D§
{
   import §%#A§.§&§;
   import §%#A§.§4"2§;
   import §%#A§.§9#g§;
   import §%#A§.§]!_§;
   import §%#A§.§^!4§;
   import §<"1§.§'"S§;
   import §<"1§.§@!N§;
   import §<"1§.§[!K§;
   import §>@§.§'!L§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §#E§ extends Sprite
   {
       
      
      protected var §1"6§:§]!_§;
      
      protected var §^#!§:MovieClip;
      
      protected var § "g§:§'!L§;
      
      public function §#E§(param1:§'!L§)
      {
         super();
         this.§ "g§ = param1;
         this.§^#!§ = new MovieClip();
         addChild(this.§^#!§);
         this.§^#!§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§1"6§ = §4"2§.§ !R§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.deactivateView();
         this.§1"6§.clear();
         this.§1"6§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§1"6§)
         {
            this.§1"6§.setActiveStatus(true);
         }
         visible = true;
         this.§^#!§.visible = visible;
      }
      
      public function §9!5§(param1:§'!L§) : void
      {
         this.deactivateView();
         this.§ "g§ = param1;
         this.activateView();
      }
      
      public function deactivateView() : void
      {
         if(this.§1"6§)
         {
            this.§1"6§.setActiveStatus(false);
         }
         visible = false;
         this.§^#!§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§'"S§) : void
      {
         this.§ "g§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§1"6§)
         {
            this.§1"6§.§?b§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §[!K§
      {
         if(this.§1"6§)
         {
            return this.§1"6§.getItemByName(param1);
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
         if(!(_loc3_ is §^!4§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §^!4§).setText(param1);
      }
      
      public function §9!c§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §^!4§)
         {
            return (_loc2_ as §^!4§).§9!c§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §@!N§)
         {
            (_loc3_ as §@!N§).setComponentState(param1);
         }
      }
      
      public function §1#n§(param1:String) : Array
      {
         return null;
      }
      
      public function §`!+§(param1:String, param2:String) : void
      {
         var _loc3_:§&#4§ = this.getItemByName(param1) as §&#4§;
         if(_loc3_)
         {
            _loc3_.§%F§(param2);
         }
      }
      
      public function §,p§(param1:String) : String
      {
         var _loc2_:§&#4§ = this.getItemByName(param1) as §&#4§;
         if(_loc2_)
         {
            return _loc2_.§="M§;
         }
         return "";
      }
      
      public function §9$,§() : void
      {
         var _loc1_:§9#g§ = null;
         for each(_loc1_ in this.§1"6§.§+G§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function § "t§() : Boolean
      {
         var _loc1_:§9#g§ = null;
         for each(_loc1_ in this.§1"6§.§+G§)
         {
            if(_loc1_ && _loc1_.§%#;§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §>#W§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§ "g§.getAppWidth(),this.§ "g§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§1"6§)
         {
            this.§1"6§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§1"6§)
         {
            this.§1"6§.viewHeight = param1;
         }
      }
      
      public function get §&N§() : §'!L§
      {
         return this.§ "g§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§^#!§;
      }
      
      public function get container() : §]!_§
      {
         return this.§1"6§;
      }
   }
}
