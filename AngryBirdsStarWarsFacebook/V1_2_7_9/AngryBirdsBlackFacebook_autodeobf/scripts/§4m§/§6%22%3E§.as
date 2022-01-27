package §4m§
{
   import §'+§.§="B§;
   import §1G§.§8!a§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §6">§ extends EventDispatcher implements §9!B§
   {
       
      
      protected var §3!P§:Rectangle;
      
      protected var §<"z§:Number;
      
      protected var §5#0§:Number;
      
      protected var §5S§:int;
      
      protected var §4!Y§:Boolean;
      
      protected var §?"F§:Boolean;
      
      protected var §+"3§:Vector.<§'!c§>;
      
      protected var §@!$§:§'!c§;
      
      protected var §8-§:§="B§;
      
      protected var §[!Y§:§8!a§;
      
      protected var §,r§:MovieClip;
      
      public function §6">§(param1:int, param2:MovieClip, param3:§="B§, param4:§8!a§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§8-§ = param3;
         this.§[!Y§ = param4;
         this.§+"3§ = new Vector.<§'!c§>();
         this.§5S§ = param1;
         this.§?"F§ = param5;
         this.§3!P§ = param6 || new Rectangle();
         this.§4!Y§ = param7;
         this.§[!8§(param2);
      }
      
      public function set §;!R§(param1:Boolean) : void
      {
         this.§?"F§ = param1;
      }
      
      public function get §;!R§() : Boolean
      {
         return this.§?"F§;
      }
      
      public function set §3#"§(param1:Rectangle) : void
      {
         this.§3!P§ = param1;
      }
      
      public function get §3#"§() : Rectangle
      {
         return this.§3!P§;
      }
      
      public function get index() : int
      {
         return this.§5S§;
      }
      
      public function get data() : §'!c§
      {
         return this.§@!$§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§4!Y§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§4!Y§;
      }
      
      protected function §[!8§(param1:MovieClip) : void
      {
         this.§,r§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§ x§();
      }
      
      public function § x§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§,r§.parent.numChildren)
         {
            _loc1_ = this.§,r§.parent.numChildren - 1;
         }
         this.§,r§.parent.setChildIndex(this.§,r§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§<"z§ = param1;
         this.§5#0§ = param2;
         if(this.§@!$§)
         {
            this.§@!$§.popup.setViewSize(this.§<"z§ + this.§3!P§.width,this.§5#0§ + this.§3!P§.height);
         }
      }
      
      public function openPopup(param1:§'!c§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §="4§() : void
      {
         if(this.§+"3§)
         {
            this.§+"3§ = new Vector.<§'!c§>();
         }
      }
      
      public function §;"<§() : Boolean
      {
         if(this.§4!Y§)
         {
            return false;
         }
         return this.§@!$§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§4!Y§)
         {
            return false;
         }
         if(this.§@!$§ && this.§@!$§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §8"U§(param1:String) : Boolean
      {
         var _loc2_:§'!c§ = null;
         for each(_loc2_ in this.§+"3§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §?"_§(param1:String) : §5!R§
      {
         if(this.§@!$§ && this.§@!$§.popup.id == param1)
         {
            return this.§@!$§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§@!$§)
         {
            return this.§@!$§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§,r§;
      }
   }
}
