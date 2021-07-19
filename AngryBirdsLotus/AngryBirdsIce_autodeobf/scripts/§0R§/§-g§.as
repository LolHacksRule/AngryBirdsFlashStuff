package §0R§
{
   import §1n§.§5#§;
   import §^V§.DisplayObject;
   import §^V§.Sprite;
   
   public class §-g§ extends §6! §
   {
      
      public static const static:Number = 1024;
      
      public static const §for§:Number = 658;
      
      public static const §1_§:Number = 55;
      
      public static const §9r§:String = "cubic_in_out";
      
      public static const §;r§:String = "sin_in_out";
      
      public static const §7w§:String = "none";
       
      
      private var §9!+§:String;
      
      private var §-Y§:Number;
      
      private var §%!;§:Number;
      
      private var §?!#§:Number;
      
      private var §26§:Number;
      
      private var §`7§:Boolean = true;
      
      private var §@!B§:String = "cubic_in_out";
      
      public function §-g§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§9!+§ = param3;
         this.§-Y§ = param4;
         this.§%!;§ = param5;
         this.§@!B§ = param6;
      }
      
      public function set §0%§(param1:Boolean) : void
      {
         this.§`7§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§5#§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§9!+§))
            {
               if(_loc4_.name == §1d§.§0k§)
               {
                  if(this.§`7§)
                  {
                     _loc4_.x = -this.§7V§() * this.§"b§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§7V§() * this.§"b§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§-Y§;
                  _loc4_.y -= this.§%!;§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §"b§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§@!B§)
         {
            case §9r§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §;r§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §7V§() : Number
      {
         if(this.§`7§)
         {
            return this.§?!#§ - static;
         }
         return this.§26§ - §for§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§?!#§ = param1;
         this.§26§ = param2;
      }
      
      override public function clone() : §6! §
      {
         var _loc1_:§-g§ = new §-g§(time,duration,this.§9!+§,this.§-Y§,this.§%!;§,this.§@!B§);
         _loc1_.§?!#§ = this.§?!#§;
         _loc1_.§26§ = this.§26§;
         _loc1_.§`7§ = this.§`7§;
         return _loc1_;
      }
   }
}
