package §1!i§
{
   import §,!'§.§5O§;
   import §,M§.§+f§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §,!O§ extends EventDispatcher implements §]7§
   {
       
      
      protected var §3!d§:Rectangle;
      
      protected var §^!J§:Number;
      
      protected var §+=§:Number;
      
      protected var §#W§:int;
      
      protected var §8s§:Boolean;
      
      protected var §?5§:Boolean;
      
      protected var §2!i§:Vector.<§?O§>;
      
      protected var §?q§:§?O§;
      
      protected var §8&§:§+f§;
      
      protected var §-p§:§5O§;
      
      protected var §29§:MovieClip;
      
      public function §,!O§(param1:int, param2:MovieClip, param3:§+f§, param4:§5O§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§8&§ = param3;
         this.§-p§ = param4;
         this.§2!i§ = new Vector.<§?O§>();
         this.§#W§ = param1;
         this.§?5§ = param5;
         this.§3!d§ = param6 || new Rectangle();
         this.§8s§ = param7;
         this.§"!3§(param2);
      }
      
      public function set §,,§(param1:Boolean) : void
      {
         this.§?5§ = param1;
      }
      
      public function get §,,§() : Boolean
      {
         return this.§?5§;
      }
      
      public function set §!!W§(param1:Rectangle) : void
      {
         this.§3!d§ = param1;
      }
      
      public function get §!!W§() : Rectangle
      {
         return this.§3!d§;
      }
      
      public function get index() : int
      {
         return this.§#W§;
      }
      
      public function get data() : §?O§
      {
         return this.§?q§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§8s§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§8s§;
      }
      
      protected function §"!3§(param1:MovieClip) : void
      {
         this.§29§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§&A§();
      }
      
      public function §&A§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§29§.parent.numChildren)
         {
            _loc1_ = this.§29§.parent.numChildren - 1;
         }
         this.§29§.parent.setChildIndex(this.§29§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§^!J§ = param1;
         this.§+=§ = param2;
         if(this.§?q§)
         {
            this.§?q§.popup.setViewSize(this.§^!J§ + this.§3!d§.width,this.§+=§ + this.§3!d§.height);
         }
      }
      
      public function openPopup(param1:§?O§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §4"3§() : void
      {
         if(this.§2!i§)
         {
            this.§2!i§ = new Vector.<§?O§>();
         }
      }
      
      public function §8!5§() : Boolean
      {
         if(this.§8s§)
         {
            return false;
         }
         return this.§?q§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§8s§)
         {
            return false;
         }
         if(this.§?q§ && this.§?q§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §+7§(param1:String) : Boolean
      {
         var _loc2_:§?O§ = null;
         for each(_loc2_ in this.§2!i§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §;j§(param1:String) : §?!a§
      {
         if(this.§?q§ && this.§?q§.popup.id == param1)
         {
            return this.§?q§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§?q§)
         {
            return this.§?q§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§29§;
      }
   }
}
