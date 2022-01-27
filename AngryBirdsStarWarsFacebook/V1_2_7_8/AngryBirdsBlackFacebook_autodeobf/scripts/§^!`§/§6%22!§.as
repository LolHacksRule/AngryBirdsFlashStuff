package §^!`§
{
   import §""d§.§+">§;
   import §""d§.§,m§;
   import §""d§.§39§;
   import §""d§.§>"x§;
   import §4##§.§5!9§;
   import §4##§.§7!B§;
   import §4##§.§7!Y§;
   import §7"l§.§,!Y§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §6"!§ extends Sprite
   {
       
      
      protected var §,r§:§,m§;
      
      protected var §6!&§:MovieClip;
      
      protected var §0# §:§,!Y§;
      
      public function §6"!§(param1:§,!Y§)
      {
         super();
         this.§0# § = param1;
         this.§6!&§ = new MovieClip();
         addChild(this.§6!&§);
         this.§6!&§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§,r§ = new §,m§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§7J§();
         this.§,r§.clear();
         this.§,r§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §4C§() : void
      {
         if(this.§,r§)
         {
            this.§,r§.setActiveStatus(true);
         }
         visible = true;
         this.§6!&§.visible = visible;
      }
      
      public function §7"C§(param1:§,!Y§) : void
      {
         this.§7J§();
         this.§0# § = param1;
         this.§4C§();
      }
      
      public function §7J§() : void
      {
         if(this.§,r§)
         {
            this.§,r§.setActiveStatus(false);
         }
         visible = false;
         this.§6!&§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§7!B§) : void
      {
         this.§0# §.§6t§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§,r§)
         {
            this.§,r§.§-!e§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §5!9§
      {
         if(this.§,r§)
         {
            return this.§,r§.getItemByName(param1);
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
         if(!(_loc3_ is §+">§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §+">§).setText(param1);
      }
      
      public function §^!n§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §+">§)
         {
            return (_loc2_ as §+">§).§^!n§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §7!Y§)
         {
            (_loc3_ as §7!Y§).setComponentState(param1);
         }
      }
      
      public function §#v§(param1:String) : Array
      {
         return null;
      }
      
      public function §2"l§(param1:String, param2:String) : void
      {
         var _loc3_:§>"x§ = this.getItemByName(param1) as §>"x§;
         if(_loc3_)
         {
            _loc3_.§;"]§(param2);
         }
      }
      
      public function §4]§(param1:String) : String
      {
         var _loc2_:§>"x§ = this.getItemByName(param1) as §>"x§;
         if(_loc2_)
         {
            return _loc2_.§1#,§;
         }
         return "";
      }
      
      public function §<5§() : void
      {
         var _loc1_:§39§ = null;
         for each(_loc1_ in this.§,r§.§+!C§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §,#3§() : Boolean
      {
         var _loc1_:§39§ = null;
         for each(_loc1_ in this.§,r§.§+!C§)
         {
            if(_loc1_ && _loc1_.§+"x§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §'9§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§0# §.getAppWidth(),this.§0# §.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§,r§)
         {
            this.§,r§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§,r§)
         {
            this.§,r§.viewHeight = param1;
         }
      }
      
      public function get §9d§() : §,!Y§
      {
         return this.§0# §;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§6!&§;
      }
      
      public function get container() : §,m§
      {
         return this.§,r§;
      }
   }
}
