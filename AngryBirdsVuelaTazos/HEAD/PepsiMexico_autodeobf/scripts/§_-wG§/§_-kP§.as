package §_-wG§
{
   import §_-3b§.§_-Og§;
   import §_-SE§.DisplayObject;
   import §_-SE§.Sprite;
   
   public class §_-kP§ extends include
   {
      
      public static const § null§:Number = 1024;
      
      public static const §_-aD§:Number = 658;
      
      public static const §_-l6§:Number = 55;
      
      public static const §_-s4§:String = "cubic_in_out";
      
      public static const §_-W4§:String = "sin_in_out";
      
      public static const §_-pF§:String = "none";
       
      
      private var §_-cV§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-3Y§:Number;
      
      private var §_-cy§:Number;
      
      private var §_-o7§:Boolean = true;
      
      private var §_-mW§:String = "cubic_in_out";
      
      public function §_-kP§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§_-cV§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§_-mW§ = param6;
      }
      
      public function set §_-wB§(param1:Boolean) : void
      {
         this.§_-o7§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-Og§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§_-cV§))
            {
               if(_loc4_.name == §_-jH§.§_-ah§)
               {
                  if(this.§_-o7§)
                  {
                     _loc4_.x = -this.§_-U8§() * this.§_-G1§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§_-U8§() * this.§_-G1§(param1);
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
      
      private function §_-G1§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§_-mW§)
         {
            case §_-s4§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §_-W4§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §_-U8§() : Number
      {
         if(this.§_-o7§)
         {
            return this.§_-3Y§ - § null§;
         }
         return this.§_-cy§ - §_-aD§;
      }
      
      public function §_-e5§(param1:Number, param2:Number) : void
      {
         this.§_-3Y§ = param1;
         this.§_-cy§ = param2;
      }
      
      override public function clone() : include
      {
         var _loc1_:§_-kP§ = new §_-kP§(time,duration,this.§_-cV§,this.mX,this.mY,this.§_-mW§);
         _loc1_.§_-3Y§ = this.§_-3Y§;
         _loc1_.§_-cy§ = this.§_-cy§;
         _loc1_.§_-o7§ = this.§_-o7§;
         return _loc1_;
      }
   }
}
