package §[<§
{
   import §<R§.§!@§;
   import §]!d§.§-!<§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §3!-§ extends EventDispatcher implements §7!2§
   {
       
      
      protected var §?!v§:Rectangle;
      
      protected var §=!W§:Number;
      
      protected var §,"2§:Number;
      
      protected var §`y§:int;
      
      protected var §'!F§:Boolean;
      
      protected var §]e§:Boolean;
      
      protected var §5!E§:Vector.<§=T§>;
      
      protected var §#9§:§=T§;
      
      protected var §@d§:§-!<§;
      
      protected var §6R§:§!@§;
      
      protected var §#t§:MovieClip;
      
      public function §3!-§(param1:int, param2:MovieClip, param3:§-!<§, param4:§!@§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§@d§ = param3;
         this.§6R§ = param4;
         this.§5!E§ = new Vector.<§=T§>();
         this.§`y§ = param1;
         this.§]e§ = param5;
         this.§?!v§ = param6 || new Rectangle();
         this.§'!F§ = param7;
         this.§8V§(param2);
      }
      
      public function set §-!J§(param1:Boolean) : void
      {
         this.§]e§ = param1;
      }
      
      public function get §-!J§() : Boolean
      {
         return this.§]e§;
      }
      
      public function set §7!3§(param1:Rectangle) : void
      {
         this.§?!v§ = param1;
      }
      
      public function get §7!3§() : Rectangle
      {
         return this.§?!v§;
      }
      
      public function get index() : int
      {
         return this.§`y§;
      }
      
      public function get data() : §=T§
      {
         return this.§#9§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§'!F§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§'!F§;
      }
      
      protected function §8V§(param1:MovieClip) : void
      {
         this.§#t§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§?f§();
      }
      
      public function §?f§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§#t§.parent.numChildren)
         {
            _loc1_ = this.§#t§.parent.numChildren - 1;
         }
         this.§#t§.parent.setChildIndex(this.§#t§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§=!W§ = param1;
         this.§,"2§ = param2;
         if(this.§#9§)
         {
            this.§#9§.popup.setViewSize(this.§=!W§ + this.§?!v§.width,this.§,"2§ + this.§?!v§.height);
         }
      }
      
      public function openPopup(param1:§=T§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function § !i§() : void
      {
         if(this.§5!E§)
         {
            this.§5!E§ = new Vector.<§=T§>();
         }
      }
      
      public function §1s§() : Boolean
      {
         if(this.§'!F§)
         {
            return false;
         }
         return this.§#9§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§'!F§)
         {
            return false;
         }
         if(this.§#9§ && this.§#9§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §+!1§(param1:String) : Boolean
      {
         var _loc2_:§=T§ = null;
         for each(_loc2_ in this.§5!E§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §-!8§(param1:String) : §]!R§
      {
         if(this.§#9§ && this.§#9§.popup.id == param1)
         {
            return this.§#9§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§#9§)
         {
            return this.§#9§.popup.isTransitioning;
         }
         return false;
      }
   }
}
