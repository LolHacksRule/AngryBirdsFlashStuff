package §8a§
{
   import §4W§.§!]§;
   import §`a§.DisplayObject;
   import §`a§.Sprite;
   
   public class §?W§ extends §'!U§
   {
      
      public static const §"L§:Number = 1024;
      
      public static const §#S§:Number = 658;
      
      public static const §-!%§:Number = 55;
      
      public static const §6!!§:String = "cubic_in_out";
      
      public static const §?-§:String = "sin_in_out";
      
      public static const §-!A§:String = "none";
       
      
      private var §8k§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §?l§:Number;
      
      private var §+G§:Number;
      
      private var §5!O§:Boolean = true;
      
      private var §&!9§:String = "cubic_in_out";
      
      public function §?W§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§8k§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§&!9§ = param6;
      }
      
      public function set §#^§(param1:Boolean) : void
      {
         this.§5!O§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!]§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§8k§))
            {
               if(_loc4_.name == §do§.§5!%§)
               {
                  if(this.§5!O§)
                  {
                     _loc4_.x = -this.§<!7§() * this.§+r§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§<!7§() * this.§+r§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.mX;
                  _loc4_.y -= this.mY;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §+r§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§&!9§)
         {
            case §6!!§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §?-§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §<!7§() : Number
      {
         if(this.§5!O§)
         {
            return this.§?l§ - §"L§;
         }
         return this.§+G§ - §#S§;
      }
      
      public function §,L§(param1:Number, param2:Number) : void
      {
         this.§?l§ = param1;
         this.§+G§ = param2;
      }
      
      override public function clone() : §'!U§
      {
         var _loc1_:§?W§ = new §?W§(time,duration,this.§8k§,this.mX,this.mY,this.§&!9§);
         _loc1_.§?l§ = this.§?l§;
         _loc1_.§+G§ = this.§+G§;
         _loc1_.§5!O§ = this.§5!O§;
         return _loc1_;
      }
   }
}
