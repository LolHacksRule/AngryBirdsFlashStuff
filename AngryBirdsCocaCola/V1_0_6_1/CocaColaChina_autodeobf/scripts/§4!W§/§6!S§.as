package §4!W§
{
   import § !K§.§'h§;
   import §6a§.§'!9§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §6!S§ extends Sprite
   {
       
      
      private var §8!J§:Sprite;
      
      private var §0!6§:Number;
      
      private var §?!E§:Number;
      
      private var §3!_§:§'!9§;
      
      public function §6!S§(param1:Number)
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
         this.§8!J§ = this.§;r§(_loc3_);
         addChild(this.§8!J§);
         this.mouseEnabled = false;
         this.§8!J§.x = -this.§8!J§.width / 2;
         this.§8!J§.y = -this.§8!J§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§3!_§)
         {
            this.§3!_§.stop();
            this.§3!_§ = null;
         }
         removeChild(this.§8!J§);
         this.§8!J§ = null;
      }
      
      public function §;r§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §'h§.§`E§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §'s§(param1:§'!9§) : void
      {
         this.§3!_§ = param1;
      }
      
      public function get §'s§() : §'!9§
      {
         return this.§3!_§;
      }
      
      public function get §&!9§() : Number
      {
         return this.§0!6§;
      }
      
      public function set §&!9§(param1:Number) : void
      {
         this.§0!6§ = param1;
      }
      
      public function get §8C§() : Number
      {
         return this.§?!E§;
      }
      
      public function set §8C§(param1:Number) : void
      {
         this.§?!E§ = param1;
      }
   }
}
