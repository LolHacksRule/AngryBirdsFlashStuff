package §9!3§
{
   import §&!9§.DisplayObject;
   import §&!9§.Sprite;
   import §48§.§4a§;
   
   public class §3!5§ extends §8C§
   {
      
      public static const §[!]§:Number = 1024;
      
      public static const §?!E§:Number = 658;
      
      public static const §0!P§:Number = 55;
      
      public static const §"F§:String = "cubic_in_out";
      
      public static const §64§:String = "sin_in_out";
      
      public static const §=!7§:String = "none";
       
      
      private var §!_§:String;
      
      private var §!f§:Number;
      
      private var §@;§:Number;
      
      private var §"!R§:Number;
      
      private var §0[§:Number;
      
      private var §'d§:Boolean = true;
      
      private var §;6§:String = "cubic_in_out";
      
      public function §3!5§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§!_§ = param3;
         this.§!f§ = param4;
         this.§@;§ = param5;
         this.§;6§ = param6;
      }
      
      public function set §3!P§(param1:Boolean) : void
      {
         this.§'d§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§!_§))
            {
               if(_loc4_.name == §1!7§.§9b§)
               {
                  if(this.§'d§)
                  {
                     _loc4_.x = -this.§#;§() * this.§'%§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§#;§() * this.§'%§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§!f§;
                  _loc4_.y -= this.§@;§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §'%§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§;6§)
         {
            case §"F§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §64§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §#;§() : Number
      {
         if(this.§'d§)
         {
            return this.§"!R§ - §[!]§;
         }
         return this.§0[§ - §?!E§;
      }
      
      public function § !e§(param1:Number, param2:Number) : void
      {
         this.§"!R§ = param1;
         this.§0[§ = param2;
      }
      
      override public function clone() : §8C§
      {
         var _loc1_:§3!5§ = new §3!5§(time,duration,this.§!_§,this.§!f§,this.§@;§,this.§;6§);
         _loc1_.§"!R§ = this.§"!R§;
         _loc1_.§0[§ = this.§0[§;
         _loc1_.§'d§ = this.§'d§;
         return _loc1_;
      }
   }
}
