package §,C§
{
   public class § "%§
   {
       
      
      protected var §^!^§:String;
      
      protected var §>3§:Number;
      
      protected var §6!r§:Number;
      
      protected var §?H§:Boolean;
      
      protected var §"0§:Number;
      
      protected var §'`§:Number;
      
      protected var §var §:Boolean;
      
      protected var §?Y§:Boolean;
      
      protected var §1!-§:Vector.<§<U§>;
      
      protected var §#!+§:Boolean;
      
      protected var §@=§:String;
      
      public function § "%§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§^!^§ = param1;
         this.§>3§ = param4;
         this.§var § = param7;
         this.§6!r§ = param3 != 0 ? Number(param3) : Number(1);
         this.§?H§ = param8;
         this.§"0§ = param5;
         this.§'`§ = param6;
         this.§#!+§ = param9;
         this.§@=§ = param2;
         this.§?Y§ = param10;
         this.§1!-§ = new Vector.<§<U§>();
      }
      
      public function get §3x§() : String
      {
         return this.§^!^§;
      }
      
      public function get color() : String
      {
         return this.§@=§;
      }
      
      public function get speed() : Number
      {
         return this.§>3§;
      }
      
      public function get scale() : Number
      {
         return this.§6!r§;
      }
      
      public function get xOffset() : Number
      {
         return this.§"0§;
      }
      
      public function get yOffset() : Number
      {
         return this.§'`§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§?H§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§?Y§;
      }
      
      public function get foreground() : Boolean
      {
         return this.§var §;
      }
      
      public function get optional() : Boolean
      {
         return this.§#!+§;
      }
      
      public function get §93§() : int
      {
         return this.§1!-§.length;
      }
      
      public function §5p§(param1:int) : §<U§
      {
         return this.§1!-§[param1];
      }
      
      public function §<q§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§<U§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §<U§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§^#§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§1!-§.push(_loc3_);
         }
      }
   }
}
