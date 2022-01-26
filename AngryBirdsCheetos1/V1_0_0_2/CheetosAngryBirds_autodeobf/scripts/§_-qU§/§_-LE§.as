package §_-qU§
{
   import §_-GY§.DisplayObject;
   import §_-GY§.Sprite;
   import §_-my§.§_-V0§;
   
   public class §_-LE§ extends §_-BV§
   {
      
      public static const §_-dI§:Number = 1024;
      
      public static const §_-0R§:Number = 658;
      
      public static const §_-fM§:Number = 55;
      
      public static const §_-hH§:String = "cubic_in_out";
      
      public static const §_-R7§:String = "sin_in_out";
      
      public static const §_-B4§:String = "none";
       
      
      private var §_-1d§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §_-a9§:Number;
      
      private var §_-7y§:Number;
      
      private var §_-vb§:Boolean = true;
      
      private var §_-XG§:String = "cubic_in_out";
      
      public function §_-LE§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§_-1d§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§_-XG§ = param6;
      }
      
      public function set §_-aK§(param1:Boolean) : void
      {
         this.§_-vb§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-V0§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§_-1d§))
            {
               if(_loc4_.name == §_-SK§.§_-gp§)
               {
                  if(this.§_-vb§)
                  {
                     _loc4_.x = -this.§_-rq§() * this.§_-lx§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§_-rq§() * this.§_-lx§(param1);
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
      
      private function §_-lx§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§_-XG§)
         {
            case §_-hH§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §_-R7§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §_-rq§() : Number
      {
         if(this.§_-vb§)
         {
            return this.§_-a9§ - §_-dI§;
         }
         return this.§_-7y§ - §_-0R§;
      }
      
      public function §_-z7§(param1:Number, param2:Number) : void
      {
         this.§_-a9§ = param1;
         this.§_-7y§ = param2;
      }
      
      override public function clone() : §_-BV§
      {
         var _loc1_:§_-LE§ = new §_-LE§(time,duration,this.§_-1d§,this.mX,this.mY,this.§_-XG§);
         _loc1_.§_-a9§ = this.§_-a9§;
         _loc1_.§_-7y§ = this.§_-7y§;
         _loc1_.§_-vb§ = this.§_-vb§;
         return _loc1_;
      }
   }
}
