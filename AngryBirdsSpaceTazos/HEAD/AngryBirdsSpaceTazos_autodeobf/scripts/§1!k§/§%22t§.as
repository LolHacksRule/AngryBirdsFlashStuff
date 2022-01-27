package §1!k§
{
   import §#!O§.§,4§;
   import com.rovio.assets.§1!h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §"t§ extends Sprite
   {
      
      public static const §,!z§:String = "star";
      
      public static const §!%§:String = "smoke";
      
      public static const §>""§:String = "coin";
      
      public static const §<h§:String = "all";
       
      
      private var §-!T§:Sprite;
      
      private var §^!§:Number;
      
      private var §`!F§:Number;
      
      private var §2G§:§,4§;
      
      public function §"t§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §,!z§:
               _loc3_ = this.§[!X§(0,3);
               break;
            case §!%§:
               _loc3_ = this.§[!X§(4,6);
               break;
            case §>""§:
               _loc3_ = this.§[!X§(7,9);
               break;
            case §<h§:
               _loc3_ = this.§[!X§(0,6);
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
               _loc4_ = "P_COIN_3";
               break;
            case 8:
               _loc4_ = "P_COIN_2";
               break;
            case 9:
               _loc4_ = "P_COIN_1";
         }
         this.§-!T§ = this.§3K§(_loc4_);
         addChild(this.§-!T§);
         this.mouseEnabled = false;
         this.§-!T§.x = -this.§-!T§.width / 2;
         this.§-!T§.y = -this.§-!T§.height / 2;
      }
      
      private function §[!X§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §&"#§() : void
      {
         if(this.§2G§)
         {
            this.§2G§.stop();
            this.§2G§ = null;
         }
         removeChild(this.§-!T§);
         this.§-!T§ = null;
      }
      
      public function §3K§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §1!h§.§4!D§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §2"<§(param1:§,4§) : void
      {
         this.§2G§ = param1;
      }
      
      public function get §2"<§() : §,4§
      {
         return this.§2G§;
      }
      
      public function get §6!W§() : Number
      {
         return this.§^!§;
      }
      
      public function set §6!W§(param1:Number) : void
      {
         this.§^!§ = param1;
      }
      
      public function get §;t§() : Number
      {
         return this.§`!F§;
      }
      
      public function set §;t§(param1:Number) : void
      {
         this.§`!F§ = param1;
      }
   }
}
