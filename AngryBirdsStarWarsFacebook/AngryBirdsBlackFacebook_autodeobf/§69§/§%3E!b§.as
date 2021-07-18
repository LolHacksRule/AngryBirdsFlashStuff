package §69§
{
   public class §>!b§
   {
       
      
      protected var §3!?§:String;
      
      protected var §<C§:Number;
      
      protected var §8"2§:Number;
      
      protected var §;O§:Boolean;
      
      protected var §[!T§:Number;
      
      protected var §8"[§:Number;
      
      protected var §4"%§:Boolean;
      
      protected var §3" §:Boolean;
      
      protected var §9"l§:Vector.<§`"-§>;
      
      protected var §"!a§:Boolean;
      
      protected var §]H§:String;
      
      public function §>!b§(param1:String, param2:String, param3:Number, param4:Number, param5:Number, param6:Number, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean = false)
      {
         super();
         this.§3!?§ = param1;
         this.§<C§ = param4;
         this.§4"%§ = param7;
         this.§8"2§ = param3 != 0 ? Number(param3) : Number(1);
         this.§;O§ = param8;
         this.§[!T§ = param5;
         this.§8"[§ = param6;
         this.§"!a§ = param9;
         this.§]H§ = param2;
         this.§3" § = param10;
         this.§9"l§ = new Vector.<§`"-§>();
      }
      
      public function get spriteName() : String
      {
         return this.§3!?§;
      }
      
      public function get color() : String
      {
         return this.§]H§;
      }
      
      public function get speed() : Number
      {
         return this.§<C§;
      }
      
      public function get scale() : Number
      {
         return this.§8"2§;
      }
      
      public function get xOffset() : Number
      {
         return this.§[!T§;
      }
      
      public function get yOffset() : Number
      {
         return this.§8"[§;
      }
      
      public function get tileable() : Boolean
      {
         return this.§;O§;
      }
      
      public function get highQuality() : Boolean
      {
         return this.§3" §;
      }
      
      public function get foreground() : Boolean
      {
         return this.§4"%§;
      }
      
      public function get optional() : Boolean
      {
         return this.§"!a§;
      }
      
      public function get §package§() : int
      {
         return this.§9"l§.length;
      }
      
      public function §+"_§(param1:int) : §`"-§
      {
         return this.§9"l§[param1];
      }
      
      public function §+#R§(param1:XMLList) : void
      {
         var _loc2_:XML = null;
         var _loc3_:§`"-§ = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = new §`"-§();
            _loc3_.id = _loc2_.@id.toString();
            _loc3_.x = Number(Number(_loc2_.@x)) || Number(0);
            _loc3_.y = Number(Number(_loc2_.@y)) || Number(0);
            _loc3_.rotation = Number(Number(_loc2_.@rotation)) || Number(0);
            _loc3_.scale = Number(Number(_loc2_.@scale)) || Number(1);
            _loc3_.alpha = Number(Number(_loc2_.@alpha)) || Number(1);
            _loc3_.fastForwardsAfterAdd = Number(Number(_loc2_.@fastForwardsAfterAdd)) || Number(0);
            _loc3_.§9"Q§ = _loc2_.@behindGraphic.toString().toLowerCase() == "true";
            this.§9"l§.push(_loc3_);
         }
      }
   }
}
