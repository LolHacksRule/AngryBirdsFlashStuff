package §[!<§
{
   import §%-§.DisplayObject;
   import §%-§.Sprite;
   import §<h§.§;@§;
   
   public class §1S§ extends §#v§
   {
      
      public static const §;]§:Number = 1024;
      
      public static const §3L§:Number = 658;
      
      public static const §&2§:Number = 55;
      
      public static const §8!4§:String = "cubic_in_out";
      
      public static const §@4§:String = "sin_in_out";
      
      public static const §!!6§:String = "none";
       
      
      private var §>R§:String;
      
      private var §5!>§:Number;
      
      private var §#!$§:Number;
      
      private var §9Q§:Number;
      
      private var §9p§:Number;
      
      private var §`5§:Boolean = true;
      
      private var §,!5§:String = "cubic_in_out";
      
      public function §1S§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§>R§ = param3;
         this.§5!>§ = param4;
         this.§#!$§ = param5;
         this.§,!5§ = param6;
      }
      
      public function set §#&§(param1:Boolean) : void
      {
         this.§`5§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§;@§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§>R§))
            {
               if(_loc4_.name == §6u§.override)
               {
                  if(this.§`5§)
                  {
                     _loc4_.x = -this.§,G§() * this.§1!2§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§,G§() * this.§1!2§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§5!>§;
                  _loc4_.y -= this.§#!$§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §1!2§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§,!5§)
         {
            case §8!4§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §@4§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §,G§() : Number
      {
         if(this.§`5§)
         {
            return this.§9Q§ - §;]§;
         }
         return this.§9p§ - §3L§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§9Q§ = param1;
         this.§9p§ = param2;
      }
      
      override public function clone() : §#v§
      {
         var _loc1_:§1S§ = new §1S§(time,duration,this.§>R§,this.§5!>§,this.§#!$§,this.§,!5§);
         _loc1_.§9Q§ = this.§9Q§;
         _loc1_.§9p§ = this.§9p§;
         _loc1_.§`5§ = this.§`5§;
         return _loc1_;
      }
   }
}
