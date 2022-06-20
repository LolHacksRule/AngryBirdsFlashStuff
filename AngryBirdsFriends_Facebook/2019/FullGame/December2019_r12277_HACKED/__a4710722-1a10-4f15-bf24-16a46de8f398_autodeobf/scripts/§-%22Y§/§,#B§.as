package §-"Y§
{
   import § null§.§@§;
   import com.rovio.assets.§=@§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §,#B§ extends Sprite
   {
      
      public static const §`m§:String = "star";
      
      public static const §<!&§:String = "smoke";
      
      public static const §3z§:String = "coin";
      
      public static const §+#+§:String = "all";
       
      
      private var §+W§:Sprite;
      
      private var §@G§:Number;
      
      private var §,!g§:Number;
      
      private var §?#r§:§@#5§;
      
      public function §,#B§(param1:Number, param2:String = "all")
      {
         var _loc3_:int = 0;
         var _loc4_:String = null;
         super();
         switch(param2)
         {
            case §`m§:
               _loc3_ = this.randRange(0,3);
               break;
            case §<!&§:
               _loc3_ = this.randRange(4,6);
               break;
            case §3z§:
               _loc3_ = this.randRange(7,9);
               break;
            case §+#+§:
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
         this.§+W§ = this.§ 8§(_loc4_);
         addChild(this.§+W§);
         this.mouseEnabled = false;
         this.§+W§.x = -this.§+W§.width / 2;
         this.§+W§.y = -this.§+W§.height / 2;
      }
      
      private function randRange(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (param2 - param1 + 1)) + param1;
      }
      
      public function § !1§() : void
      {
         if(this.§?#r§)
         {
            this.§?#r§.stop();
            this.§?#r§ = null;
         }
         removeChild(this.§+W§);
         this.§+W§ = null;
      }
      
      public function § 8§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §=@§.§9!x§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §]#B§(param1:§@#5§) : void
      {
         this.§?#r§ = param1;
      }
      
      public function get §]#B§() : §@#5§
      {
         return this.§?#r§;
      }
      
      public function get §`"0§() : Number
      {
         return this.§@G§;
      }
      
      public function set §`"0§(param1:Number) : void
      {
         this.§@G§ = param1;
      }
      
      public function get §2!e§() : Number
      {
         return this.§,!g§;
      }
      
      public function set §2!e§(param1:Number) : void
      {
         this.§,!g§ = param1;
      }
   }
}
