package §5!5§
{
   import §,y§.§?!0§;
   import §2!D§.§&9§;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   
   public class §;y§ extends Sprite
   {
       
      
      private var §3! §:Sprite;
      
      private var §?![§:Number;
      
      private var §63§:Number;
      
      private var §`s§:§&9§;
      
      public function §;y§(param1:Number)
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
         this.§3! § = this.§7B§(_loc3_);
         addChild(this.§3! §);
         this.mouseEnabled = false;
         this.§3! §.x = -this.§3! §.width / 2;
         this.§3! §.y = -this.§3! §.height / 2;
      }
      
      public function clean() : void
      {
         if(this.§`s§)
         {
            this.§`s§.stop();
            this.§`s§ = null;
         }
         removeChild(this.§3! §);
         this.§3! § = null;
      }
      
      public function §7B§(param1:String) : MovieClip
      {
         var _loc2_:MovieClip = null;
         var _loc3_:Class = §?!0§.§^e§(param1);
         _loc2_ = new _loc3_();
         _loc2_.x = _loc2_.width / 2;
         _loc2_.y = _loc2_.height / 2;
         return _loc2_;
      }
      
      public function set §=5§(param1:§&9§) : void
      {
         this.§`s§ = param1;
      }
      
      public function get §=5§() : §&9§
      {
         return this.§`s§;
      }
      
      public function get §;m§() : Number
      {
         return this.§?![§;
      }
      
      public function set §;m§(param1:Number) : void
      {
         this.§?![§ = param1;
      }
      
      public function get §5D§() : Number
      {
         return this.§63§;
      }
      
      public function set §5D§(param1:Number) : void
      {
         this.§63§ = param1;
      }
   }
}
