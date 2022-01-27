package §-!r§
{
   import §%"%§.§2Z§;
   import §@u§.§1"&§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §'j§ extends EventDispatcher implements §#!'§
   {
       
      
      protected var §^A§:Rectangle;
      
      protected var §?m§:Number;
      
      protected var §4"%§:Number;
      
      protected var §-!w§:int;
      
      protected var §7"D§:Boolean;
      
      protected var §<3§:Boolean;
      
      protected var §;R§:Vector.<§>!L§>;
      
      protected var §!!9§:§>!L§;
      
      protected var § "@§:§2Z§;
      
      protected var §3!L§:§1"&§;
      
      protected var §3!a§:MovieClip;
      
      public function §'j§(param1:int, param2:MovieClip, param3:§2Z§, param4:§1"&§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§ "@§ = param3;
         this.§3!L§ = param4;
         this.§;R§ = new Vector.<§>!L§>();
         this.§-!w§ = param1;
         this.§<3§ = param5;
         this.§^A§ = param6 || new Rectangle();
         this.§7"D§ = param7;
         this.§&!^§(param2);
      }
      
      public function set §0O§(param1:Boolean) : void
      {
         this.§<3§ = param1;
      }
      
      public function get §0O§() : Boolean
      {
         return this.§<3§;
      }
      
      public function set §@l§(param1:Rectangle) : void
      {
         this.§^A§ = param1;
      }
      
      public function get §@l§() : Rectangle
      {
         return this.§^A§;
      }
      
      public function get index() : int
      {
         return this.§-!w§;
      }
      
      public function get data() : §>!L§
      {
         return this.§!!9§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§7"D§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§7"D§;
      }
      
      protected function §&!^§(param1:MovieClip) : void
      {
         this.§3!a§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§4"!§();
      }
      
      public function §4"!§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§3!a§.parent.numChildren)
         {
            _loc1_ = this.§3!a§.parent.numChildren - 1;
         }
         this.§3!a§.parent.setChildIndex(this.§3!a§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§?m§ = param1;
         this.§4"%§ = param2;
         if(this.§!!9§)
         {
            this.§!!9§.popup.setViewSize(this.§?m§ + this.§^A§.width,this.§4"%§ + this.§^A§.height);
         }
      }
      
      public function openPopup(param1:§>!L§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §[!;§() : void
      {
         if(this.§;R§)
         {
            this.§;R§ = new Vector.<§>!L§>();
         }
      }
      
      public function §"r§() : Boolean
      {
         if(this.§7"D§)
         {
            return false;
         }
         return this.§!!9§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§7"D§)
         {
            return false;
         }
         if(this.§!!9§ && this.§!!9§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §`!G§(param1:String) : §+!B§
      {
         if(this.§!!9§ && this.§!!9§.popup.id == param1)
         {
            return this.§!!9§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§!!9§)
         {
            return this.§!!9§.popup.isTransitioning;
         }
         return false;
      }
   }
}
