package §%j§
{
   import §!!R§.DisplayObject;
   import §!!R§.Sprite;
   import §&!W§.§8!K§;
   
   public class §5!%§ extends §;!X§
   {
      
      public static const §"L§:Number = 1024;
      
      public static const §#S§:Number = 658;
      
      public static const §<!7§:Number = 55;
      
      public static const §-!%§:String = "cubic_in_out";
      
      public static const §6!!§:String = "sin_in_out";
      
      public static const §?-§:String = "none";
       
      
      private var §do§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §6!>§:Number;
      
      private var §?l§:Number;
      
      private var §?W§:Boolean = true;
      
      private var §`D§:String = "cubic_in_out";
      
      public function §5!%§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§do§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§`D§ = param6;
      }
      
      public function set §5!O§(param1:Boolean) : void
      {
         this.§?W§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§8!K§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§do§))
            {
               if(_loc4_.name == §<O§.§,L§)
               {
                  if(this.§?W§)
                  {
                     _loc4_.x = -this.§+r§() * this.§#^§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§+r§() * this.§#^§(param1);
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
      
      private function §#^§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§`D§)
         {
            case §-!%§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §6!!§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §+r§() : Number
      {
         if(this.§?W§)
         {
            return this.§6!>§ - §"L§;
         }
         return this.§?l§ - §#S§;
      }
      
      public function §,T§(param1:Number, param2:Number) : void
      {
         this.§6!>§ = param1;
         this.§?l§ = param2;
      }
      
      override public function clone() : §;!X§
      {
         var _loc1_:§5!%§ = new §5!%§(time,duration,this.§do§,this.mX,this.mY,this.§`D§);
         _loc1_.§6!>§ = this.§6!>§;
         _loc1_.§?l§ = this.§?l§;
         _loc1_.§?W§ = this.§?W§;
         return _loc1_;
      }
   }
}
