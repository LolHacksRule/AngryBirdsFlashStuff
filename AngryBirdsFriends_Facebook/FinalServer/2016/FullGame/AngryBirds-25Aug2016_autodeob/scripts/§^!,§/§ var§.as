package §^!,§
{
   import §'U§.§]#[§;
   import §<!'§.§ "6§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class § var§ extends EventDispatcher implements §&Q§
   {
       
      
      protected var §7!=§:Rectangle;
      
      protected var §1#u§:Number;
      
      protected var §1V§:Number;
      
      protected var §]"E§:int;
      
      protected var §<"&§:Boolean;
      
      protected var §!$-§:Boolean;
      
      protected var §5$%§:Vector.<§+[§>;
      
      protected var §7#Y§:§+[§;
      
      protected var §'#w§:§]#[§;
      
      protected var §9"h§:§ "6§;
      
      protected var §7!j§:MovieClip;
      
      public function § var§(param1:int, param2:MovieClip, param3:§]#[§, param4:§ "6§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§'#w§ = param3;
         this.§9"h§ = param4;
         this.§5$%§ = new Vector.<§+[§>();
         this.§]"E§ = param1;
         this.§!$-§ = param5;
         this.§7!=§ = param6 || new Rectangle();
         this.§<"&§ = param7;
         this.§const§(param2);
      }
      
      public function set §3z§(param1:Boolean) : void
      {
         this.§!$-§ = param1;
      }
      
      public function get §3z§() : Boolean
      {
         return this.§!$-§;
      }
      
      public function set §#"6§(param1:Rectangle) : void
      {
         this.§7!=§ = param1;
      }
      
      public function get §#"6§() : Rectangle
      {
         return this.§7!=§;
      }
      
      public function get index() : int
      {
         return this.§]"E§;
      }
      
      public function get data() : §+[§
      {
         return this.§7#Y§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§<"&§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§<"&§;
      }
      
      protected function §const§(param1:MovieClip) : void
      {
         this.§7!j§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§+!y§();
      }
      
      public function §+!y§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§7!j§.parent.numChildren)
         {
            _loc1_ = this.§7!j§.parent.numChildren - 1;
         }
         this.§7!j§.parent.setChildIndex(this.§7!j§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§1#u§ = param1;
         this.§1V§ = param2;
         if(this.§7#Y§)
         {
            this.§7#Y§.popup.setViewSize(this.§1#u§ + this.§7!=§.width,this.§1V§ + this.§7!=§.height);
         }
      }
      
      public function openPopup(param1:§+[§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §=!z§() : void
      {
         if(this.§5$%§)
         {
            this.§5$%§ = new Vector.<§+[§>();
         }
      }
      
      public function §5"'§() : Boolean
      {
         if(this.§<"&§)
         {
            return false;
         }
         return this.§7#Y§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§<"&§)
         {
            return false;
         }
         if(this.§7#Y§ && this.§7#Y§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:§+[§ = null;
         for each(_loc2_ in this.§5$%§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §8!H§
      {
         if(this.§7#Y§ && this.§7#Y§.popup.id == param1)
         {
            return this.§7#Y§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§7#Y§)
         {
            return this.§7#Y§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§7!j§;
      }
   }
}
