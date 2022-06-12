package §%!-§
{
   import §#,§.§ "o§;
   import §#,§.§&e§;
   import §#,§.§'"j§;
   import §#,§.§]$+§;
   import §#,§.§`"$§;
   import §,!Q§.§+!2§;
   import §,!Q§.§6"n§;
   import §,!Q§.§8#=§;
   import §>"W§.§7Y§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §5!z§ extends Sprite
   {
       
      
      protected var §&!M§:§]$+§;
      
      protected var §'o§:MovieClip;
      
      protected var §'!M§:§7Y§;
      
      public function §5!z§(param1:§7Y§)
      {
         super();
         this.§'!M§ = param1;
         this.§'o§ = new MovieClip();
         addChild(this.§'o§);
         this.§'o§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§&!M§ = § "o§.§>!<§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.deactivateView();
         this.§&!M§.clear();
         this.§&!M§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function activateView() : void
      {
         if(this.§&!M§)
         {
            this.§&!M§.setActiveStatus(true);
         }
         visible = true;
         this.§'o§.visible = visible;
      }
      
      public function §^"D§(param1:§7Y§) : void
      {
         this.deactivateView();
         this.§'!M§ = param1;
         this.activateView();
      }
      
      public function deactivateView() : void
      {
         if(this.§&!M§)
         {
            this.§&!M§.setActiveStatus(false);
         }
         visible = false;
         this.§'o§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§6"n§) : void
      {
         this.§'!M§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§&!M§)
         {
            this.§&!M§.§3!§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §8#=§
      {
         if(this.§&!M§)
         {
            return this.§&!M§.getItemByName(param1);
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
         if(!(_loc3_ is §`"$§))
         {
            throw new Error("\'" + param2 + "\' is not UITextFieldRovio in view \'" + name + "\'.");
         }
         (_loc3_ as §`"$§).setText(param1);
      }
      
      public function §3$>§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §`"$§)
         {
            return (_loc2_ as §`"$§).§3$>§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §+!2§)
         {
            (_loc3_ as §+!2§).setComponentState(param1);
         }
      }
      
      public function §6"1§(param1:String) : Array
      {
         return null;
      }
      
      public function §;!t§(param1:String, param2:String) : void
      {
         var _loc3_:§&e§ = this.getItemByName(param1) as §&e§;
         if(_loc3_)
         {
            _loc3_.§[!'§(param2);
         }
      }
      
      public function §9!x§(param1:String) : String
      {
         var _loc2_:§&e§ = this.getItemByName(param1) as §&e§;
         if(_loc2_)
         {
            return _loc2_.§+l§;
         }
         return "";
      }
      
      public function §>#W§() : void
      {
         var _loc1_:§'"j§ = null;
         for each(_loc1_ in this.§&!M§.§!$"§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §6#a§() : Boolean
      {
         var _loc1_:§'"j§ = null;
         for each(_loc1_ in this.§&!M§.§!$"§)
         {
            if(_loc1_ && _loc1_.§<"E§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §7#x§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§'!M§.getAppWidth(),this.§'!M§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§&!M§)
         {
            this.§&!M§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§&!M§)
         {
            this.§&!M§.viewHeight = param1;
         }
      }
      
      public function get §&";§() : §7Y§
      {
         return this.§'!M§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§'o§;
      }
      
      public function get container() : §]$+§
      {
         return this.§&!M§;
      }
   }
}
