package §]f§
{
   import §"a§.§>X§;
   import §;q§.DisplayObject;
   import §;q§.Sprite;
   
   public class §'A§ extends §6$§
   {
      
      public static const §7i§:Number = 1024;
      
      public static const §3[§:Number = 658;
      
      public static const §@V§:Number = 55;
      
      public static const §5'§:String = "cubic_in_out";
      
      public static const §@Z§:String = "sin_in_out";
      
      public static const §'?§:String = "none";
       
      
      private var §8]§:String;
      
      private var §9r§:Number;
      
      private var §!0§:Number;
      
      private var §<!3§:Number;
      
      private var §5u§:Number;
      
      private var §;!F§:Boolean = true;
      
      private var §0!5§:String = "cubic_in_out";
      
      public function §'A§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§8]§ = param3;
         this.§9r§ = param4;
         this.§!0§ = param5;
         this.§0!5§ = param6;
      }
      
      public function set §,!0§(param1:Boolean) : void
      {
         this.§;!F§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§>X§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§8]§))
            {
               if(_loc4_.name == §2a§.§1_§)
               {
                  if(this.§;!F§)
                  {
                     _loc4_.x = -this.§0[§() * this.§[!0§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§0[§() * this.§[!0§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§9r§;
                  _loc4_.y -= this.§!0§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §[!0§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§0!5§)
         {
            case §5'§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §@Z§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §0[§() : Number
      {
         if(this.§;!F§)
         {
            return this.§<!3§ - §7i§;
         }
         return this.§5u§ - §3[§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<!3§ = param1;
         this.§5u§ = param2;
      }
      
      override public function clone() : §6$§
      {
         var _loc1_:§'A§ = new §'A§(time,duration,this.§8]§,this.§9r§,this.§!0§,this.§0!5§);
         _loc1_.§<!3§ = this.§<!3§;
         _loc1_.§5u§ = this.§5u§;
         _loc1_.§;!F§ = this.§;!F§;
         return _loc1_;
      }
   }
}
