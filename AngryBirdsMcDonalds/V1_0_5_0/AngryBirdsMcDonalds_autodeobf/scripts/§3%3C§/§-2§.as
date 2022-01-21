package §3<§
{
   import §+$§.§"!p§;
   import §+$§.§5"§;
   import §+$§.§[!a§;
   import §7E§.§ =§;
   import §[h§.§ !&§;
   import §[h§.§ set§;
   import §[h§.§#<§;
   import §[h§.§5Q§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §-2§ extends Sprite
   {
       
      
      protected var §in§:§ !&§;
      
      protected var §=!>§:MovieClip;
      
      protected var §#W§:§ =§;
      
      public function §-2§(param1:§ =§)
      {
         super();
         this.§#W§ = param1;
         this.§=!>§ = new MovieClip();
         addChild(this.§=!>§);
         this.§=!>§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§in§ = new § !&§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§ !p§();
         this.§in§.clear();
         this.§in§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §'9§() : void
      {
         if(this.§in§)
         {
            this.§in§.setActiveStatus(true);
         }
         visible = true;
         this.§=!>§.visible = visible;
      }
      
      public function changeState(param1:§ =§) : void
      {
         this.§ !p§();
         this.§#W§ = param1;
         this.§'9§();
      }
      
      public function § !p§() : void
      {
         if(this.§in§)
         {
            this.§in§.setActiveStatus(false);
         }
         visible = false;
         this.§=!>§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§[!a§) : void
      {
         this.§#W§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §@K§(param1:String, param2:Boolean) : void
      {
         if(this.§in§)
         {
            this.§in§.§get §(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §5"§
      {
         if(this.§in§)
         {
            return this.§in§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is § set§)
         {
            (_loc3_ as § set§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is § set§)
         {
            return (_loc2_ as § set§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §"!p§)
         {
            (_loc3_ as §"!p§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §#m§(param1:String, param2:String) : void
      {
         var _loc3_:§#<§ = this.getItemByName(param1) as §#<§;
         if(_loc3_)
         {
            _loc3_.§<!,§(param2);
         }
      }
      
      public function §"m§(param1:String) : String
      {
         var _loc2_:§#<§ = this.getItemByName(param1) as §#<§;
         if(_loc2_)
         {
            return _loc2_.§6<§;
         }
         return "";
      }
      
      public function §,V§() : void
      {
         var _loc1_:§5Q§ = null;
         for each(_loc1_ in this.§in§.§ k§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §=!^§() : Boolean
      {
         var _loc1_:§5Q§ = null;
         for each(_loc1_ in this.§in§.§ k§)
         {
            if(_loc1_ && _loc1_.§&!<§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §%!C§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§#W§.§+!7§(),this.§#W§.§ !F§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§in§)
         {
            this.§in§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§in§)
         {
            this.§in§.viewHeight = param1;
         }
      }
      
      public function get §else§() : § =§
      {
         return this.§#W§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§=!>§;
      }
      
      public function get container() : § !&§
      {
         return this.§in§;
      }
   }
}
