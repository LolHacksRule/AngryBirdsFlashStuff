package §1!=§
{
   import §5P§.§""C§;
   import §@l§.§6$9§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §9!!§ extends EventDispatcher implements §6!<§
   {
       
      
      protected var §7%§:Rectangle;
      
      protected var §!"T§:Number;
      
      protected var §0F§:Number;
      
      protected var §7$9§:int;
      
      protected var §2F§:Boolean;
      
      protected var §2!o§:Boolean;
      
      protected var §=@§:Vector.<§>"q§>;
      
      protected var § "&§:§>"q§;
      
      protected var §1a§:§""C§;
      
      protected var §'#g§:§6$9§;
      
      protected var §,#2§:MovieClip;
      
      public function §9!!§(param1:int, param2:MovieClip, param3:§""C§, param4:§6$9§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§1a§ = param3;
         this.§'#g§ = param4;
         this.§=@§ = new Vector.<§>"q§>();
         this.§7$9§ = param1;
         this.§2!o§ = param5;
         this.§7%§ = param6 || new Rectangle();
         this.§2F§ = param7;
         this.§=#,§(param2);
      }
      
      public function set §^$A§(param1:Boolean) : void
      {
         this.§2!o§ = param1;
      }
      
      public function get §^$A§() : Boolean
      {
         return this.§2!o§;
      }
      
      public function set §'#C§(param1:Rectangle) : void
      {
         this.§7%§ = param1;
      }
      
      public function get §'#C§() : Rectangle
      {
         return this.§7%§;
      }
      
      public function get index() : int
      {
         return this.§7$9§;
      }
      
      public function get data() : §>"q§
      {
         return this.§ "&§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§2F§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§2F§;
      }
      
      protected function §=#,§(param1:MovieClip) : void
      {
         this.§,#2§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§4#p§();
      }
      
      public function §4#p§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§,#2§.parent.numChildren)
         {
            _loc1_ = this.§,#2§.parent.numChildren - 1;
         }
         this.§,#2§.parent.setChildIndex(this.§,#2§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§!"T§ = param1;
         this.§0F§ = param2;
         if(this.§ "&§)
         {
            this.§ "&§.popup.setViewSize(this.§!"T§ + this.§7%§.width,this.§0F§ + this.§7%§.height);
         }
      }
      
      public function openPopup(param1:§>"q§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §4!1§() : void
      {
         if(this.§=@§)
         {
            this.§=@§ = new Vector.<§>"q§>();
         }
      }
      
      public function §#"q§() : Boolean
      {
         if(this.§2F§)
         {
            return false;
         }
         return this.§ "&§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§2F§)
         {
            return false;
         }
         if(this.§ "&§ && this.§ "&§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:§>"q§ = null;
         for each(_loc2_ in this.§=@§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §%#;§
      {
         if(this.§ "&§ && this.§ "&§.popup.id == param1)
         {
            return this.§ "&§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§ "&§)
         {
            return this.§ "&§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§,#2§;
      }
   }
}
