package §+w§
{
   import §!i§.§1W§;
   import §!i§.§1s§;
   import §!i§.§9!b§;
   import §!i§.§?"%§;
   import §4!t§.§95§;
   import §4!t§.§>r§;
   import §4!t§.§?i§;
   import §]n§.§0!g§;
   import flash.display.Graphics;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,!@§ extends Sprite
   {
       
      
      protected var §&#§:§1s§;
      
      protected var §4!E§:MovieClip;
      
      protected var §8!h§:§0!g§;
      
      public function §,!@§(param1:§0!g§)
      {
         super();
         this.§8!h§ = param1;
         this.§4!E§ = new MovieClip();
         addChild(this.§4!E§);
         this.§4!E§.mouseEnabled = false;
         this.mouseEnabled = false;
      }
      
      public function init(param1:XML, param2:MovieClip = null) : void
      {
         this.§&#§ = new §1s§(param1,null,this,param2);
      }
      
      public function clear() : void
      {
         this.§!"-§();
         this.§&#§.clear();
         this.§&#§ = null;
         while(numChildren > 0)
         {
            removeChildAt(0);
         }
      }
      
      public function §<!N§() : void
      {
         if(this.§&#§)
         {
            this.§&#§.setActiveStatus(true);
         }
         visible = true;
         this.§4!E§.visible = visible;
      }
      
      public function changeState(param1:§0!g§) : void
      {
         this.§!"-§();
         this.§8!h§ = param1;
         this.§<!N§();
      }
      
      public function §!"-§() : void
      {
         if(this.§&#§)
         {
            this.§&#§.setActiveStatus(false);
         }
         visible = false;
         this.§4!E§.visible = visible;
      }
      
      public function listenerUIEventOccured(param1:int, param2:String, param3:§95§) : void
      {
         this.§8!h§.§6!G§(param1,param2,param3);
      }
      
      public function setItemVisibility(param1:String, param2:Boolean) : void
      {
         if(this.§&#§)
         {
            this.§&#§.§"w§(param1,param2);
         }
      }
      
      public function getItemByName(param1:String) : §?i§
      {
         if(this.§&#§)
         {
            return this.§&#§.getItemByName(param1);
         }
         return null;
      }
      
      public function setText(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §?"%§)
         {
            (_loc3_ as §?"%§).setText(param1);
            return;
         }
         throw "--#UIView[setText]:: object was not an instance of UITextFieldRovio";
      }
      
      public function §]!`§(param1:String) : String
      {
         var _loc2_:Object = this.getItemByName(param1);
         if(_loc2_ is §?"%§)
         {
            return (_loc2_ as §?"%§).§]!`§();
         }
         return "";
      }
      
      public function setComponentState(param1:String, param2:String) : void
      {
         var _loc3_:Object = this.getItemByName(param2);
         if(_loc3_ is §>r§)
         {
            (_loc3_ as §>r§).setComponentState(param1);
         }
      }
      
      public function getRepeaterDataXML(param1:String) : Array
      {
         return null;
      }
      
      public function §0">§(param1:String, param2:String) : void
      {
         var _loc3_:§1W§ = this.getItemByName(param1) as §1W§;
         if(_loc3_)
         {
            _loc3_.§,"8§(param2);
         }
      }
      
      public function §'"!§(param1:String) : String
      {
         var _loc2_:§1W§ = this.getItemByName(param1) as §1W§;
         if(_loc2_)
         {
            return _loc2_.§%!T§;
         }
         return "";
      }
      
      public function §9!=§() : void
      {
         var _loc1_:§9!b§ = null;
         for each(_loc1_ in this.§&#§.§="§)
         {
            if(!_loc1_)
            {
            }
         }
      }
      
      public function §7"?§() : Boolean
      {
         var _loc1_:§9!b§ = null;
         for each(_loc1_ in this.§&#§.§="§)
         {
            if(_loc1_ && _loc1_.§1"G§)
            {
               return true;
            }
         }
         return false;
      }
      
      public function § !r§(param1:int = 16777215, param2:Number = 0.5) : Sprite
      {
         var _loc3_:Sprite = new Sprite();
         var _loc4_:Graphics;
         (_loc4_ = _loc3_.graphics).beginFill(param1,param2);
         _loc4_.drawRect(0,0,this.§8!h§.getAppWidth(),this.§8!h§.getAppHeight());
         _loc4_.endFill();
         return _loc3_;
      }
      
      public function set viewWidth(param1:Number) : void
      {
         if(this.§&#§)
         {
            this.§&#§.viewWidth = param1;
         }
      }
      
      public function set viewHeight(param1:Number) : void
      {
         if(this.§&#§)
         {
            this.§&#§.viewHeight = param1;
         }
      }
      
      public function get §]A§() : §0!g§
      {
         return this.§8!h§;
      }
      
      public function get movieClip() : MovieClip
      {
         return this.§4!E§;
      }
      
      public function get container() : §1s§
      {
         return this.§&#§;
      }
   }
}
