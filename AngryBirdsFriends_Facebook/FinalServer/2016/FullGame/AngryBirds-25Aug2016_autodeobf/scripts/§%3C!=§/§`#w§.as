package §<!=§
{
   import §&#S§.§+,§;
   import com.rovio.assets.§@`§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §`#w§ extends Sprite
   {
      
      public static const §else§:String = "star";
      
      public static const §@!M§:String = "smoke";
      
      public static const §-#w§:String = "coin";
      
      public static const §8!_§:String = "all";
       
      
      private var § !k§:Sprite;
      
      private var §,`§:Number;
      
      private var §0#9§:Number;
      
      private var §^F§:§+,§;
      
      public function §`#w§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §else§:
               _loc3_ = this.randRange(0,3);
               break;
            case §@!M§:
               _loc3_ = this.randRange(4,6);
               break;
            case §-#w§:
               _loc3_ = this.randRange(7,9);
               break;
            case §8!_§:
               _loc3_ = this.randRange(0,6);
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
         this.§ !k§ = this.§=#s§(_loc4_);
         addChild(this.§ !k§);
         this.mouseEnabled = false;
         this.§ !k§.x = -this.§ !k§.width / 2;
         this.§ !k§.y = -this.§ !k§.height / 2;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function §4#1§() : void
      {
         if(this.§^F§)
         {
            this.§^F§.stop();
            this.§^F§ = null;
         }
         removeChild(this.§ !k§);
         this.§ !k§ = null;
      }
      
      public function §=#s§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §@`§.§4!i§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §+#P§(param1:§+,§) : void
      {
         this.§^F§ = param1;
      }
      
      public function get §+#P§() : §+,§
      {
         return this.§^F§;
      }
      
      public function get §5"Y§() : Number
      {
         return this.§,`§;
      }
      
      public function set §5"Y§(param1:Number) : void
      {
         this.§,`§ = param1;
      }
      
      public function get §5#D§() : Number
      {
         return this.§0#9§;
      }
      
      public function set §5#D§(param1:Number) : void
      {
         this.§0#9§ = param1;
      }
   }
}
