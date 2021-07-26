package §`@§
{
   import §#?§.§6!4§;
   import §90§.DisplayObject;
   import §90§.Sprite;
   
   public class §3@§ extends §[!"§
   {
      
      public static const §'q§:Number = 1024;
      
      public static const §0!-§:Number = 658;
      
      public static const §%!'§:Number = 55;
      
      public static const §-[§:String = "cubic_in_out";
      
      public static const §,!9§:String = "sin_in_out";
      
      public static const §,]§:String = "none";
       
      
      private var §#&§:String;
      
      private var §;!>§:Number;
      
      private var §8<§:Number;
      
      private var §?U§:Number;
      
      private var §continue§:Number;
      
      private var §1!1§:Boolean = true;
      
      private var §"q§:String = "cubic_in_out";
      
      public function §3@§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§#&§ = param3;
         this.§;!>§ = param4;
         this.§8<§ = param5;
         this.§"q§ = param6;
      }
      
      public function set § null§(param1:Boolean) : void
      {
         this.§1!1§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!4§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§#&§))
            {
               if(_loc4_.name == §<Y§.§;5§)
               {
                  if(this.§1!1§)
                  {
                     _loc4_.x = -this.§?D§() * this.§%A§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§?D§() * this.§%A§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§;!>§;
                  _loc4_.y -= this.§8<§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §%A§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§"q§)
         {
            case §-[§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §,!9§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §?D§() : Number
      {
         if(this.§1!1§)
         {
            return this.§?U§ - §'q§;
         }
         return this.§continue§ - §0!-§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§?U§ = param1;
         this.§continue§ = param2;
      }
      
      override public function clone() : §[!"§
      {
         var _loc1_:§3@§ = new §3@§(time,duration,this.§#&§,this.§;!>§,this.§8<§,this.§"q§);
         _loc1_.§?U§ = this.§?U§;
         _loc1_.§continue§ = this.§continue§;
         _loc1_.§1!1§ = this.§1!1§;
         return _loc1_;
      }
   }
}
