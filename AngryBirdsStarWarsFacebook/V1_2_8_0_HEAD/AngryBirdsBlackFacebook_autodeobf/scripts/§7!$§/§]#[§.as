package §7!$§
{
   import § §.§4#`§;
   import §+D§.§ #^§;
   import §+D§.§"-§;
   import §+D§.§6!D§;
   import §+D§.§6"T§;
   import §+D§.§?"o§;
   import §;"Y§.§&#X§;
   import §;"Y§.§1"z§;
   import §;"Y§.§]#X§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §]#[§ extends Sprite
   {
       
      
      protected var §^c§:§ #^§;
      
      protected var §]"S§:MovieClip;
      
      protected var §]v§:§4#`§;
      
      public function §]#[§(param1:§4#`§)
      {
         super();
         this.§]v§ = param1;
         this.§]"S§ = new MovieClip();
         addChild(this.§]"S§);
         this.§]"S§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§^c§ = §"-§.§=#T§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§8,§();
         this.§^c§.clear();
         this.§^c§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §52§() : void
      {
         if(this.§^c§)
         {
            this.§^c§.setActiveStatus(true);
         }
         visible = true;
         this.§]"S§.visible = visible;
      }
      
      public function §6!,§(param1:§4#`§) : void
      {
         this.§8,§();
         this.§]v§ = param1;
         this.§52§();
      }
      
      public function §8,§() : void
      {
         if(this.§^c§)
         {
            this.§^c§.setActiveStatus(false);
         }
         visible = false;
         this.§]"S§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§&#X§) : void
      {
         this.§]v§.§=!q§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§^c§)
         {
            this.§^c§.§'P§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §]#X§
      {
         if(this.§^c§)
         {
            return this.§^c§.getItemByName(param1);
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
         if(!(_loc3_ is §6!D§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §6!D§).setText(param1);
      }
      
      public function §+!E§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §6!D§)
         {
            return (_loc2_ as §6!D§).§+!E§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §1"z§)
         {
            (_loc3_ as §1"z§).setComponentState(param1);
         }
      }
      
      public function §!"S§(param1:String) : Array
      {
         return null;
      }
      
      public function §^#!§(param1:String, param2:String) : void
      {
         var _loc3_:§?"o§ = this.getItemByName(param1) as §?"o§;
         if(_loc3_)
         {
            _loc3_.§-c§(param2);
         }
      }
      
      public function §,!L§(param1:String) : String
      {
         var _loc2_:§?"o§ = this.getItemByName(param1) as §?"o§;
         if(_loc2_)
         {
            return _loc2_.§2",§;
         }
         return "";
      }
      
      public function §9"@§() : void
      {
         var _loc1_:§6"T§ = null;
         for each(_loc1_ in this.§^c§.§%"u§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §]g§() : Boolean
      {
         var _loc1_:§6"T§ = null;
         for each(_loc1_ in this.§^c§.§%"u§)
         {
            if(_loc1_ && _loc1_.§9C§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §8!e§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§]v§.getAppWidth(),this.§]v§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§^c§)
         {
            this.§^c§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§^c§)
         {
            this.§^c§.viewHeight = param1;
         }
      }
      
      public function get §["b§() : §4#`§
      {
         return this.§]v§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§]"S§;
      }
      
      public function get container() : § #^§
      {
         return this.§^c§;
      }
   }
}
