package §2!#§
{
   import §-!0§.§'!3§;
   import §?^§.DisplayObject;
   import §?^§.Sprite;
   
   public class §`5§ extends §,1§
   {
      
      public static const §;]§:Number = 1024;
      
      public static const §3L§:Number = 658;
      
      public static const §8!4§:Number = 55;
      
      public static const §@4§:String = "cubic_in_out";
      
      public static const §!!6§:String = "sin_in_out";
      
      public static const §7A§:String = "none";
       
      
      private var §'!$§:String;
      
      private var §5!>§:Number;
      
      private var §#!$§:Number;
      
      private var §9p§:Number;
      
      private var §9`§:Number;
      
      private var §#&§:Boolean = true;
      
      private var §,!5§:String = "cubic_in_out";
      
      public function §`5§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§'!$§ = param3;
         this.§5!>§ = param4;
         this.§#!$§ = param5;
         this.§,!5§ = param6;
      }
      
      public function set §1!2§(param1:Boolean) : void
      {
         this.§#&§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'!3§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§'!$§))
            {
               if(_loc4_.name == §>R§.§1S§)
               {
                  if(this.§#&§)
                  {
                     _loc4_.x = -this.§&2§() * this.§,G§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§&2§() * this.§,G§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§5!>§;
                  _loc4_.y -= this.§#!$§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §,G§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§,!5§)
         {
            case §@4§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §!!6§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §&2§() : Number
      {
         if(this.§#&§)
         {
            return this.§9p§ - §;]§;
         }
         return this.§9`§ - §3L§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§9p§ = param1;
         this.§9`§ = param2;
      }
      
      override public function clone() : §,1§
      {
         var _loc1_:§`5§ = new §`5§(time,duration,this.§'!$§,this.§5!>§,this.§#!$§,this.§,!5§);
         _loc1_.§9p§ = this.§9p§;
         _loc1_.§9`§ = this.§9`§;
         _loc1_.§#&§ = this.§#&§;
         return _loc1_;
      }
   }
}
