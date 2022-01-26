package §1`§
{
   import §'"!§.§+§;
   import §'"!§.§-!g§;
   import §'"!§.§<!7§;
   import §2u§.§,6§;
   import §2u§.§7!&§;
   import §2u§.§9!e§;
   import §2u§.§]!>§;
   import §37§.§9!c§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §9%§ extends Sprite
   {
       
      
      protected var §29§:§,6§;
      
      protected var §5!x§:MovieClip;
      
      protected var §^!]§:§9!c§;
      
      public function §9%§(param1:§9!c§)
      {
         super();
         this.§^!]§ = param1;
         this.§5!x§ = new MovieClip();
         addChild(this.§5!x§);
         this.§5!x§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§29§ = new §,6§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§ !o§();
         this.§29§.clear();
         this.§29§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §`!J§() : void
      {
         if(this.§29§)
         {
            this.§29§.setActiveStatus(true);
         }
         visible = true;
         this.§5!x§.visible = visible;
      }
      
      public function §@w§(param1:§9!c§) : void
      {
         this.§ !o§();
         this.§^!]§ = param1;
         this.§`!J§();
      }
      
      public function § !o§() : void
      {
         if(this.§29§)
         {
            this.§29§.setActiveStatus(false);
         }
         visible = false;
         this.§5!x§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§+§) : void
      {
         this.§^!]§.§<8§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§29§)
         {
            this.§29§.§"!2§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §<!7§
      {
         if(this.§29§)
         {
            return this.§29§.getItemByName(param1);
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
         if(!(_loc3_ is §7!&§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §7!&§).setText(param1);
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §7!&§)
         {
            return (_loc2_ as §7!&§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §-!g§)
         {
            (_loc3_ as §-!g§).setComponentState(param1);
         }
      }
      
      public function §?w§(param1:String) : Array
      {
         return null;
      }
      
      public function §;!u§(param1:String, param2:String) : void
      {
         var _loc3_:§]!>§ = this.getItemByName(param1) as §]!>§;
         if(_loc3_)
         {
            _loc3_.§<%§(param2);
         }
      }
      
      public function §0"4§(param1:String) : String
      {
         var _loc2_:§]!>§ = this.getItemByName(param1) as §]!>§;
         if(_loc2_)
         {
            return _loc2_.§6b§;
         }
         return "";
      }
      
      public function §5u§() : void
      {
         var _loc1_:§9!e§ = null;
         for each(_loc1_ in this.§29§.§,_§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §<D§() : Boolean
      {
         var _loc1_:§9!e§ = null;
         for each(_loc1_ in this.§29§.§,_§)
         {
            if(_loc1_ && _loc1_.§!"4§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §%1§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§^!]§.getAppWidth(),this.§^!]§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§29§)
         {
            this.§29§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§29§)
         {
            this.§29§.viewHeight = param1;
         }
      }
      
      public function get §7"4§() : §9!c§
      {
         return this.§^!]§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§5!x§;
      }
      
      public function get container() : §,6§
      {
         return this.§29§;
      }
   }
}
