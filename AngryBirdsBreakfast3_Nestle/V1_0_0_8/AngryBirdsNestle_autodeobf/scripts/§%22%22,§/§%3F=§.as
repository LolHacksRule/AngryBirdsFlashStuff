package §"",§
{
   import §-![§.DisplayObject;
   import §-![§.Sprite;
   import §6`§.§2a§;
   
   public class §?=§ extends §`=§
   {
      
      public static const §,_§:Number = 1024;
      
      public static const §-v§:Number = 658;
      
      public static const §>"5§:Number = 55;
      
      public static const §=!y§:String = "cubic_in_out";
      
      public static const §%!K§:String = "sin_in_out";
      
      public static const §,0§:String = "none";
       
      
      private var §3"'§:String;
      
      private var §@!-§:Number;
      
      private var §'!0§:Number;
      
      private var §""7§:Number;
      
      private var §%>§:Number;
      
      private var §`j§:Boolean = true;
      
      private var §2E§:String = "cubic_in_out";
      
      public function §?=§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§3"'§ = param3;
         this.§@!-§ = param4;
         this.§'!0§ = param5;
         this.§2E§ = param6;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.§`j§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§3"'§))
            {
               if(_loc4_.name == §[!0§.§7>§)
               {
                  if(this.§`j§)
                  {
                     _loc4_.x = -this.§3^§() * this.§0!4§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§3^§() * this.§0!4§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§@!-§;
                  _loc4_.y -= this.§'!0§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §0!4§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§2E§)
         {
            case §=!y§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §%!K§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §3^§() : Number
      {
         if(this.§`j§)
         {
            return this.§""7§ - §,_§;
         }
         return this.§%>§ - §-v§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§""7§ = param1;
         this.§%>§ = param2;
      }
      
      override public function clone() : §`=§
      {
         var _loc1_:§?=§ = new §?=§(time,duration,this.§3"'§,this.§@!-§,this.§'!0§,this.§2E§);
         _loc1_.§""7§ = this.§""7§;
         _loc1_.§%>§ = this.§%>§;
         _loc1_.§`j§ = this.§`j§;
         return _loc1_;
      }
   }
}
