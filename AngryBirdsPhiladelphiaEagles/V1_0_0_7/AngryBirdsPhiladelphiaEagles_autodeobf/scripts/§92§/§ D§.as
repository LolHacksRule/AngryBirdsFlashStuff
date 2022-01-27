package §92§
{
   import §?!C§.§6q§;
   import com.rovio.assets.§@h§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class § D§ extends Sprite
   {
       
      
      private var §=g§:Sprite;
      
      private var §'W§:Number;
      
      private var §&!B§:Number;
      
      private var §,L§:§6q§;
      
      public function § D§(param1:Number)
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
         this.§=g§ = this.§,!;§(_loc3_);
         addChild(this.§=g§);
         this.mouseEnabled = false;
         this.§=g§.x = -this.§=g§.width / 2;
         this.§=g§.y = -this.§=g§.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§,L§)
         {
            this.§,L§.stop();
            this.§,L§ = null;
         }
         removeChild(this.§=g§);
         this.§=g§ = null;
      }
      
      public function §,!;§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §@h§.§[@§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §5g§(param1:§6q§) : void
      {
         this.§,L§ = param1;
      }
      
      public function get §5g§() : §6q§
      {
         return this.§,L§;
      }
      
      public function get §3!L§() : Number
      {
         return this.§'W§;
      }
      
      public function set §3!L§(param1:Number) : void
      {
         this.§'W§ = param1;
      }
      
      public function get §;P§() : Number
      {
         return this.§&!B§;
      }
      
      public function set §;P§(param1:Number) : void
      {
         this.§&!B§ = param1;
      }
   }
}
