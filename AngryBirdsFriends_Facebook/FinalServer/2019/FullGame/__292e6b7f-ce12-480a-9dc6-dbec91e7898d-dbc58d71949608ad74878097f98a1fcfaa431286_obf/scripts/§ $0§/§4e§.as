package § $0§
{
   import §##y§.§#$"§;
   import §+`§.§%"q§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §4e§ extends EventDispatcher implements §1#q§
   {
       
      
      protected var §3#e§:Rectangle;
      
      protected var §6$'§:Number;
      
      protected var §?"4§:Number;
      
      protected var §'!r§:int;
      
      protected var §?!u§:Boolean;
      
      protected var §""$§:Boolean;
      
      protected var §'!X§:Vector.<§#"K§>;
      
      protected var §"o§:§#"K§;
      
      protected var §#$&§:§%"q§;
      
      protected var §7!p§:§#$"§;
      
      protected var §;#'§:MovieClip;
      
      public function §4e§(param1:int, param2:MovieClip, param3:§%"q§, param4:§#$"§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§#$&§ = param3;
         this.§7!p§ = param4;
         this.§'!X§ = new Vector.<§#"K§>();
         this.§'!r§ = param1;
         this.§""$§ = param5;
         this.§3#e§ = param6 || new Rectangle();
         this.§?!u§ = param7;
         this.§-H§(param2);
      }
      
      public function set §;"O§(param1:Boolean) : void
      {
         this.§""$§ = param1;
      }
      
      public function get §;"O§() : Boolean
      {
         return this.§""$§;
      }
      
      public function set §]@§(param1:Rectangle) : void
      {
         this.§3#e§ = param1;
      }
      
      public function get §]@§() : Rectangle
      {
         return this.§3#e§;
      }
      
      public function get index() : int
      {
         return this.§'!r§;
      }
      
      public function get data() : §#"K§
      {
         return this.§"o§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§?!u§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§?!u§;
      }
      
      protected function §-H§(param1:MovieClip) : void
      {
         this.§;#'§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§7!0§();
      }
      
      public function §7!0§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§;#'§.parent.numChildren)
         {
            _loc1_ = this.§;#'§.parent.numChildren - 1;
         }
         this.§;#'§.parent.setChildIndex(this.§;#'§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§6$'§ = param1;
         this.§?"4§ = param2;
         if(this.§"o§)
         {
            this.§"o§.popup.setViewSize(this.§6$'§ + this.§3#e§.width,this.§?"4§ + this.§3#e§.height);
         }
      }
      
      public function openPopup(param1:§#"K§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §1"<§() : void
      {
         if(this.§'!X§)
         {
            this.§'!X§ = new Vector.<§#"K§>();
         }
      }
      
      public function §[#a§() : Boolean
      {
         if(this.§?!u§)
         {
            return false;
         }
         return this.§"o§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§?!u§)
         {
            return false;
         }
         if(this.§"o§ && this.§"o§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:§#"K§ = null;
         for each(_loc2_ in this.§'!X§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §,#@§
      {
         if(this.§"o§ && this.§"o§.popup.id == param1)
         {
            return this.§"o§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§"o§)
         {
            return this.§"o§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§;#'§;
      }
   }
}
