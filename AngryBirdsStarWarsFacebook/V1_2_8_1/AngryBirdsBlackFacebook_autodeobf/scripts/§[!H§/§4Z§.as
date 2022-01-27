package §[!H§
{
   import §8!h§.§%"z§;
   import §8!h§.§-V§;
   import §8!h§.§[Z§;
   import §9§.§1" §;
   import §=Z§.§'"i§;
   import §=Z§.§0%§;
   import §=Z§.§@!8§;
   import §=Z§.§^"3§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §4Z§ extends Sprite
   {
       
      
      protected var §[#,§:§@!8§;
      
      protected var §=W§:MovieClip;
      
      protected var §4!,§:§1" §;
      
      public function §4Z§(param1:§1" §)
      {
         super();
         this.§4!,§ = param1;
         this.§=W§ = new MovieClip();
         addChild(this.§=W§);
         this.§=W§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§[#,§ = new §@!8§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§<"I§();
         this.§[#,§.clear();
         this.§[#,§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §0"r§() : void
      {
         if(this.§[#,§)
         {
            this.§[#,§.setActiveStatus(true);
         }
         visible = true;
         this.§=W§.visible = visible;
      }
      
      public function §@!%§(param1:§1" §) : void
      {
         this.§<"I§();
         this.§4!,§ = param1;
         this.§0"r§();
      }
      
      public function §<"I§() : void
      {
         if(this.§[#,§)
         {
            this.§[#,§.setActiveStatus(false);
         }
         visible = false;
         this.§=W§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§-V§) : void
      {
         this.§4!,§.§+##§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§[#,§)
         {
            this.§[#,§.§&P§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §[Z§
      {
         if(this.§[#,§)
         {
            return this.§[#,§.getItemByName(param1);
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
         if(!(_loc3_ is §0%§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §0%§).setText(param1);
      }
      
      public function §%!y§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §0%§)
         {
            return (_loc2_ as §0%§).§%!y§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §%"z§)
         {
            (_loc3_ as §%"z§).setComponentState(param1);
         }
      }
      
      public function §"&§(param1:String) : Array
      {
         return null;
      }
      
      public function §`"4§(param1:String, param2:String) : void
      {
         var _loc3_:§'"i§ = this.getItemByName(param1) as §'"i§;
         if(_loc3_)
         {
            _loc3_.§4!%§(param2);
         }
      }
      
      public function §8"J§(param1:String) : String
      {
         var _loc2_:§'"i§ = this.getItemByName(param1) as §'"i§;
         if(_loc2_)
         {
            return _loc2_.§""W§;
         }
         return "";
      }
      
      public function §1q§() : void
      {
         var _loc1_:§^"3§ = null;
         for each(_loc1_ in this.§[#,§.§true §)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §,J§() : Boolean
      {
         var _loc1_:§^"3§ = null;
         for each(_loc1_ in this.§[#,§.§true §)
         {
            if(_loc1_ && _loc1_.§="=§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?"5§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§4!,§.getAppWidth(),this.§4!,§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§[#,§)
         {
            this.§[#,§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§[#,§)
         {
            this.§[#,§.viewHeight = param1;
         }
      }
      
      public function get §<j§() : §1" §
      {
         return this.§4!,§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§=W§;
      }
      
      public function get container() : §@!8§
      {
         return this.§[#,§;
      }
   }
}
