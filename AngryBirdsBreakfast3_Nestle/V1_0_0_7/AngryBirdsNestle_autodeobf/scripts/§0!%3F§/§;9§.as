package §0!?§
{
   import § !=§.DisplayObject;
   import § !=§.Sprite;
   import §;L§.§"!X§;
   
   public class §;9§ extends §&!G§
   {
      
      public static const § c§:Number = 1024;
      
      public static const §1<§:Number = 658;
      
      public static const §8!l§:Number = 55;
      
      public static const §><§:String = "cubic_in_out";
      
      public static const §?!w§:String = "sin_in_out";
      
      public static const §,!?§:String = "none";
       
      
      private var §^!>§:String;
      
      private var §'!a§:Number;
      
      private var §[6§:Number;
      
      private var §`!p§:Number;
      
      private var §<c§:Number;
      
      private var §8+§:Boolean = true;
      
      private var §3d§:String = "cubic_in_out";
      
      public function §;9§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§^!>§ = param3;
         this.§'!a§ = param4;
         this.§[6§ = param5;
         this.§3d§ = param6;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.§8+§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§"!X§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§^!>§))
            {
               if(_loc4_.name == §0!C§.§2I§)
               {
                  if(this.§8+§)
                  {
                     _loc4_.x = -this.§@!F§() * this.§#=§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§@!F§() * this.§#=§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§'!a§;
                  _loc4_.y -= this.§[6§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §#=§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§3d§)
         {
            case §><§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §?!w§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §@!F§() : Number
      {
         if(this.§8+§)
         {
            return this.§`!p§ - § c§;
         }
         return this.§<c§ - §1<§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§`!p§ = param1;
         this.§<c§ = param2;
      }
      
      override public function clone() : §&!G§
      {
         var _loc1_:§;9§ = new §;9§(time,duration,this.§^!>§,this.§'!a§,this.§[6§,this.§3d§);
         _loc1_.§`!p§ = this.§`!p§;
         _loc1_.§<c§ = this.§<c§;
         _loc1_.§8+§ = this.§8+§;
         return _loc1_;
      }
   }
}
