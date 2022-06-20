package §0!s§
{
   import § !j§.§4#c§;
   import §&m§.§#U§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §0!r§ extends EventDispatcher implements §;!R§
   {
       
      
      protected var §>A§:Rectangle;
      
      protected var §[z§:Number;
      
      protected var §`#9§:Number;
      
      protected var §&"'§:int;
      
      protected var §<"H§:Boolean;
      
      protected var §@"K§:Boolean;
      
      protected var §@!%§:Vector.<§9"r§>;
      
      protected var §!v§:§9"r§;
      
      protected var §+" §:§4#c§;
      
      protected var §0"L§:§#U§;
      
      protected var §&!M§:MovieClip;
      
      public function §0!r§(param1:int, param2:MovieClip, param3:§4#c§, param4:§#U§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§+" § = param3;
         this.§0"L§ = param4;
         this.§@!%§ = new Vector.<§9"r§>();
         this.§&"'§ = param1;
         this.§@"K§ = param5;
         this.§>A§ = param6 || new Rectangle();
         this.§<"H§ = param7;
         this.§>!<§(param2);
      }
      
      public function set §84§(param1:Boolean) : void
      {
         this.§@"K§ = param1;
      }
      
      public function get §84§() : Boolean
      {
         return this.§@"K§;
      }
      
      public function set §^!U§(param1:Rectangle) : void
      {
         this.§>A§ = param1;
      }
      
      public function get §^!U§() : Rectangle
      {
         return this.§>A§;
      }
      
      public function get index() : int
      {
         return this.§&"'§;
      }
      
      public function get data() : §9"r§
      {
         return this.§!v§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§<"H§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§<"H§;
      }
      
      protected function §>!<§(param1:MovieClip) : void
      {
         this.§&!M§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§%^§();
      }
      
      public function §%^§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§&!M§.parent.numChildren)
         {
            _loc1_ = this.§&!M§.parent.numChildren - 1;
         }
         this.§&!M§.parent.setChildIndex(this.§&!M§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§[z§ = param1;
         this.§`#9§ = param2;
         if(this.§!v§)
         {
            this.§!v§.popup.setViewSize(this.§[z§ + this.§>A§.width,this.§`#9§ + this.§>A§.height);
         }
      }
      
      public function openPopup(param1:§9"r§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §"!?§() : void
      {
         if(this.§@!%§)
         {
            this.§@!%§ = new Vector.<§9"r§>();
         }
      }
      
      public function §?"N§() : Boolean
      {
         if(this.§<"H§)
         {
            return false;
         }
         return this.§!v§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§<"H§)
         {
            return false;
         }
         if(this.§!v§ && this.§!v§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:§9"r§ = null;
         for each(_loc2_ in this.§@!%§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §5!-§
      {
         if(this.§!v§ && this.§!v§.popup.id == param1)
         {
            return this.§!v§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§!v§)
         {
            return this.§!v§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§&!M§;
      }
   }
}
