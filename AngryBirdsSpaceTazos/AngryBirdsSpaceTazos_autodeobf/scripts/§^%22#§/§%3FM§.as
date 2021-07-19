package §^"#§
{
   import §=u§.§5!9§;
   import com.rovio.assets.§ !h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §?M§ extends Sprite
   {
      
      public static const §-!_§:String = "star";
      
      public static const §4V§:String = "smoke";
      
      public static const §`!=§:String = "coin";
      
      public static const §]!o§:String = "all";
       
      
      private var §>3§:Sprite;
      
      private var §?"$§:Number;
      
      private var §8!s§:Number;
      
      private var §[>§:§5!9§;
      
      public function §?M§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §-!_§:
               _loc3_ = this.§6!_§(0,3);
               break;
            case §4V§:
               _loc3_ = this.§6!_§(4,6);
               break;
            case §`!=§:
               _loc3_ = this.§6!_§(7,9);
               break;
            case §]!o§:
               _loc3_ = this.§6!_§(0,6);
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
         this.§>3§ = this.§3!f§(_loc4_);
         addChild(this.§>3§);
         this.mouseEnabled = false;
         this.§>3§.x = -this.§>3§.width / 2;
         this.§>3§.y = -this.§>3§.height / 2;
      }
      
      private function §6!_§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §;"F§() : void
      {
         if(this.§[>§)
         {
            this.§[>§.stop();
            this.§[>§ = null;
         }
         removeChild(this.§>3§);
         this.§>3§ = null;
      }
      
      public function §3!f§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = § !h§.§["3§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §^!5§(param1:§5!9§) : void
      {
         this.§[>§ = param1;
      }
      
      public function get §^!5§() : §5!9§
      {
         return this.§[>§;
      }
      
      public function get §&n§() : Number
      {
         return this.§?"$§;
      }
      
      public function set §&n§(param1:Number) : void
      {
         this.§?"$§ = param1;
      }
      
      public function get §7!S§() : Number
      {
         return this.§8!s§;
      }
      
      public function set §7!S§(param1:Number) : void
      {
         this.§8!s§ = param1;
      }
   }
}
