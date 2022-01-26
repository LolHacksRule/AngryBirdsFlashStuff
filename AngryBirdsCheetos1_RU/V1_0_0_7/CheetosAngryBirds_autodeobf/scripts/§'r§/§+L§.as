package §'r§
{
   import §"k§.§02§;
   import §;!Q§.DisplayObject;
   import §;!Q§.Sprite;
   
   public class §+L§ extends §,!H§
   {
      
      public static const §`!N§:Number = 1024;
      
      public static const §1!9§:Number = 658;
      
      public static const §,]§:Number = 55;
      
      public static const §#!6§:String = "cubic_in_out";
      
      public static const §@#§:String = "sin_in_out";
      
      public static const §?I§:String = "none";
       
      
      private var §1!B§:String;
      
      private var §"9§:Number;
      
      private var §[g§:Number;
      
      private var §<!&§:Number;
      
      private var §@!Y§:Number;
      
      private var §`J§:Boolean = true;
      
      private var §#!S§:String = "cubic_in_out";
      
      public function §+L§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§1!B§ = param3;
         this.§"9§ = param4;
         this.§[g§ = param5;
         this.§#!S§ = param6;
      }
      
      public function set §]q§(param1:Boolean) : void
      {
         this.§`J§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§02§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§1!B§))
            {
               if(_loc4_.name == §%a§.§?K§)
               {
                  if(this.§`J§)
                  {
                     _loc4_.x = -this.§;!%§() * this.§2!-§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§;!%§() * this.§2!-§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§"9§;
                  _loc4_.y -= this.§[g§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §2!-§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§#!S§)
         {
            case §#!6§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §@#§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §;!%§() : Number
      {
         if(this.§`J§)
         {
            return this.§<!&§ - §`!N§;
         }
         return this.§@!Y§ - §1!9§;
      }
      
      public function §7q§(param1:Number, param2:Number) : void
      {
         this.§<!&§ = param1;
         this.§@!Y§ = param2;
      }
      
      override public function clone() : §,!H§
      {
         var _loc1_:§+L§ = new §+L§(time,duration,this.§1!B§,this.§"9§,this.§[g§,this.§#!S§);
         _loc1_.§<!&§ = this.§<!&§;
         _loc1_.§@!Y§ = this.§@!Y§;
         _loc1_.§`J§ = this.§`J§;
         return _loc1_;
      }
   }
}
