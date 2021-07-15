package §<!F§
{
   import §?@§.§0]§;
   import com.rovio.assets.§<V§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §+!D§ extends Sprite
   {
      
      public static const §6K§:String = "star";
      
      public static const §!!N§:String = "smoke";
      
      public static const §2"+§:String = "coin";
      
      public static const §>!8§:String = "all";
       
      
      private var §&!i§:Sprite;
      
      private var §2D§:Number;
      
      private var §0!I§:Number;
      
      private var §#f§:§0]§;
      
      public function §+!D§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §6K§:
               _loc3_ = this.§5!i§(0,3);
               break;
            case §!!N§:
               _loc3_ = this.§5!i§(4,6);
               break;
            case §2"+§:
               _loc3_ = this.§5!i§(7,9);
               break;
            case §>!8§:
               _loc3_ = this.§5!i§(0,6);
         }
         switch(_loc3_)
         {
            case 0:
               _loc4_ = "P_STAR_4";
               break;
            case 1:
               _loc4_ = "P_STAR_3";
               break;
            case 2:
               _loc4_ = "P_STAR_2";
               break;
            case 3:
               _loc4_ = "P_STAR_1";
               break;
            case 4:
               _loc4_ = "P_SMOKE_3";
               break;
            case 5:
               _loc4_ = "P_SMOKE_2";
               break;
            case 6:
               _loc4_ = "P_SMOKE_1";
               break;
            case 7:
            case 8:
            case 9:
               _loc4_ = "P_COIN_1";
         }
         this.§&!i§ = this.§7E§(_loc4_);
         addChild(this.§&!i§);
         this.mouseEnabled = false;
         this.§&!i§.x = -this.§&!i§.width / 2;
         this.§&!i§.y = -this.§&!i§.height / 2;
      }
      
      private function §5!i§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §9O§() : void
      {
         if(this.§#f§)
         {
            this.§#f§.stop();
            this.§#f§ = null;
         }
         removeChild(this.§&!i§);
         this.§&!i§ = null;
      }
      
      public function §7E§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §<V§.§"!,§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §0o§(param1:§0]§) : void
      {
         this.§#f§ = param1;
      }
      
      public function get §0o§() : §0]§
      {
         return this.§#f§;
      }
      
      public function get §!!v§() : Number
      {
         return this.§2D§;
      }
      
      public function set §!!v§(param1:Number) : void
      {
         this.§2D§ = param1;
      }
      
      public function get §-4§() : Number
      {
         return this.§0!I§;
      }
      
      public function set §-4§(param1:Number) : void
      {
         this.§0!I§ = param1;
      }
   }
}
