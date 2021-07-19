package §48§
{
   import §;0§.§6h§;
   import §?""§.§6!A§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §4!<§ extends EventDispatcher implements §2`§
   {
       
      
      protected var §<N§:Rectangle;
      
      protected var §+q§:Number;
      
      protected var §;>§:Number;
      
      protected var §7!`§:int;
      
      protected var §?y§:Boolean;
      
      protected var §,!&§:Boolean;
      
      protected var §=!B§:Vector.<§5!c§>;
      
      protected var §,!P§:§5!c§;
      
      protected var §-!]§:§6h§;
      
      protected var §6!c§:§6!A§;
      
      protected var §@'§:MovieClip;
      
      public function §4!<§(param1:int, param2:MovieClip, param3:§6h§, param4:§6!A§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§-!]§ = param3;
         this.§6!c§ = param4;
         this.§=!B§ = new Vector.<§5!c§>();
         this.§7!`§ = param1;
         this.§,!&§ = param5;
         this.§<N§ = param6 || new Rectangle();
         this.§?y§ = param7;
         this.§1Q§(param2);
      }
      
      public function set §0""§(param1:Boolean) : void
      {
         this.§,!&§ = param1;
      }
      
      public function get §0""§() : Boolean
      {
         return this.§,!&§;
      }
      
      public function set §%b§(param1:Rectangle) : void
      {
         this.§<N§ = param1;
      }
      
      public function get §%b§() : Rectangle
      {
         return this.§<N§;
      }
      
      public function get index() : int
      {
         return this.§7!`§;
      }
      
      public function get data() : §5!c§
      {
         return this.§,!P§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§?y§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§?y§;
      }
      
      protected function §1Q§(param1:MovieClip) : void
      {
         this.§@'§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§;!y§();
      }
      
      public function §;!y§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§@'§.parent.numChildren)
         {
            _loc1_ = this.§@'§.parent.numChildren - 1;
         }
         this.§@'§.parent.setChildIndex(this.§@'§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§+q§ = param1;
         this.§;>§ = param2;
         if(this.§,!P§)
         {
            this.§,!P§.popup.setViewSize(this.§+q§ + this.§<N§.width,this.§;>§ + this.§<N§.height);
         }
      }
      
      public function openPopup(param1:§5!c§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §9§() : void
      {
         if(this.§=!B§)
         {
            this.§=!B§ = new Vector.<§5!c§>();
         }
      }
      
      public function §%&§() : Boolean
      {
         if(this.§?y§)
         {
            return false;
         }
         return this.§,!P§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§?y§)
         {
            return false;
         }
         if(this.§,!P§ && this.§,!P§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §^0§(param1:String) : Boolean
      {
         var _loc2_:§5!c§ = null;
         for each(_loc2_ in this.§=!B§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §0z§(param1:String) : §["#§
      {
         if(this.§,!P§ && this.§,!P§.popup.id == param1)
         {
            return this.§,!P§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§,!P§)
         {
            return this.§,!P§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§@'§;
      }
   }
}
