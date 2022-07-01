package § S§
{
   import §"!G§.§3!f§;
   import §0P§.§+!l§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §2"5§ extends EventDispatcher implements §"c§
   {
       
      
      protected var §><§:Rectangle;
      
      protected var §'"+§:Number;
      
      protected var §,!T§:Number;
      
      protected var §+!j§:int;
      
      protected var §+!m§:Boolean;
      
      protected var §-z§:Boolean;
      
      protected var §^!I§:Vector.<§@0§>;
      
      protected var §!p§:§@0§;
      
      protected var §>!L§:§3!f§;
      
      protected var §>!t§:§+!l§;
      
      protected var §@!U§:MovieClip;
      
      public function §2"5§(param1:int, param2:MovieClip, param3:§3!f§, param4:§+!l§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§>!L§ = param3;
         this.§>!t§ = param4;
         this.§^!I§ = new Vector.<§@0§>();
         this.§+!j§ = param1;
         this.§-z§ = param5;
         this.§><§ = param6 || new Rectangle();
         this.§+!m§ = param7;
         this.§!!D§(param2);
      }
      
      public function set §<!U§(param1:Boolean) : void
      {
         this.§-z§ = param1;
      }
      
      public function get §<!U§() : Boolean
      {
         return this.§-z§;
      }
      
      public function set §>c§(param1:Rectangle) : void
      {
         this.§><§ = param1;
      }
      
      public function get §>c§() : Rectangle
      {
         return this.§><§;
      }
      
      public function get index() : int
      {
         return this.§+!j§;
      }
      
      public function get data() : §@0§
      {
         return this.§!p§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§+!m§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§+!m§;
      }
      
      protected function §!!D§(param1:MovieClip) : void
      {
         this.§@!U§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§;"4§();
      }
      
      public function §;"4§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§@!U§.parent.numChildren)
         {
            _loc1_ = this.§@!U§.parent.numChildren - 1;
         }
         this.§@!U§.parent.setChildIndex(this.§@!U§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§'"+§ = param1;
         this.§,!T§ = param2;
         if(this.§!p§)
         {
            this.§!p§.popup.setViewSize(this.§'"+§ + this.§><§.width,this.§,!T§ + this.§><§.height);
         }
      }
      
      public function openPopup(param1:§@0§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §9>§() : void
      {
         if(this.§^!I§)
         {
            this.§^!I§ = new Vector.<§@0§>();
         }
      }
      
      public function § !I§() : Boolean
      {
         if(this.§+!m§)
         {
            return false;
         }
         return this.§!p§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§+!m§)
         {
            return false;
         }
         if(this.§!p§ && this.§!p§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §@9§(param1:String) : Boolean
      {
         var _loc2_:§@0§ = null;
         for each(_loc2_ in this.§^!I§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §each §(param1:String) : §?!`§
      {
         if(this.§!p§ && this.§!p§.popup.id == param1)
         {
            return this.§!p§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§!p§)
         {
            return this.§!p§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§@!U§;
      }
   }
}
