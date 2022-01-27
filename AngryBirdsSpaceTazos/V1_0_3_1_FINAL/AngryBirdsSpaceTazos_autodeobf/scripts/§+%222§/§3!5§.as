package §+"2§
{
   import §'!k§.§>!P§;
   import §71§.§;l§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §3!5§ extends EventDispatcher implements §5W§
   {
       
      
      protected var §7!q§:Rectangle;
      
      protected var §@!,§:Number;
      
      protected var § $§:Number;
      
      protected var §=!y§:int;
      
      protected var §[!A§:Boolean;
      
      protected var §]?§:Boolean;
      
      protected var §&"4§:Vector.<§>!p§>;
      
      protected var §29§:§>!p§;
      
      protected var §3"%§:§;l§;
      
      protected var §1s§:§>!P§;
      
      protected var § 1§:MovieClip;
      
      public function §3!5§(param1:int, param2:MovieClip, param3:§;l§, param4:§>!P§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§3"%§ = param3;
         this.§1s§ = param4;
         this.§&"4§ = new Vector.<§>!p§>();
         this.§=!y§ = param1;
         this.§]?§ = param5;
         this.§7!q§ = param6 || new Rectangle();
         this.§[!A§ = param7;
         this.§&!j§(param2);
      }
      
      public function set static(param1:Boolean) : void
      {
         this.§]?§ = param1;
      }
      
      public function get static() : Boolean
      {
         return this.§]?§;
      }
      
      public function set §6"C§(param1:Rectangle) : void
      {
         this.§7!q§ = param1;
      }
      
      public function get §6"C§() : Rectangle
      {
         return this.§7!q§;
      }
      
      public function get index() : int
      {
         return this.§=!y§;
      }
      
      public function get data() : §>!p§
      {
         return this.§29§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§[!A§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§[!A§;
      }
      
      protected function §&!j§(param1:MovieClip) : void
      {
         this.§ 1§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§""6§();
      }
      
      public function §""6§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§ 1§.parent.numChildren)
         {
            _loc1_ = this.§ 1§.parent.numChildren - 1;
         }
         this.§ 1§.parent.setChildIndex(this.§ 1§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§@!,§ = param1;
         this.§ $§ = param2;
         if(this.§29§)
         {
            this.§29§.popup.setViewSize(this.§@!,§ + this.§7!q§.width,this.§ $§ + this.§7!q§.height);
         }
      }
      
      public function openPopup(param1:§>!p§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §]y§() : void
      {
         if(this.§&"4§)
         {
            this.§&"4§ = new Vector.<§>!p§>();
         }
      }
      
      public function §["5§() : Boolean
      {
         if(this.§[!A§)
         {
            return false;
         }
         return this.§29§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§[!A§)
         {
            return false;
         }
         if(this.§29§ && this.§29§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §2p§(param1:String) : §<!X§
      {
         if(this.§29§ && this.§29§.popup.id == param1)
         {
            return this.§29§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§29§)
         {
            return this.§29§.popup.isTransitioning;
         }
         return false;
      }
   }
}
