package §0;§
{
   import §31§.§ !A§;
   import §31§.§-b§;
   import §31§.§;!2§;
   import §31§.§?![§;
   import §5!5§.§1!b§;
   import §6@§.§'!F§;
   import §6@§.§>n§;
   import §6@§.§[! §;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §3=§ extends Sprite
   {
       
      
      protected var §0!h§:§ !A§;
      
      protected var §catch§:MovieClip;
      
      protected var §3w§:§1!b§;
      
      public function §3=§(param1:§1!b§)
      {
         super();
         this.§3w§ = param1;
         this.§catch§ = new MovieClip();
         addChild(this.§catch§);
         this.§catch§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§0!h§ = new § !A§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§"7§();
         this.§0!h§.clear();
         this.§0!h§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §"!b§() : void
      {
         if(this.§0!h§)
         {
            this.§0!h§.setActiveStatus(true);
         }
         visible = true;
         this.§catch§.visible = visible;
      }
      
      public function changeState(param1:§1!b§) : void
      {
         this.§"7§();
         this.§3w§ = param1;
         this.§"!b§();
      }
      
      public function §"7§() : void
      {
         if(this.§0!h§)
         {
            this.§0!h§.setActiveStatus(false);
         }
         visible = false;
         this.§catch§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§[! §) : void
      {
         this.§3w§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §>!N§(param1:String, param2:Boolean) : void
      {
         if(this.§0!h§)
         {
            this.§0!h§.§1X§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §'!F§
      {
         if(this.§0!h§)
         {
            return this.§0!h§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §?![§)
         {
            (_loc3_ as §?![§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §?![§)
         {
            return (_loc2_ as §?![§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>n§)
         {
            (_loc3_ as §>n§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §]j§(param1:String, param2:String) : void
      {
         var _loc3_:§;!2§ = this.getItemByName(param1) as §;!2§;
         if(_loc3_)
         {
            _loc3_.§;!W§(param2);
         }
      }
      
      public function §<l§(param1:String) : String
      {
         var _loc2_:§;!2§ = this.getItemByName(param1) as §;!2§;
         if(_loc2_)
         {
            return _loc2_.§?z§;
         }
         return "";
      }
      
      public function §@!$§() : void
      {
         var _loc1_:§-b§ = null;
         for each(_loc1_ in this.§0!h§.§"!<§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §=C§() : Boolean
      {
         var _loc1_:§-b§ = null;
         for each(_loc1_ in this.§0!h§.§"!<§)
         {
            if(_loc1_ && _loc1_.§&c§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §,n§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§3w§.§;!>§(),this.§3w§.§,!F§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§0!h§)
         {
            this.§0!h§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§0!h§)
         {
            this.§0!h§.viewHeight = param1;
         }
      }
      
      public function get §@!b§() : §1!b§
      {
         return this.§3w§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§catch§;
      }
      
      public function get container() : § !A§
      {
         return this.§0!h§;
      }
   }
}
