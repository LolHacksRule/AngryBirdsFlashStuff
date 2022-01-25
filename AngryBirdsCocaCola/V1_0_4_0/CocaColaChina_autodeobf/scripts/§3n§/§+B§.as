package §3n§
{
   import § !K§.DisplayObject;
   import § !K§.Sprite;
   import §9!Y§.§!q§;
   
   public class §+B§ extends §'0§
   {
      
      public static const § e§:Number = 1024;
      
      public static const §7e§:Number = 658;
      
      public static const §2!=§:Number = 55;
      
      public static const §^!6§:String = "cubic_in_out";
      
      public static const §3r§:String = "sin_in_out";
      
      public static const §+t§:String = "none";
       
      
      private var §9q§:String;
      
      private var §03§:Number;
      
      private var §5,§:Number;
      
      private var §3§:Number;
      
      private var §=!=§:Number;
      
      private var §2+§:Boolean = true;
      
      private var §!4§:String = "cubic_in_out";
      
      public function §+B§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§9q§ = param3;
         this.§03§ = param4;
         this.§5,§ = param5;
         this.§!4§ = param6;
      }
      
      public function set §^S§(param1:Boolean) : void
      {
         this.§2+§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§!q§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§9q§))
            {
               if(_loc4_.name == §`H§.§>f§)
               {
                  if(this.§2+§)
                  {
                     _loc4_.x = -this.§]p§() * this.§<!D§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§]p§() * this.§<!D§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§03§;
                  _loc4_.y -= this.§5,§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §<!D§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§!4§)
         {
            case §^!6§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §3r§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §]p§() : Number
      {
         if(this.§2+§)
         {
            return this.§3§ - § e§;
         }
         return this.§=!=§ - §7e§;
      }
      
      public function §9![§(param1:Number, param2:Number) : void
      {
         this.§3§ = param1;
         this.§=!=§ = param2;
      }
      
      override public function clone() : §'0§
      {
         var _loc1_:§+B§ = new §+B§(time,duration,this.§9q§,this.§03§,this.§5,§,this.§!4§);
         _loc1_.§3§ = this.§3§;
         _loc1_.§=!=§ = this.§=!=§;
         _loc1_.§2+§ = this.§2+§;
         return _loc1_;
      }
   }
}
