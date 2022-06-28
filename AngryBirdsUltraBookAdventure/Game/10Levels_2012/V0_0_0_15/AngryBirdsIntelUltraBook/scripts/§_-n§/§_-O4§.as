package §_-n§
{
   import §_-8d§.§_-0FF§;
   import §_-uY§.DisplayObject;
   import §_-uY§.Sprite;
   
   public class §_-O4§ extends §_-tC§
   {
      
      public static const §_-W8§:Number = 1024;
      
      public static const §_-Kj§:Number = 658;
      
      public static const §_-0FD§:Number = 55;
      
      public static const §_-XY§:String = "cubic_in_out";
      
      public static const §_-JS§:String = "sin_in_out";
      
      public static const §_-048§:String = "none";
       
      
      private var §_-ml§:String;
      
      private var §_-c§:Number;
      
      private var §_-l1§:Number;
      
      private var §_-ux§:Number;
      
      private var §_-09f§:Number;
      
      private var §_-04A§:Boolean = true;
      
      private var §_-kV§:String = "cubic_in_out";
      
      public function §_-O4§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§_-ml§ = param3;
         this.§_-c§ = param4;
         this.§_-l1§ = param5;
         this.§_-kV§ = param6;
      }
      
      public function set §_-RR§(param1:Boolean) : void
      {
         this.§_-04A§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§_-0FF§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§_-ml§))
            {
               if(_loc4_.name == §_-fn§.§_-a9§)
               {
                  if(this.§_-04A§)
                  {
                     _loc4_.x = -this.§_-05§() * this.§_-vp§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§_-05§() * this.§_-vp§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§_-c§;
                  _loc4_.y -= this.§_-l1§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §_-vp§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§_-kV§)
         {
            case §_-XY§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §_-JS§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §_-05§() : Number
      {
         if(this.§_-04A§)
         {
            return this.§_-ux§ - §_-W8§;
         }
         return this.§_-09f§ - §_-Kj§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§_-ux§ = param1;
         this.§_-09f§ = param2;
      }
      
      override public function clone() : §_-tC§
      {
         var _loc1_:§_-O4§ = new §_-O4§(time,duration,this.§_-ml§,this.§_-c§,this.§_-l1§,this.§_-kV§);
         _loc1_.§_-ux§ = this.§_-ux§;
         _loc1_.§_-09f§ = this.§_-09f§;
         _loc1_.§_-04A§ = this.§_-04A§;
         return _loc1_;
      }
   }
}
