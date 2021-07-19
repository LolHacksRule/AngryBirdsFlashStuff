package §^=§
{
   import §1%§.§0!3§;
   import §5X§.§+!#§;
   import §5X§.§8n§;
   import §5X§.§@!!§;
   import §77§.§ ",§;
   import §77§.§%]§;
   import §77§.§&!>§;
   import §77§.§0C§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §1"F§ extends Sprite
   {
       
      
      protected var §[S§:§ ",§;
      
      protected var §<!g§:MovieClip;
      
      protected var §#!!§:§0!3§;
      
      public function §1"F§(param1:§0!3§)
      {
         super();
         this.§#!!§ = param1;
         this.§<!g§ = new MovieClip();
         addChild(this.§<!g§);
         this.§<!g§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§[S§ = new § ",§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§7>§();
         this.§[S§.clear();
         this.§[S§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §@,§() : void
      {
         if(this.§[S§)
         {
            this.§[S§.setActiveStatus(true);
         }
         visible = true;
         this.§<!g§.visible = visible;
      }
      
      public function changeState(param1:§0!3§) : void
      {
         this.§7>§();
         this.§#!!§ = param1;
         this.§@,§();
      }
      
      public function §7>§() : void
      {
         if(this.§[S§)
         {
            this.§[S§.setActiveStatus(false);
         }
         visible = false;
         this.§<!g§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§+!#§) : void
      {
         this.§#!!§.§0!H§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§[S§)
         {
            this.§[S§.§?"C§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §8n§
      {
         if(this.§[S§)
         {
            return this.§[S§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §&!>§)
         {
            (_loc3_ as §&!>§).setText(param1);
            return;
         }
         throw "--#UIView[setText]:: object was not an instance of UITextFieldRovio";
      }
      
      public function §5!m§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §&!>§)
         {
            return (_loc2_ as §&!>§).§5!m§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §@!!§)
         {
            (_loc3_ as §@!!§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §<]§(param1:String, param2:String) : void
      {
         var _loc3_:§%]§ = this.getItemByName(param1) as §%]§;
         if(_loc3_)
         {
            _loc3_.§^!3§(param2);
         }
      }
      
      public function §@"4§(param1:String) : String
      {
         var _loc2_:§%]§ = this.getItemByName(param1) as §%]§;
         if(_loc2_)
         {
            return _loc2_.§-Z§;
         }
         return "";
      }
      
      public function §"-§() : void
      {
         var _loc1_:§0C§ = null;
         for each(_loc1_ in this.§[S§.§1"0§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §3!?§() : Boolean
      {
         var _loc1_:§0C§ = null;
         for each(_loc1_ in this.§[S§.§1"0§)
         {
            if(_loc1_ && _loc1_.§?G§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function § W§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§#!!§.getAppWidth(),this.§#!!§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§[S§)
         {
            this.§[S§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§[S§)
         {
            this.§[S§.viewHeight = param1;
         }
      }
      
      public function get §,"H§() : §0!3§
      {
         return this.§#!!§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§<!g§;
      }
      
      public function get container() : § ",§
      {
         return this.§[S§;
      }
   }
}
