package §]!S§
{
   import §7!d§.§'!5§;
   import §=!F§.§^!^§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §-=§ extends Sprite
   {
       
      
      private var §@!V§:Sprite;
      
      private var §,9§:Number;
      
      private var §4!7§:Number;
      
      private var §?!A§:§^!^§;
      
      public function §-=§(param1:Number)
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
         this.§@!V§ = this.§ ! §(_loc3_);
         addChild(this.§@!V§);
         this.mouseEnabled = false;
         this.§@!V§.x = -this.§@!V§.width / 2;
         this.§@!V§.y = -this.§@!V§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§?!A§)
         {
            this.§?!A§.stop();
            this.§?!A§ = null;
         }
         removeChild(this.§@!V§);
         this.§@!V§ = null;
      }
      
      public function § ! §(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §'!5§.§-!P§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §9!f§(param1:§^!^§) : void
      {
         this.§?!A§ = param1;
      }
      
      public function get §9!f§() : §^!^§
      {
         return this.§?!A§;
      }
      
      public function get §]!T§() : Number
      {
         return this.§,9§;
      }
      
      public function set §]!T§(param1:Number) : void
      {
         this.§,9§ = param1;
      }
      
      public function get §5?§() : Number
      {
         return this.§4!7§;
      }
      
      public function set §5?§(param1:Number) : void
      {
         this.§4!7§ = param1;
      }
   }
}
