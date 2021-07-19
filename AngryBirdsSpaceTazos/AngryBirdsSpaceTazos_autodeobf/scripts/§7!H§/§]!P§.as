package §7!H§
{
   import §#!b§.§'y§;
   import §%!r§.§3!'§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §]!P§ extends EventDispatcher implements §&!k§
   {
       
      
      protected var §>!R§:Rectangle;
      
      protected var § !%§:Number;
      
      protected var §=D§:Number;
      
      protected var §?"<§:int;
      
      protected var §-!U§:Boolean;
      
      protected var §&"+§:Boolean;
      
      protected var §null §:Vector.<§'"H§>;
      
      protected var §'!s§:§'"H§;
      
      protected var §7Z§:§3!'§;
      
      protected var §3!+§:§'y§;
      
      protected var §[S§:MovieClip;
      
      public function §]!P§(param1:int, param2:MovieClip, param3:§3!'§, param4:§'y§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§7Z§ = param3;
         this.§3!+§ = param4;
         this.§null § = new Vector.<§'"H§>();
         this.§?"<§ = param1;
         this.§&"+§ = param5;
         this.§>!R§ = param6 || new Rectangle();
         this.§-!U§ = param7;
         this.§'U§(param2);
      }
      
      public function set §6!%§(param1:Boolean) : void
      {
         this.§&"+§ = param1;
      }
      
      public function get §6!%§() : Boolean
      {
         return this.§&"+§;
      }
      
      public function set §0"!§(param1:Rectangle) : void
      {
         this.§>!R§ = param1;
      }
      
      public function get §0"!§() : Rectangle
      {
         return this.§>!R§;
      }
      
      public function get index() : int
      {
         return this.§?"<§;
      }
      
      public function get data() : §'"H§
      {
         return this.§'!s§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§-!U§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§-!U§;
      }
      
      protected function §'U§(param1:MovieClip) : void
      {
         this.§[S§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§,!<§();
      }
      
      public function §,!<§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§[S§.parent.numChildren)
         {
            _loc1_ = this.§[S§.parent.numChildren - 1;
         }
         this.§[S§.parent.setChildIndex(this.§[S§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§ !%§ = param1;
         this.§=D§ = param2;
         if(this.§'!s§)
         {
            this.§'!s§.popup.setViewSize(this.§ !%§ + this.§>!R§.width,this.§=D§ + this.§>!R§.height);
         }
      }
      
      public function openPopup(param1:§'"H§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §<!N§() : void
      {
         if(this.§null §)
         {
            this.§null § = new Vector.<§'"H§>();
         }
      }
      
      public function §^",§() : Boolean
      {
         if(this.§-!U§)
         {
            return false;
         }
         return this.§'!s§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§-!U§)
         {
            return false;
         }
         if(this.§'!s§ && this.§'!s§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §'!Q§(param1:String) : §3z§
      {
         if(this.§'!s§ && this.§'!s§.popup.id == param1)
         {
            return this.§'!s§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§'!s§)
         {
            return this.§'!s§.popup.isTransitioning;
         }
         return false;
      }
   }
}
