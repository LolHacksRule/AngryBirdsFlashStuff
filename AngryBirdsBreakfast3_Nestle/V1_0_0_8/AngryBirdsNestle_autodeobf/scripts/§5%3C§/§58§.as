package §5<§
{
   import §;"+§.§"!I§;
   import §;"+§.§#!'§;
   import §;"+§.§'L§;
   import §;"+§.§^!i§;
   import §>P§.§,3§;
   import §>P§.§-U§;
   import §>P§.§3!Z§;
   import §^C§.§5!L§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §58§ extends Sprite
   {
       
      
      protected var §@!U§:§^!i§;
      
      protected var §8!s§:MovieClip;
      
      protected var §34§:§5!L§;
      
      public function §58§(param1:§5!L§)
      {
         super();
         this.§34§ = param1;
         this.§8!s§ = new MovieClip();
         addChild(this.§8!s§);
         this.§8!s§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§@!U§ = new §^!i§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§[!C§();
         this.§@!U§.clear();
         this.§@!U§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §12§() : void
      {
         if(this.§@!U§)
         {
            this.§@!U§.setActiveStatus(true);
         }
         visible = true;
         this.§8!s§.visible = visible;
      }
      
      public function §@!Z§(param1:§5!L§) : void
      {
         this.§[!C§();
         this.§34§ = param1;
         this.§12§();
      }
      
      public function §[!C§() : void
      {
         if(this.§@!U§)
         {
            this.§@!U§.setActiveStatus(false);
         }
         visible = false;
         this.§8!s§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§,3§) : void
      {
         this.§34§.§`t§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§@!U§)
         {
            this.§@!U§.§2",§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §3!Z§
      {
         if(this.§@!U§)
         {
            return this.§@!U§.getItemByName(param1);
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
         if(!(_loc3_ is §"!I§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §"!I§).setText(param1);
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §"!I§)
         {
            return (_loc2_ as §"!I§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §-U§)
         {
            (_loc3_ as §-U§).setComponentState(param1);
         }
      }
      
      public function §%+§(param1:String) : Array
      {
         return null;
      }
      
      public function §&"7§(param1:String, param2:String) : void
      {
         var _loc3_:§'L§ = this.getItemByName(param1) as §'L§;
         if(_loc3_)
         {
            _loc3_.§%!g§(param2);
         }
      }
      
      public function §5!G§(param1:String) : String
      {
         var _loc2_:§'L§ = this.getItemByName(param1) as §'L§;
         if(_loc2_)
         {
            return _loc2_.§"!j§;
         }
         return "";
      }
      
      public function §?&§() : void
      {
         var _loc1_:§#!'§ = null;
         for each(_loc1_ in this.§@!U§.§[3§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §[X§() : Boolean
      {
         var _loc1_:§#!'§ = null;
         for each(_loc1_ in this.§@!U§.§[3§)
         {
            if(_loc1_ && _loc1_.§2!a§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §`!A§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§34§.getAppWidth(),this.§34§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§@!U§)
         {
            this.§@!U§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§@!U§)
         {
            this.§@!U§.viewHeight = param1;
         }
      }
      
      public function get final() : §5!L§
      {
         return this.§34§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§8!s§;
      }
      
      public function get container() : §^!i§
      {
         return this.§@!U§;
      }
   }
}
