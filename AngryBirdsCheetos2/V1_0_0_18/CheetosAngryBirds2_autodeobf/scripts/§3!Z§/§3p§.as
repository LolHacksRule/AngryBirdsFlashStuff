package §3!Z§
{
   import §9t§.§=!>§;
   import §^a§.DisplayObject;
   import §^a§.Sprite;
   
   public class §3p§ extends §!'§
   {
      
      public static const §?!L§:Number = 1024;
      
      public static const §"r§:Number = 658;
      
      public static const §=!7§:Number = 55;
      
      public static const §!A§:String = "cubic_in_out";
      
      public static const §'!E§:String = "sin_in_out";
      
      public static const §2`§:String = "none";
       
      
      private var §#W§:String;
      
      private var §7F§:Number;
      
      private var §6_§:Number;
      
      private var §]>§:Number;
      
      private var §7w§:Number;
      
      private var §[!5§:Boolean = true;
      
      private var § !H§:String = "cubic_in_out";
      
      public function §3p§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§#W§ = param3;
         this.§7F§ = param4;
         this.§6_§ = param5;
         this.§ !H§ = param6;
      }
      
      public function set §%0§(param1:Boolean) : void
      {
         this.§[!5§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=!>§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§#W§))
            {
               if(_loc4_.name == §+M§.§,z§)
               {
                  if(this.§[!5§)
                  {
                     _loc4_.x = -this.§!!B§() * this.§<m§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§!!B§() * this.§<m§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§7F§;
                  _loc4_.y -= this.§6_§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §<m§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§ !H§)
         {
            case §!A§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §'!E§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §!!B§() : Number
      {
         if(this.§[!5§)
         {
            return this.§]>§ - §?!L§;
         }
         return this.§7w§ - §"r§;
      }
      
      public function §?<§(param1:Number, param2:Number) : void
      {
         this.§]>§ = param1;
         this.§7w§ = param2;
      }
      
      override public function clone() : §!'§
      {
         var _loc1_:§3p§ = new §3p§(time,duration,this.§#W§,this.§7F§,this.§6_§,this.§ !H§);
         _loc1_.§]>§ = this.§]>§;
         _loc1_.§7w§ = this.§7w§;
         _loc1_.§[!5§ = this.§[!5§;
         return _loc1_;
      }
   }
}
