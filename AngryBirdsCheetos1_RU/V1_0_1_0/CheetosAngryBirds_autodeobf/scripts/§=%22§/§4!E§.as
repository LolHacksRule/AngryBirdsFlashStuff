package §="§
{
   import §&!5§.DisplayObject;
   import §&!5§.Sprite;
   import §9!2§.§'![§;
   
   public class §4!E§ extends §2!C§
   {
      
      public static const §]!`§:Number = 1024;
      
      public static const §-$§:Number = 658;
      
      public static const §&!W§:Number = 55;
      
      public static const §%!Q§:String = "cubic_in_out";
      
      public static const §3y§:String = "sin_in_out";
      
      public static const §=H§:String = "none";
       
      
      private var §=!B§:String;
      
      private var § !2§:Number;
      
      private var §'!F§:Number;
      
      private var §'n§:Number;
      
      private var §+!#§:Number;
      
      private var §;`§:Boolean = true;
      
      private var §>!X§:String = "cubic_in_out";
      
      public function §4!E§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§=!B§ = param3;
         this.§ !2§ = param4;
         this.§'!F§ = param5;
         this.§>!X§ = param6;
      }
      
      public function set §4!a§(param1:Boolean) : void
      {
         this.§;`§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'![§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§=!B§))
            {
               if(_loc4_.name == §1H§.§&!C§)
               {
                  if(this.§;`§)
                  {
                     _loc4_.x = -this.§#`§() * this.§;!X§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§#`§() * this.§;!X§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§ !2§;
                  _loc4_.y -= this.§'!F§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §;!X§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§>!X§)
         {
            case §%!Q§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §3y§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §#`§() : Number
      {
         if(this.§;`§)
         {
            return this.§'n§ - §]!`§;
         }
         return this.§+!#§ - §-$§;
      }
      
      public function §#m§(param1:Number, param2:Number) : void
      {
         this.§'n§ = param1;
         this.§+!#§ = param2;
      }
      
      override public function clone() : §2!C§
      {
         var _loc1_:§4!E§ = new §4!E§(time,duration,this.§=!B§,this.§ !2§,this.§'!F§,this.§>!X§);
         _loc1_.§'n§ = this.§'n§;
         _loc1_.§+!#§ = this.§+!#§;
         _loc1_.§;`§ = this.§;`§;
         return _loc1_;
      }
   }
}
