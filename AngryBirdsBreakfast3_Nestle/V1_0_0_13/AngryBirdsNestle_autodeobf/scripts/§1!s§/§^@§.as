package §1!s§
{
   import §'"&§.§4!2§;
   import §7"6§.§^!_§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §^@§ extends EventDispatcher implements §=%§
   {
       
      
      protected var static:Rectangle;
      
      protected var §;!j§:Number;
      
      protected var §#u§:Number;
      
      protected var §#!;§:int;
      
      protected var §;"3§:Boolean;
      
      protected var §6!_§:Boolean;
      
      protected var §7!5§:Vector.<§]r§>;
      
      protected var §&"$§:§]r§;
      
      protected var §%E§:§^!_§;
      
      protected var §1!!§:§4!2§;
      
      protected var §;"#§:MovieClip;
      
      public function §^@§(param1:int, param2:MovieClip, param3:§^!_§, param4:§4!2§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§%E§ = param3;
         this.§1!!§ = param4;
         this.§7!5§ = new Vector.<§]r§>();
         this.§#!;§ = param1;
         this.§6!_§ = param5;
         this.static = param6 || new Rectangle();
         this.§;"3§ = param7;
         this.§6!P§(param2);
      }
      
      public function set §?Z§(param1:Boolean) : void
      {
         this.§6!_§ = param1;
      }
      
      public function get §?Z§() : Boolean
      {
         return this.§6!_§;
      }
      
      public function set §;a§(param1:Rectangle) : void
      {
         this.static = param1;
      }
      
      public function get §;a§() : Rectangle
      {
         return this.static;
      }
      
      public function get index() : int
      {
         return this.§#!;§;
      }
      
      public function get data() : §]r§
      {
         return this.§&"$§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§;"3§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§;"3§;
      }
      
      protected function §6!P§(param1:MovieClip) : void
      {
         this.§;"#§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§%q§();
      }
      
      public function §%q§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§;"#§.parent.numChildren)
         {
            _loc1_ = this.§;"#§.parent.numChildren - 1;
         }
         this.§;"#§.parent.setChildIndex(this.§;"#§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§;!j§ = param1;
         this.§#u§ = param2;
         if(this.§&"$§)
         {
            this.§&"$§.popup.setViewSize(this.§;!j§ + this.static.width,this.§#u§ + this.static.height);
         }
      }
      
      public function openPopup(param1:§]r§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §3!F§() : void
      {
         if(this.§7!5§)
         {
            this.§7!5§ = new Vector.<§]r§>();
         }
      }
      
      public function §6!7§() : Boolean
      {
         if(this.§;"3§)
         {
            return false;
         }
         return this.§&"$§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§;"3§)
         {
            return false;
         }
         if(this.§&"$§ && this.§&"$§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §7!p§(param1:String) : Boolean
      {
         var _loc2_:§]r§ = null;
         for each(_loc2_ in this.§7!5§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §=f§(param1:String) : §+!y§
      {
         if(this.§&"$§ && this.§&"$§.popup.id == param1)
         {
            return this.§&"$§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§&"$§)
         {
            return this.§&"$§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§;"#§;
      }
   }
}
