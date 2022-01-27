package § a§
{
   import §%O§.§ !§;
   import §<!-§.DisplayObject;
   import §<!-§.Sprite;
   
   public class §`a§ extends §&K§
   {
      
      public static const §!!P§:Number = 1024;
      
      public static const §9!8§:Number = 658;
      
      public static const §2!-§:Number = 55;
      
      public static const §#H§:String = "cubic_in_out";
      
      public static const §?V§:String = "sin_in_out";
      
      public static const §6H§:String = "none";
       
      
      private var §]!0§:String;
      
      private var §-!c§:Number;
      
      private var §3![§:Number;
      
      private var §]2§:Number;
      
      private var §?R§:Number;
      
      private var §[y§:Boolean = true;
      
      private var §<]§:String = "cubic_in_out";
      
      public function §`a§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§]!0§ = param3;
         this.§-!c§ = param4;
         this.§3![§ = param5;
         this.§<]§ = param6;
      }
      
      public function set §do §(param1:Boolean) : void
      {
         this.§[y§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]!0§))
            {
               if(_loc4_.name == §"C§.§&!A§)
               {
                  if(this.§[y§)
                  {
                     _loc4_.x = -this.§%!d§() * this.§,9§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§%!d§() * this.§,9§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§-!c§;
                  _loc4_.y -= this.§3![§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §,9§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§<]§)
         {
            case §#H§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §?V§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §%!d§() : Number
      {
         if(this.§[y§)
         {
            return this.§]2§ - §!!P§;
         }
         return this.§?R§ - §9!8§;
      }
      
      public function §&Q§(param1:Number, param2:Number) : void
      {
         this.§]2§ = param1;
         this.§?R§ = param2;
      }
      
      override public function clone() : §&K§
      {
         var _loc1_:§`a§ = new §`a§(time,duration,this.§]!0§,this.§-!c§,this.§3![§,this.§<]§);
         _loc1_.§]2§ = this.§]2§;
         _loc1_.§?R§ = this.§?R§;
         _loc1_.§[y§ = this.§[y§;
         return _loc1_;
      }
   }
}
