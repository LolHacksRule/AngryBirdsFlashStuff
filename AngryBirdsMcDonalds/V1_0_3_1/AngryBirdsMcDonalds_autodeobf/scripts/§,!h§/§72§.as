package §,!h§
{
   import § 1§.§=§;
   import §`!"§.§2,§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §72§ extends Sprite
   {
       
      
      private var §'!T§:Sprite;
      
      private var §;!#§:Number;
      
      private var §#!h§:Number;
      
      private var §"! §:§2,§;
      
      public function §72§(param1:Number)
      {
         var _loc3_:String = null;
         super();
         var _loc2_:int = Math.random() * 7;
         switch(_loc2_)
         {
            case 0:
               _loc3_ = "P_STAR_4";
               break;
            case 1:
               _loc3_ = "P_STAR_3";
               break;
            case 2:
               _loc3_ = "P_STAR_2";
               break;
            case 3:
               _loc3_ = "P_STAR_1";
               break;
            case 4:
               _loc3_ = "P_SMOKE_3";
               break;
            case 5:
               _loc3_ = "P_SMOKE_2";
               break;
            case 6:
               _loc3_ = "P_SMOKE_1";
         }
         this.§'!T§ = this.§&5§(_loc3_);
         addChild(this.§'!T§);
         this.mouseEnabled = false;
         this.§'!T§.x = -this.§'!T§.width / 2;
         this.§'!T§.y = -this.§'!T§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§"! §)
         {
            this.§"! §.stop();
            this.§"! § = null;
         }
         removeChild(this.§'!T§);
         this.§'!T§ = null;
      }
      
      public function §&5§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §=§.§>!f§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §&!O§(param1:§2,§) : void
      {
         this.§"! § = param1;
      }
      
      public function get §&!O§() : §2,§
      {
         return this.§"! §;
      }
      
      public function get §]!>§() : Number
      {
         return this.§;!#§;
      }
      
      public function set §]!>§(param1:Number) : void
      {
         this.§;!#§ = param1;
      }
      
      public function get §-!<§() : Number
      {
         return this.§#!h§;
      }
      
      public function set §-!<§(param1:Number) : void
      {
         this.§#!h§ = param1;
      }
   }
}
