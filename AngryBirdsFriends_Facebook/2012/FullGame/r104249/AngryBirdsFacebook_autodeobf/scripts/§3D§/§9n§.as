package §3D§
{
   import §#S§.§?!?§;
   import §]!v§.DisplayObject;
   import §]!v§.Sprite;
   
   public class §9n§ extends §3T§
   {
      
      public static const §5!f§:Number = 1024;
      
      public static const §#!h§:Number = 658;
      
      public static const §60§:Number = 55;
      
      public static const §8!l§:String = "cubic_in_out";
      
      public static const §>N§:String = "sin_in_out";
      
      public static const §6B§:String = "none";
       
      
      private var §-"+§:String;
      
      private var §"""§:Number;
      
      private var §5!J§:Number;
      
      private var §=!c§:Number;
      
      private var §+B§:Number;
      
      private var §0O§:Boolean = true;
      
      private var §6#§:String = "cubic_in_out";
      
      public function §9n§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§-"+§ = param3;
         this.§"""§ = param4;
         this.§5!J§ = param5;
         this.§6#§ = param6;
      }
      
      public function set §5!C§(param1:Boolean) : void
      {
         this.§0O§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?!?§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§-"+§))
            {
               if(_loc4_.name == §50§.§@j§)
               {
                  if(this.§0O§)
                  {
                     _loc4_.x = -this.§^2§() * this.§9e§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§^2§() * this.§9e§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§"""§;
                  _loc4_.y -= this.§5!J§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9e§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§6#§)
         {
            case §8!l§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §>N§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §^2§() : Number
      {
         if(this.§0O§)
         {
            return this.§=!c§ - §5!f§;
         }
         return this.§+B§ - §#!h§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§=!c§ = param1;
         this.§+B§ = param2;
      }
      
      override public function clone() : §3T§
      {
         var _loc1_:§9n§ = new §9n§(time,duration,this.§-"+§,this.§"""§,this.§5!J§,this.§6#§);
         _loc1_.§=!c§ = this.§=!c§;
         _loc1_.§+B§ = this.§+B§;
         _loc1_.§0O§ = this.§0O§;
         return _loc1_;
      }
   }
}
