package §?6§
{
   import §+f§.§4!8§;
   import §4G§.DisplayObject;
   import §4G§.Sprite;
   
   public class §@J§ extends §8+§
   {
      
      public static const §^&§:Number = 1024;
      
      public static const §"#§:Number = 658;
      
      public static const §!G§:Number = 55;
      
      public static const §"9§:String = "cubic_in_out";
      
      public static const §1%§:String = "sin_in_out";
      
      public static const §`p§:String = "none";
       
      
      private var §;m§:String;
      
      private var §#+§:Number;
      
      private var §+9§:Number;
      
      private var §@k§:Number;
      
      private var §?&§:Number;
      
      private var §%!7§:Boolean = true;
      
      private var §5L§:String = "cubic_in_out";
      
      public function §@J§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§;m§ = param3;
         this.§#+§ = param4;
         this.§+9§ = param5;
         this.§5L§ = param6;
      }
      
      public function set §5Y§(param1:Boolean) : void
      {
         this.§%!7§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4!8§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§;m§))
            {
               if(_loc4_.name == § !§.§'#§)
               {
                  if(this.§%!7§)
                  {
                     _loc4_.x = -this.§41§() * this.§'!G§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§41§() * this.§'!G§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§#+§;
                  _loc4_.y -= this.§+9§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §'!G§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§5L§)
         {
            case §"9§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §1%§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §41§() : Number
      {
         if(this.§%!7§)
         {
            return this.§@k§ - §^&§;
         }
         return this.§?&§ - §"#§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§@k§ = param1;
         this.§?&§ = param2;
      }
      
      override public function clone() : §8+§
      {
         var _loc1_:§@J§ = new §@J§(time,duration,this.§;m§,this.§#+§,this.§+9§,this.§5L§);
         _loc1_.§@k§ = this.§@k§;
         _loc1_.§?&§ = this.§?&§;
         _loc1_.§%!7§ = this.§%!7§;
         return _loc1_;
      }
   }
}
