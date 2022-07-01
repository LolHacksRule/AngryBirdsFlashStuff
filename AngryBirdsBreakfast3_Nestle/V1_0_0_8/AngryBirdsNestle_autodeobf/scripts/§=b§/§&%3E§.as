package §=b§
{
   import §53§.§["$§;
   import com.rovio.assets.§2"&§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §&>§ extends Sprite
   {
      
      public static const §!!§:String = "star";
      
      public static const §=y§:String = "smoke";
      
      public static const §"!!§:String = "coin";
      
      public static const §^q§:String = "all";
       
      
      private var §3!A§:Sprite;
      
      private var §^!l§:Number;
      
      private var §!4§:Number;
      
      private var §#!!§:§["$§;
      
      public function §&>§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §!!§:
               _loc3_ = this.§"_§(0,3);
               break;
            case §=y§:
               _loc3_ = this.§"_§(4,6);
               break;
            case §"!!§:
               _loc3_ = this.§"_§(7,9);
               break;
            case §^q§:
               _loc3_ = this.§"_§(0,6);
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
         this.§3!A§ = this.§?P§(_loc4_);
         addChild(this.§3!A§);
         this.mouseEnabled = false;
         this.§3!A§.x = -this.§3!A§.width / 2;
         this.§3!A§.y = -this.§3!A§.height / 2;
      }
      
      private function §"_§(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §6T§() : void
      {
         if(this.§#!!§)
         {
            this.§#!!§.stop();
            this.§#!!§ = null;
         }
         removeChild(this.§3!A§);
         this.§3!A§ = null;
      }
      
      public function §?P§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §2"&§.§<$§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §;!`§(param1:§["$§) : void
      {
         this.§#!!§ = param1;
      }
      
      public function get §;!`§() : §["$§
      {
         return this.§#!!§;
      }
      
      public function get §+!p§() : Number
      {
         return this.§^!l§;
      }
      
      public function set §+!p§(param1:Number) : void
      {
         this.§^!l§ = param1;
      }
      
      public function get §@!>§() : Number
      {
         return this.§!4§;
      }
      
      public function set §@!>§(param1:Number) : void
      {
         this.§!4§ = param1;
      }
   }
}
