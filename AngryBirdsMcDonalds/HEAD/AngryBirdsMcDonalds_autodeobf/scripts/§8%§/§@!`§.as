package §8%§
{
   import §9`§.§#U§;
   import §`!n§.DisplayObject;
   import §`!n§.Sprite;
   
   public class §@!`§ extends §]p§
   {
      
      public static const §&a§:Number = 1024;
      
      public static const §0Z§:Number = 658;
      
      public static const §8a§:Number = 55;
      
      public static const §%!D§:String = "cubic_in_out";
      
      public static const §8!B§:String = "sin_in_out";
      
      public static const §!K§:String = "none";
       
      
      private var §8!F§:String;
      
      private var §=y§:Number;
      
      private var §#J§:Number;
      
      private var §9E§:Number;
      
      private var §;`§:Number;
      
      private var §1d§:Boolean = true;
      
      private var §8!4§:String = "cubic_in_out";
      
      public function §@!`§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§8!F§ = param3;
         this.§=y§ = param4;
         this.§#J§ = param5;
         this.§8!4§ = param6;
      }
      
      public function set §1a§(param1:Boolean) : void
      {
         this.§1d§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#U§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§8!F§))
            {
               if(_loc4_.name == §3!5§.§1Z§)
               {
                  if(this.§1d§)
                  {
                     _loc4_.x = -this.§"^§() * this.§5!7§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§"^§() * this.§5!7§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§=y§;
                  _loc4_.y -= this.§#J§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §5!7§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§8!4§)
         {
            case §%!D§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §8!B§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §"^§() : Number
      {
         if(this.§1d§)
         {
            return this.§9E§ - §&a§;
         }
         return this.§;`§ - §0Z§;
      }
      
      public function §+Y§(param1:Number, param2:Number) : void
      {
         this.§9E§ = param1;
         this.§;`§ = param2;
      }
      
      override public function clone() : §]p§
      {
         var _loc1_:§@!`§ = new §@!`§(time,duration,this.§8!F§,this.§=y§,this.§#J§,this.§8!4§);
         _loc1_.§9E§ = this.§9E§;
         _loc1_.§;`§ = this.§;`§;
         _loc1_.§1d§ = this.§1d§;
         return _loc1_;
      }
   }
}
