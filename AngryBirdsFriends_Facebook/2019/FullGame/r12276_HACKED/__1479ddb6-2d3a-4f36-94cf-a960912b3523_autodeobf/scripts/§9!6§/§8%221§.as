package §9!6§
{
   import § #_§.§?!>§;
   import §&1§.§4""§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §8"1§ extends EventDispatcher implements §;"L§
   {
       
      
      protected var §@[§:Rectangle;
      
      protected var §;%§:Number;
      
      protected var §]"D§:Number;
      
      protected var §4!B§:int;
      
      protected var §&"G§:Boolean;
      
      protected var §]C§:Boolean;
      
      protected var §6#,§:Vector.<§7#%§>;
      
      protected var §-$+§:§7#%§;
      
      protected var §,#a§:§?!>§;
      
      protected var §@!y§:§4""§;
      
      protected var §'o§:MovieClip;
      
      public function §8"1§(param1:int, param2:MovieClip, param3:§?!>§, param4:§4""§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§,#a§ = param3;
         this.§@!y§ = param4;
         this.§6#,§ = new Vector.<§7#%§>();
         this.§4!B§ = param1;
         this.§]C§ = param5;
         this.§@[§ = param6 || new Rectangle();
         this.§&"G§ = param7;
         this.§<z§(param2);
      }
      
      public function set § "e§(param1:Boolean) : void
      {
         this.§]C§ = param1;
      }
      
      public function get § "e§() : Boolean
      {
         return this.§]C§;
      }
      
      public function set §;8§(param1:Rectangle) : void
      {
         this.§@[§ = param1;
      }
      
      public function get §;8§() : Rectangle
      {
         return this.§@[§;
      }
      
      public function get index() : int
      {
         return this.§4!B§;
      }
      
      public function get data() : §7#%§
      {
         return this.§-$+§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§&"G§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§&"G§;
      }
      
      protected function §<z§(param1:MovieClip) : void
      {
         this.§'o§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§6#o§();
      }
      
      public function §6#o§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§'o§.parent.numChildren)
         {
            _loc1_ = this.§'o§.parent.numChildren - 1;
         }
         this.§'o§.parent.setChildIndex(this.§'o§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§;%§ = param1;
         this.§]"D§ = param2;
         if(this.§-$+§)
         {
            this.§-$+§.popup.setViewSize(this.§;%§ + this.§@[§.width,this.§]"D§ + this.§@[§.height);
         }
      }
      
      public function openPopup(param1:§7#%§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function § $'§() : void
      {
         if(this.§6#,§)
         {
            this.§6#,§ = new Vector.<§7#%§>();
         }
      }
      
      public function §!=§() : Boolean
      {
         if(this.§&"G§)
         {
            return false;
         }
         return this.§-$+§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§&"G§)
         {
            return false;
         }
         if(this.§-$+§ && this.§-$+§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:§7#%§ = null;
         for each(_loc2_ in this.§6#,§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §?!y§
      {
         if(this.§-$+§ && this.§-$+§.popup.id == param1)
         {
            return this.§-$+§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§-$+§)
         {
            return this.§-$+§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§'o§;
      }
   }
}
