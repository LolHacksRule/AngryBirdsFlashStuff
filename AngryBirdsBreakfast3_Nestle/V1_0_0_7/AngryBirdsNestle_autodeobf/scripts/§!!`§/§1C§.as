package §!!`§
{
   import §'!u§.§&S§;
   import §="3§.§[N§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §1C§ extends EventDispatcher implements §'X§
   {
       
      
      protected var §0!J§:Rectangle;
      
      protected var §-!k§:Number;
      
      protected var §]v§:Number;
      
      protected var §2B§:int;
      
      protected var §<!$§:Boolean;
      
      protected var §>"-§:Boolean;
      
      protected var §8f§:Vector.<§9@§>;
      
      protected var §1+§:§9@§;
      
      protected var §-F§:§&S§;
      
      protected var §6!x§:§[N§;
      
      protected var §-"1§:MovieClip;
      
      public function §1C§(param1:int, param2:MovieClip, param3:§&S§, param4:§[N§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§-F§ = param3;
         this.§6!x§ = param4;
         this.§8f§ = new Vector.<§9@§>();
         this.§2B§ = param1;
         this.§>"-§ = param5;
         this.§0!J§ = param6 || new Rectangle();
         this.§<!$§ = param7;
         this.§>!y§(param2);
      }
      
      public function set §="$§(param1:Boolean) : void
      {
         this.§>"-§ = param1;
      }
      
      public function get §="$§() : Boolean
      {
         return this.§>"-§;
      }
      
      public function set §5W§(param1:Rectangle) : void
      {
         this.§0!J§ = param1;
      }
      
      public function get §5W§() : Rectangle
      {
         return this.§0!J§;
      }
      
      public function get index() : int
      {
         return this.§2B§;
      }
      
      public function get data() : §9@§
      {
         return this.§1+§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§<!$§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§<!$§;
      }
      
      protected function §>!y§(param1:MovieClip) : void
      {
         this.§-"1§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§1""§();
      }
      
      public function §1""§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§-"1§.parent.numChildren)
         {
            _loc1_ = this.§-"1§.parent.numChildren - 1;
         }
         this.§-"1§.parent.setChildIndex(this.§-"1§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§-!k§ = param1;
         this.§]v§ = param2;
         if(this.§1+§)
         {
            this.§1+§.popup.setViewSize(this.§-!k§ + this.§0!J§.width,this.§]v§ + this.§0!J§.height);
         }
      }
      
      public function openPopup(param1:§9@§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §6!r§() : void
      {
         if(this.§8f§)
         {
            this.§8f§ = new Vector.<§9@§>();
         }
      }
      
      public function §@"-§() : Boolean
      {
         if(this.§<!$§)
         {
            return false;
         }
         return this.§1+§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§<!$§)
         {
            return false;
         }
         if(this.§1+§ && this.§1+§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §"z§(param1:String) : Boolean
      {
         var _loc2_:§9@§ = null;
         for each(_loc2_ in this.§8f§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §`!L§(param1:String) : §3%§
      {
         if(this.§1+§ && this.§1+§.popup.id == param1)
         {
            return this.§1+§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§1+§)
         {
            return this.§1+§.popup.isTransitioning;
         }
         return false;
      }
   }
}
