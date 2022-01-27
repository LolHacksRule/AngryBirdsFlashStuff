package §2"a§
{
   import §!!U§.DisplayObject;
   import §!!U§.Sprite;
   import §7!F§.§7§;
   
   public class §<!f§ extends §,^§
   {
      
      public static const §%N§:Number = 1024;
      
      public static const §>#O§:Number = 658;
      
      public static const §#! §:Number = 55;
      
      public static const §]!&§:String = "cubic_in_out";
      
      public static const §6#]§:String = "sin_in_out";
      
      public static const §5#D§:String = "none";
       
      
      private var §-!`§:String;
      
      private var §8!+§:Number;
      
      private var §=!Z§:Number;
      
      private var §6"?§:Number;
      
      private var §[!4§:Number;
      
      private var §61§:Boolean = true;
      
      private var §;"-§:String = "cubic_in_out";
      
      public function §<!f§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§-!`§ = param3;
         this.§8!+§ = param4;
         this.§=!Z§ = param5;
         this.§;"-§ = param6;
      }
      
      public function set §[S§(param1:Boolean) : void
      {
         this.§61§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7#5§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§-!`§))
            {
               if(_loc4_.name == §%#`§.§1R§)
               {
                  if(this.§61§)
                  {
                     _loc4_.x = -this.§"o§() * this.§="a§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§"o§() * this.§="a§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§8!+§;
                  _loc4_.y -= this.§=!Z§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §="a§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§;"-§)
         {
            case §]!&§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §6#]§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §"o§() : Number
      {
         if(this.§61§)
         {
            return this.§6"?§ - §%N§;
         }
         return this.§[!4§ - §>#O§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§6"?§ = param1;
         this.§[!4§ = param2;
      }
      
      override public function clone() : §,^§
      {
         var _loc1_:§<!f§ = new §<!f§(time,duration,this.§-!`§,this.§8!+§,this.§=!Z§,this.§;"-§);
         _loc1_.§6"?§ = this.§6"?§;
         _loc1_.§[!4§ = this.§[!4§;
         _loc1_.§61§ = this.§61§;
         return _loc1_;
      }
   }
}
