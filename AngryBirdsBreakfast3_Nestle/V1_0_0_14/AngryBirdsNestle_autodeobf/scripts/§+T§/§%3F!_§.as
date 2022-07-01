package §+T§
{
   import §@!0§.§^!T§;
   import com.rovio.assets.§1!C§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §?!_§ extends Sprite
   {
      
      public static const §;"'§:String = "star";
      
      public static const §0!4§:String = "smoke";
      
      public static const §"!2§:String = "coin";
      
      public static const §^!Y§:String = "all";
       
      
      private var §>!!§:Sprite;
      
      private var §>!R§:Number;
      
      private var §"-§:Number;
      
      private var §3!#§:§^!T§;
      
      public function §?!_§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §;"'§:
               _loc3_ = this.§#!>§(0,3);
               break;
            case §0!4§:
               _loc3_ = this.§#!>§(4,6);
               break;
            case §"!2§:
               _loc3_ = this.§#!>§(7,9);
               break;
            case §^!Y§:
               _loc3_ = this.§#!>§(0,6);
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
         this.§>!!§ = this.§?"0§(_loc4_);
         addChild(this.§>!!§);
         this.mouseEnabled = false;
         this.§>!!§.x = -this.§>!!§.width / 2;
         this.§>!!§.y = -this.§>!!§.height / 2;
      }
      
      private function §#!>§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §6!h§() : void
      {
         if(this.§3!#§)
         {
            this.§3!#§.stop();
            this.§3!#§ = null;
         }
         removeChild(this.§>!!§);
         this.§>!!§ = null;
      }
      
      public function §?"0§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §1!C§.§"!&§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §4!9§(param1:§^!T§) : void
      {
         this.§3!#§ = param1;
      }
      
      public function get §4!9§() : §^!T§
      {
         return this.§3!#§;
      }
      
      public function get §+!=§() : Number
      {
         return this.§>!R§;
      }
      
      public function set §+!=§(param1:Number) : void
      {
         this.§>!R§ = param1;
      }
      
      public function get §-!o§() : Number
      {
         return this.§"-§;
      }
      
      public function set §-!o§(param1:Number) : void
      {
         this.§"-§ = param1;
      }
   }
}
