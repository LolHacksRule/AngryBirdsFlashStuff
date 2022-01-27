package §"_§
{
   import §"!>§.§<!o§;
   import §;!,§.§"q§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §3`§ extends EventDispatcher implements § in§
   {
       
      
      protected var §1,§:Rectangle;
      
      protected var §9!&§:Number;
      
      protected var § !+§:Number;
      
      protected var §%u§:int;
      
      protected var §["E§:Boolean;
      
      protected var §6"B§:Boolean;
      
      protected var §,!A§:Vector.<§ !x§>;
      
      protected var §8X§:§ !x§;
      
      protected var §4!T§:§<!o§;
      
      protected var §+!#§:§"q§;
      
      protected var §&#§:MovieClip;
      
      public function §3`§(param1:int, param2:MovieClip, param3:§<!o§, param4:§"q§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§4!T§ = param3;
         this.§+!#§ = param4;
         this.§,!A§ = new Vector.<§ !x§>();
         this.§%u§ = param1;
         this.§6"B§ = param5;
         this.§1,§ = param6 || new Rectangle();
         this.§["E§ = param7;
         this.§,!n§(param2);
      }
      
      public function set §`I§(param1:Boolean) : void
      {
         this.§6"B§ = param1;
      }
      
      public function get §`I§() : Boolean
      {
         return this.§6"B§;
      }
      
      public function set §6!A§(param1:Rectangle) : void
      {
         this.§1,§ = param1;
      }
      
      public function get §6!A§() : Rectangle
      {
         return this.§1,§;
      }
      
      public function get index() : int
      {
         return this.§%u§;
      }
      
      public function get data() : § !x§
      {
         return this.§8X§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§["E§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§["E§;
      }
      
      protected function §,!n§(param1:MovieClip) : void
      {
         this.§&#§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§7"0§();
      }
      
      public function §7"0§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§&#§.parent.numChildren)
         {
            _loc1_ = this.§&#§.parent.numChildren - 1;
         }
         this.§&#§.parent.setChildIndex(this.§&#§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§9!&§ = param1;
         this.§ !+§ = param2;
         if(this.§8X§)
         {
            this.§8X§.popup.setViewSize(this.§9!&§ + this.§1,§.width,this.§ !+§ + this.§1,§.height);
         }
      }
      
      public function openPopup(param1:§ !x§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §0!%§() : void
      {
         if(this.§,!A§)
         {
            this.§,!A§ = new Vector.<§ !x§>();
         }
      }
      
      public function §^X§() : Boolean
      {
         if(this.§["E§)
         {
            return false;
         }
         return this.§8X§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§["E§)
         {
            return false;
         }
         if(this.§8X§ && this.§8X§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §^"$§(param1:String) : §0"1§
      {
         if(this.§8X§ && this.§8X§.popup.id == param1)
         {
            return this.§8X§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§8X§)
         {
            return this.§8X§.popup.isTransitioning;
         }
         return false;
      }
   }
}
