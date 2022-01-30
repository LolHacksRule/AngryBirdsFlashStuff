package §5u§
{
   import § ,§.§>u§;
   import §6!^§.§1!7§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §]i§ extends EventDispatcher implements §;!o§
   {
       
      
      protected var §@"$§:Rectangle;
      
      protected var §;!;§:Number;
      
      protected var §36§:Number;
      
      protected var §&D§:int;
      
      protected var §,!+§:Boolean;
      
      protected var §0$§:Boolean;
      
      protected var §"!S§:Vector.<§ z§>;
      
      protected var §7V§:§ z§;
      
      protected var §2e§:§>u§;
      
      protected var §&X§:§1!7§;
      
      protected var §[!<§:MovieClip;
      
      public function §]i§(param1:int, param2:MovieClip, param3:§>u§, param4:§1!7§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§2e§ = param3;
         this.§&X§ = param4;
         this.§"!S§ = new Vector.<§ z§>();
         this.§&D§ = param1;
         this.§0$§ = param5;
         this.§@"$§ = param6 || new Rectangle();
         this.§,!+§ = param7;
         this.§7o§(param2);
      }
      
      public function set §^!r§(param1:Boolean) : void
      {
         this.§0$§ = param1;
      }
      
      public function get §^!r§() : Boolean
      {
         return this.§0$§;
      }
      
      public function set §1!D§(param1:Rectangle) : void
      {
         this.§@"$§ = param1;
      }
      
      public function get §1!D§() : Rectangle
      {
         return this.§@"$§;
      }
      
      public function get index() : int
      {
         return this.§&D§;
      }
      
      public function get data() : § z§
      {
         return this.§7V§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§,!+§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§,!+§;
      }
      
      protected function §7o§(param1:MovieClip) : void
      {
         this.§[!<§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§9L§();
      }
      
      public function §9L§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§[!<§.parent.numChildren)
         {
            _loc1_ = this.§[!<§.parent.numChildren - 1;
         }
         this.§[!<§.parent.setChildIndex(this.§[!<§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§;!;§ = param1;
         this.§36§ = param2;
         if(this.§7V§)
         {
            this.§7V§.popup.setViewSize(this.§;!;§ + this.§@"$§.width,this.§36§ + this.§@"$§.height);
         }
      }
      
      public function openPopup(param1:§ z§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §@C§() : void
      {
         if(this.§"!S§)
         {
            this.§"!S§ = new Vector.<§ z§>();
         }
      }
      
      public function §+!F§() : Boolean
      {
         if(this.§,!+§)
         {
            return false;
         }
         return this.§7V§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§,!+§)
         {
            return false;
         }
         if(this.§7V§ && this.§7V§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §#!I§(param1:String) : Boolean
      {
         var _loc2_:§ z§ = null;
         for each(_loc2_ in this.§"!S§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §5,§(param1:String) : §<!k§
      {
         if(this.§7V§ && this.§7V§.popup.id == param1)
         {
            return this.§7V§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§7V§)
         {
            return this.§7V§.popup.isTransitioning;
         }
         return false;
      }
   }
}
