package §+"x§
{
   import §&!j§.§5#+§;
   import §9&§.§]!`§;
   import flash.display.MovieClip;
   import flash.events.EventDispatcher;
   import flash.geom.Rectangle;
   
   public class §9"C§ extends EventDispatcher implements §]"G§
   {
       
      
      protected var §`!-§:Rectangle;
      
      protected var §5"[§:Number;
      
      protected var §%"8§:Number;
      
      protected var §%"0§:int;
      
      protected var §6"<§:Boolean;
      
      protected var §20§:Boolean;
      
      protected var §^",§:Vector.<§ !Y§>;
      
      protected var §3K§:§ !Y§;
      
      protected var §-1§:§5#+§;
      
      protected var §4!i§:§]!`§;
      
      protected var §[#,§:MovieClip;
      
      public function §9"C§(param1:int, param2:MovieClip, param3:§5#+§, param4:§]!`§, param5:Boolean = true, param6:Rectangle = null, param7:Boolean = false)
      {
         super();
         this.§-1§ = param3;
         this.§4!i§ = param4;
         this.§^",§ = new Vector.<§ !Y§>();
         this.§%"0§ = param1;
         this.§20§ = param5;
         this.§`!-§ = param6 || new Rectangle();
         this.§6"<§ = param7;
         this.§4!s§(param2);
      }
      
      public function set §@F§(param1:Boolean) : void
      {
         this.§20§ = param1;
      }
      
      public function get §@F§() : Boolean
      {
         return this.§20§;
      }
      
      public function set §^!K§(param1:Rectangle) : void
      {
         this.§`!-§ = param1;
      }
      
      public function get §^!K§() : Rectangle
      {
         return this.§`!-§;
      }
      
      public function get index() : int
      {
         return this.§%"0§;
      }
      
      public function get data() : § !Y§
      {
         return this.§3K§;
      }
      
      public function set isPersistentLayer(param1:Boolean) : void
      {
         this.§6"<§ = param1;
      }
      
      public function get isPersistentLayer() : Boolean
      {
         return this.§6"<§;
      }
      
      protected function §4!s§(param1:MovieClip) : void
      {
         this.§[#,§ = param1.addChild(new MovieClip()) as MovieClip;
         this.§`!%§();
      }
      
      public function §`!%§() : void
      {
         var _loc1_:int = this.index;
         if(_loc1_ >= this.§[#,§.parent.numChildren)
         {
            _loc1_ = this.§[#,§.parent.numChildren - 1;
         }
         this.§[#,§.parent.setChildIndex(this.§[#,§,_loc1_);
      }
      
      public function setViewSize(param1:int, param2:int) : void
      {
         this.§5"[§ = param1;
         this.§%"8§ = param2;
         if(this.§3K§)
         {
            this.§3K§.popup.setViewSize(this.§5"[§ + this.§`!-§.width,this.§%"8§ + this.§`!-§.height);
         }
      }
      
      public function openPopup(param1:§ !Y§, param2:Boolean = false) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function closePopup(param1:Boolean = false, param2:Boolean = true) : void
      {
         throw "--#AbstractPopupLayer[openPopup]:: must be implemented";
      }
      
      public function §5"K§() : void
      {
         if(this.§^",§)
         {
            this.§^",§ = new Vector.<§ !Y§>();
         }
      }
      
      public function §#"E§() : Boolean
      {
         if(this.§6"<§)
         {
            return false;
         }
         return this.§3K§ != null;
      }
      
      public function isPopupOpenById(param1:String) : Boolean
      {
         if(this.§6"<§)
         {
            return false;
         }
         if(this.§3K§ && this.§3K§.popup.id == param1)
         {
            return true;
         }
         return false;
      }
      
      public function §@!&§(param1:String) : Boolean
      {
         var _loc2_:§ !Y§ = null;
         for each(_loc2_ in this.§^",§)
         {
            if(_loc2_.popup.id == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      public function §8!l§(param1:String) : §3!§
      {
         if(this.§3K§ && this.§3K§.popup.id == param1)
         {
            return this.§3K§.popup;
         }
         return null;
      }
      
      public function isTransitioning() : Boolean
      {
         if(this.§3K§)
         {
            return this.§3K§.popup.isTransitioning;
         }
         return false;
      }
      
      public function get container() : MovieClip
      {
         return this.§[#,§;
      }
   }
}
