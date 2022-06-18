package §<#m§
{
   import §&$!§.§+#!§;
   import §<"P§.§[#$§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §2$1§ extends EventDispatcher implements §&V§
   {
       
      
      protected var §`"t§:Rectangle;
      
      protected var §0?§:Number;
      
      protected var §,#k§:Number;
      
      protected var §;!%§:int;
      
      protected var §5"t§:Boolean;
      
      protected var §""_§:Boolean;
      
      protected var §-#4§:Vector.<§`"g§>;
      
      protected var §[n§:§`"g§;
      
      protected var §-"Q§:§+#!§;
      
      protected var §8#0§:§[#$§;
      
      protected var §1"6§:MovieClip;
      
      public function §2$1§(param1:int, param2:MovieClip, param3:§+#!§, param4:§[#$§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§-"Q§ = param3;
         this.§8#0§ = param4;
         this.§-#4§ = new Vector.<§`"g§>();
         this.§;!%§ = param1;
         this.§""_§ = param5;
         this.§`"t§ = param6 || new Rectangle();
         this.§5"t§ = param7;
         this.§ !R§(param2);
      }
      
      public function set §!K§(param1:Boolean) : void
      {
         this.§""_§ = param1;
      }
      
      public function get §!K§() : Boolean
      {
         return this.§""_§;
      }
      
      public function set §?#w§(param1:Rectangle) : void
      {
         this.§`"t§ = param1;
      }
      
      public function get §?#w§() : Rectangle
      {
         return this.§`"t§;
      }
      
      public function get index() : int
      {
         return this.§;!%§;
      }
      
      public function get data() : §`"g§
      {
         return this.§[n§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§5"t§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§5"t§;
      }
      
      protected function § !R§(param1:MovieClip) : void
      {
         this.§1"6§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§3#Q§();
      }
      
      public function §3#Q§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§1"6§.parent.numChildren)
         {
            _loc1_ = this.§1"6§.parent.numChildren - 1;
         }
         this.§1"6§.parent.setChildIndex(this.§1"6§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§0?§ = param1;
         this.§,#k§ = param2;
         if(this.§[n§)
         {
            this.§[n§.popup.setViewSize(this.§0?§ + this.§`"t§.width,this.§,#k§ + this.§`"t§.height);
         }
      }
      
      public function openPopup(param1:§`"g§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §^#q§() : void
      {
         if(this.§-#4§)
         {
            this.§-#4§ = new Vector.<§`"g§>();
         }
      }
      
      public function §`$§() : Boolean
      {
         if(this.§5"t§)
         {
            return false;
         }
         return this.§[n§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§5"t§)
         {
            return false;
         }
         if(this.§[n§ && this.§[n§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:§`"g§ = null;
         for each(_loc2_ in this.§-#4§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §!"<§
      {
         if(this.§[n§ && this.§[n§.popup.id == param1)
         {
            return this.§[n§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§[n§)
         {
            return this.§[n§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§1"6§;
      }
   }
}
