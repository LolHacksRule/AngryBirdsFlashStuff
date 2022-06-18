package §3A§
{
   import §<k§.DisplayObject;
   import §<k§.Sprite;
   import §[n§.§?+§;
   
   public class §2z§ extends §-§
   {
      
      public static const §each §:Number = 1024;
      
      public static const §81§:Number = 658;
      
      public static const §4!B§:Number = 55;
      
      public static const §>%§:String = "cubic_in_out";
      
      public static const §#_§:String = "sin_in_out";
      
      public static const §5;§:String = "none";
       
      
      private var §[z§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §!0§:Number;
      
      private var §+K§:Number;
      
      private var §?!0§:Boolean = true;
      
      private var §[!0§:String = "cubic_in_out";
      
      public function §2z§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§[z§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§[!0§ = param6;
      }
      
      public function set §^i§(param1:Boolean) : void
      {
         this.§?!0§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?+§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§[z§))
            {
               if(_loc4_.name == §'h§.§?s§)
               {
                  if(this.§?!0§)
                  {
                     _loc4_.x = -this.§94§() * this.§9!-§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§94§() * this.§9!-§(param1);
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
      
      private function §9!-§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§[!0§)
         {
            case §>%§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §#_§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §94§() : Number
      {
         if(this.§?!0§)
         {
            return this.§!0§ - §each §;
         }
         return this.§+K§ - §81§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§!0§ = param1;
         this.§+K§ = param2;
      }
      
      override public function clone() : §-§
      {
         var _loc1_:§2z§ = new §2z§(time,duration,this.§[z§,this.mX,this.mY,this.§[!0§);
         _loc1_.§!0§ = this.§!0§;
         _loc1_.§+K§ = this.§+K§;
         _loc1_.§?!0§ = this.§?!0§;
         return _loc1_;
      }
   }
}
