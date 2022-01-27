package §5",§
{
   import §'! §.§4!Q§;
   import com.rovio.assets.§5"]§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §#F§ extends Sprite
   {
      
      public static const §^o§:String = "star";
      
      public static const §'@§:String = "smoke";
      
      public static const §%"_§:String = "coin";
      
      public static const §0"o§:String = "all";
       
      
      private var §@"5§:Sprite;
      
      private var §>"b§:Number;
      
      private var §package§:Number;
      
      private var §]u§:§4!Q§;
      
      public function §#F§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §^o§:
               _loc3_ = this.§"@§(0,3);
               break;
            case §'@§:
               _loc3_ = this.§"@§(4,6);
               break;
            case §%"_§:
               _loc3_ = this.§"@§(7,9);
               break;
            case §0"o§:
               _loc3_ = this.§"@§(0,6);
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
         this.§@"5§ = this.§7v§(_loc4_);
         addChild(this.§@"5§);
         this.mouseEnabled = false;
         this.§@"5§.x = -this.§@"5§.width / 2;
         this.§@"5§.y = -this.§@"5§.height / 2;
      }
      
      private function §"@§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §;!k§() : void
      {
         if(this.§]u§)
         {
            this.§]u§.stop();
            this.§]u§ = null;
         }
         removeChild(this.§@"5§);
         this.§@"5§ = null;
      }
      
      public function §7v§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §5"]§.§4!K§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §6Q§(param1:§4!Q§) : void
      {
         this.§]u§ = param1;
      }
      
      public function get §6Q§() : §4!Q§
      {
         return this.§]u§;
      }
      
      public function get §&[§() : Number
      {
         return this.§>"b§;
      }
      
      public function set §&[§(param1:Number) : void
      {
         this.§>"b§ = param1;
      }
      
      public function get §,!a§() : Number
      {
         return this.§package§;
      }
      
      public function set §,!a§(param1:Number) : void
      {
         this.§package§ = param1;
      }
   }
}
