package §?N§
{
   import §"m§.§,g§;
   import §;!b§.§%>§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class § !b§ extends EventDispatcher implements §9!?§
   {
       
      
      protected var §;^§:Rectangle;
      
      protected var §!5§:Number;
      
      protected var §!&§:Number;
      
      protected var §<u§:int;
      
      protected var §0"+§:Boolean;
      
      protected var §1!P§:Boolean;
      
      protected var §"![§:Vector.<§!q§>;
      
      protected var §8n§:§!q§;
      
      protected var §"q§:§%>§;
      
      protected var §9!1§:§,g§;
      
      protected var §0+§:MovieClip;
      
      public function § !b§(param1:int, param2:MovieClip, param3:§%>§, param4:§,g§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§"q§ = param3;
         this.§9!1§ = param4;
         this.§"![§ = new Vector.<§!q§>();
         this.§<u§ = param1;
         this.§1!P§ = param5;
         this.§;^§ = param6 || new Rectangle();
         this.§0"+§ = param7;
         this.§9!+§(param2);
      }
      
      public function set §try §(param1:Boolean) : void
      {
         this.§1!P§ = param1;
      }
      
      public function get §try §() : Boolean
      {
         return this.§1!P§;
      }
      
      public function set §[J§(param1:Rectangle) : void
      {
         this.§;^§ = param1;
      }
      
      public function get §[J§() : Rectangle
      {
         return this.§;^§;
      }
      
      public function get index() : int
      {
         return this.§<u§;
      }
      
      public function get data() : §!q§
      {
         return this.§8n§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§0"+§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§0"+§;
      }
      
      protected function §9!+§(param1:MovieClip) : void
      {
         this.§0+§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§'" §();
      }
      
      public function §'" §() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§0+§.parent.numChildren)
         {
            _loc1_ = this.§0+§.parent.numChildren - 1;
         }
         this.§0+§.parent.setChildIndex(this.§0+§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§!5§ = param1;
         this.§!&§ = param2;
         if(this.§8n§)
         {
            this.§8n§.popup.setViewSize(this.§!5§ + this.§;^§.width,this.§!&§ + this.§;^§.height);
         }
      }
      
      public function openPopup(param1:§!q§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §9h§() : void
      {
         if(this.§"![§)
         {
            this.§"![§ = new Vector.<§!q§>();
         }
      }
      
      public function §7"#§() : Boolean
      {
         if(this.§0"+§)
         {
            return false;
         }
         return this.§8n§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§0"+§)
         {
            return false;
         }
         if(this.§8n§ && this.§8n§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §[k§(param1:String) : Boolean
      {
         var _loc2_:§!q§ = null;
         for each(_loc2_ in this.§"![§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §[U§(param1:String) : §;!E§
      {
         if(this.§8n§ && this.§8n§.popup.id == param1)
         {
            return this.§8n§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§8n§)
         {
            return this.§8n§.popup.isTransitioning;
         }
         return false;
      }
   }
}
