package §[!m§
{
   import §0!=§.§]"3§;
   import §>@§.§5"H§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §"9§ extends EventDispatcher implements §]"X§
   {
       
      
      protected var §;!O§:Rectangle;
      
      protected var §+"p§:Number;
      
      protected var §?!"§:Number;
      
      protected var §1`§:int;
      
      protected var §6!m§:Boolean;
      
      protected var §;g§:Boolean;
      
      protected var §'"R§:Vector.<§1!v§>;
      
      protected var §`p§:§1!v§;
      
      protected var §^"N§:§5"H§;
      
      protected var §;D§:§]"3§;
      
      protected var §^c§:MovieClip;
      
      public function §"9§(param1:int, param2:MovieClip, param3:§5"H§, param4:§]"3§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§^"N§ = param3;
         this.§;D§ = param4;
         this.§'"R§ = new Vector.<§1!v§>();
         this.§1`§ = param1;
         this.§;g§ = param5;
         this.§;!O§ = param6 || new Rectangle();
         this.§6!m§ = param7;
         this.§=#T§(param2);
      }
      
      public function set §3!-§(param1:Boolean) : void
      {
         this.§;g§ = param1;
      }
      
      public function get §3!-§() : Boolean
      {
         return this.§;g§;
      }
      
      public function set §%#_§(param1:Rectangle) : void
      {
         this.§;!O§ = param1;
      }
      
      public function get §%#_§() : Rectangle
      {
         return this.§;!O§;
      }
      
      public function get index() : int
      {
         return this.§1`§;
      }
      
      public function get data() : §1!v§
      {
         return this.§`p§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§6!m§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§6!m§;
      }
      
      protected function §=#T§(param1:MovieClip) : void
      {
         this.§^c§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§-"1§();
      }
      
      public function §-"1§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§^c§.parent.numChildren)
         {
            _loc1_ = this.§^c§.parent.numChildren - 1;
         }
         this.§^c§.parent.setChildIndex(this.§^c§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§+"p§ = param1;
         this.§?!"§ = param2;
         if(this.§`p§)
         {
            this.§`p§.popup.setViewSize(this.§+"p§ + this.§;!O§.width,this.§?!"§ + this.§;!O§.height);
         }
      }
      
      public function openPopup(param1:§1!v§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §=#@§() : void
      {
         if(this.§'"R§)
         {
            this.§'"R§ = new Vector.<§1!v§>();
         }
      }
      
      public function §""n§() : Boolean
      {
         if(this.§6!m§)
         {
            return false;
         }
         return this.§`p§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§6!m§)
         {
            return false;
         }
         if(this.§`p§ && this.§`p§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §6#-§(param1:String) : Boolean
      {
         var _loc2_:§1!v§ = null;
         for each(_loc2_ in this.§'"R§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function § #6§(param1:String) : §[!j§
      {
         if(this.§`p§ && this.§`p§.popup.id == param1)
         {
            return this.§`p§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§`p§)
         {
            return this.§`p§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§^c§;
      }
   }
}
