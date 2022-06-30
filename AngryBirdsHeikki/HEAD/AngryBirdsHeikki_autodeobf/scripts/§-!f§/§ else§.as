package §-!f§
{
   import §+!M§.§7!0§;
   import §+!M§.§^<§;
   import §+!M§.§`q§;
   import §>!G§.§6!9§;
   import §]!&§.§,!>§;
   import §]!&§.§1E§;
   import §]!&§.§5!5§;
   import §]!&§.§[!9§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § else§ extends Sprite
   {
       
      
      protected var §'v§:§5!5§;
      
      protected var §;!Z§:MovieClip;
      
      protected var §&!H§:§6!9§;
      
      public function § else§(param1:§6!9§)
      {
         super();
         this.§&!H§ = param1;
         this.§;!Z§ = new MovieClip();
         addChild(this.§;!Z§);
         this.§;!Z§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§'v§ = new §5!5§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§9j§();
         this.§'v§.clear();
         this.§'v§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §?O§() : void
      {
         if(this.§'v§)
         {
            this.§'v§.setActiveStatus(true);
         }
         visible = true;
         this.§;!Z§.visible = visible;
      }
      
      public function changeState(param1:§6!9§) : void
      {
         this.§9j§();
         this.§&!H§ = param1;
         this.§?O§();
      }
      
      public function §9j§() : void
      {
         if(this.§'v§)
         {
            this.§'v§.setActiveStatus(false);
         }
         visible = false;
         this.§;!Z§.visible = visible;
      }
      
      public function listenerEventOccured(param1:int, param2:String, param3:§7!0§) : void
      {
         this.§&!H§.uiInteractionHandler(param1,param2,param3);
      }
      
      public function §!!8§(param1:String, param2:Boolean) : void
      {
         if(this.§'v§)
         {
            this.§'v§.§ t§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §`q§
      {
         if(this.§'v§)
         {
            return this.§'v§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §1E§)
         {
            (_loc3_ as §1E§).setText(param1);
         }
      }
      
      public function getText(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §1E§)
         {
            return (_loc2_ as §1E§).getText();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §^<§)
         {
            (_loc3_ as §^<§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §"C§(param1:String, param2:String) : void
      {
         var _loc3_:§[!9§ = this.getItemByName(param1) as §[!9§;
         if(_loc3_)
         {
            _loc3_.§+!1§(param2);
         }
      }
      
      public function §#`§(param1:String) : String
      {
         var _loc2_:§[!9§ = this.getItemByName(param1) as §[!9§;
         if(_loc2_)
         {
            return _loc2_.§[S§;
         }
         return "";
      }
      
      public function §-!_§() : void
      {
         var _loc1_:§,!>§ = null;
         for each(_loc1_ in this.§'v§.§@!F§)
         {
            if(_loc1_)
            {
               _loc1_.close();
            }
         }
      }
      
      public function §3!?§() : Boolean
      {
         var _loc1_:§,!>§ = null;
         for each(_loc1_ in this.§'v§.§@!F§)
         {
            if(_loc1_ && _loc1_.§57§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §7! §(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§&!H§.§]!"§(),this.§&!H§.§?!&§());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§'v§)
         {
            this.§'v§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§'v§)
         {
            this.§'v§.viewHeight = param1;
         }
      }
      
      public function get §>=§() : §6!9§
      {
         return this.§&!H§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§;!Z§;
      }
      
      public function get container() : §5!5§
      {
         return this.§'v§;
      }
   }
}
