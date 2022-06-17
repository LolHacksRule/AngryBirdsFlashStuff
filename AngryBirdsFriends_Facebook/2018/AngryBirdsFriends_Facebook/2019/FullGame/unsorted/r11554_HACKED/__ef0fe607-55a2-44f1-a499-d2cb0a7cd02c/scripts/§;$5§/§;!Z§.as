package §;$5§
{
   import §3"G§.§16§;
   import §8#?§.§?#;§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §;!Z§ extends EventDispatcher implements §<!s§
   {
       
      
      protected var §1#<§:Rectangle;
      
      protected var §="G§:Number;
      
      protected var §7!@§:Number;
      
      protected var §%3§:int;
      
      protected var §!O§:Boolean;
      
      protected var §=#c§:Boolean;
      
      protected var §=#[§:Vector.<§##q§>;
      
      protected var §0#j§:§##q§;
      
      protected var §1#@§:§16§;
      
      protected var §<"u§:§?#;§;
      
      protected var §8#Y§:MovieClip;
      
      public function §;!Z§(param1:int, param2:MovieClip, param3:§16§, param4:§?#;§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§1#@§ = param3;
         this.§<"u§ = param4;
         this.§=#[§ = new Vector.<§##q§>();
         this.§%3§ = param1;
         this.§=#c§ = param5;
         this.§1#<§ = param6 || new Rectangle();
         this.§!O§ = param7;
         this.§8x§(param2);
      }
      
      public function set §>[§(param1:Boolean) : void
      {
         this.§=#c§ = param1;
      }
      
      public function get §>[§() : Boolean
      {
         return this.§=#c§;
      }
      
      public function set §[$?§(param1:Rectangle) : void
      {
         this.§1#<§ = param1;
      }
      
      public function get §[$?§() : Rectangle
      {
         return this.§1#<§;
      }
      
      public function get index() : int
      {
         return this.§%3§;
      }
      
      public function get data() : §##q§
      {
         return this.§0#j§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§!O§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§!O§;
      }
      
      protected function §8x§(param1:MovieClip) : void
      {
         this.§8#Y§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§#"g§();
      }
      
      public function §#"g§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§8#Y§.parent.numChildren)
         {
            _loc1_ = this.§8#Y§.parent.numChildren - 1;
         }
         this.§8#Y§.parent.setChildIndex(this.§8#Y§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§="G§ = param1;
         this.§7!@§ = param2;
         if(this.§0#j§)
         {
            this.§0#j§.popup.setViewSize(this.§="G§ + this.§1#<§.width,this.§7!@§ + this.§1#<§.height);
         }
      }
      
      public function openPopup(param1:§##q§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true, param3:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §[t§() : void
      {
         if(this.§=#[§)
         {
            this.§=#[§ = new Vector.<§##q§>();
         }
      }
      
      public function §`'§() : Boolean
      {
         if(this.§!O§)
         {
            return false;
         }
         return this.§0#j§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§!O§)
         {
            return false;
         }
         if(this.§0#j§ && this.§0#j§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function isPopupInQueueById(param1:String) : Boolean
      {
         var _loc2_:§##q§ = null;
         for each(_loc2_ in this.§=#[§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function getOpenPopupById(param1:String) : §@#G§
      {
         if(this.§0#j§ && this.§0#j§.popup.id == param1)
         {
            return this.§0#j§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§0#j§)
         {
            return this.§0#j§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§8#Y§;
      }
   }
}
