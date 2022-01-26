package § !Y§
{
   import §2H§.§>!^§;
   import §93§.§"6§;
   import §93§.§?t§;
   import §93§.§^!H§;
   import §=!c§.§#=§;
   import §=!c§.§9c§;
   import §=!c§.§=>§;
   import §=!c§.§>d§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §if§ extends Sprite
   {
       
      
      protected var §,E§:§=>§;
      
      protected var §[1§:MovieClip;
      
      protected var §66§:§>!^§;
      
      public function §if§(param1:§>!^§)
      {
         super();
         this.§66§ = param1;
         this.§[1§ = new MovieClip();
         addChild(this.§[1§);
         this.§[1§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§,E§ = new §=>§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§,!X§();
         this.§,E§.clear();
         this.§,E§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §class§() : void
      {
         if(this.§,E§)
         {
            this.§,E§.setActiveStatus(true);
         }
         visible = true;
         this.§[1§.visible = visible;
      }
      
      public function changeState(param1:§>!^§) : void
      {
         this.§,!X§();
         this.§66§ = param1;
         this.§class§();
      }
      
      public function §,!X§() : void
      {
         if(this.§,E§)
         {
            this.§,E§.setActiveStatus(false);
         }
         visible = false;
         this.§[1§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§^!H§) : void
      {
         this.§66§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §;!M§(param1:String, param2:Boolean) : void
      {
         if(this.§,E§)
         {
            this.§,E§.§7Z§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §"6§
      {
         if(this.§,E§)
         {
            return this.§,E§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §#=§)
         {
            (_loc3_ as §#=§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §#=§)
         {
            return (_loc2_ as §#=§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §?t§)
         {
            (_loc3_ as §?t§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function § ,§(param1:String, param2:String) : void
      {
         var _loc3_:§>d§ = this.getItemByName(param1) as §>d§;
         if(_loc3_)
         {
            _loc3_.§'j§(param2);
         }
      }
      
      public function §7!3§(param1:String) : String
      {
         var _loc2_:§>d§ = this.getItemByName(param1) as §>d§;
         if(_loc2_)
         {
            return _loc2_.§0`§;
         }
         return "";
      }
      
      public function §@l§() : void
      {
         var _loc1_:§9c§ = null;
         for each(_loc1_ in this.§,E§.§-!`§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §%z§() : Boolean
      {
         var _loc1_:§9c§ = null;
         for each(_loc1_ in this.§,E§.§-!`§)
         {
            if(_loc1_ && _loc1_.§7F§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §0!W§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§66§.§3g§(),this.§66§.§@!_§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§,E§)
         {
            this.§,E§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§,E§)
         {
            this.§,E§.viewHeight = param1;
         }
      }
      
      public function get §5M§() : §>!^§
      {
         return this.§66§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§[1§;
      }
      
      public function get container() : §=>§
      {
         return this.§,E§;
      }
   }
}
