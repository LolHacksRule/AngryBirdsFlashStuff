package §`!`§
{
   import §&!]§.DisplayObject;
   import §&!]§.Sprite;
   import §9!v§.§6a§;
   
   public class §=!y§ extends §=j§
   {
      
      public static const §<A§:Number = 1024;
      
      public static const §[s§:Number = 658;
      
      public static const §^"%§:Number = 55;
      
      public static const §8!U§:String = "cubic_in_out";
      
      public static const §5K§:String = "sin_in_out";
      
      public static const §+!+§:String = "none";
       
      
      private var §4!u§:String;
      
      private var §''§:Number;
      
      private var §3"<§:Number;
      
      private var §]!d§:Number;
      
      private var §!"-§:Number;
      
      private var §=L§:Boolean = true;
      
      private var §'!$§:String = "cubic_in_out";
      
      public function §=!y§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§4!u§ = param3;
         this.§''§ = param4;
         this.§3"<§ = param5;
         this.§'!$§ = param6;
      }
      
      public function set §4!q§(param1:Boolean) : void
      {
         this.§=L§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6a§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§4!u§))
            {
               if(_loc4_.name == §>!P§.§9@§)
               {
                  if(this.§=L§)
                  {
                     _loc4_.x = -this.§8!W§() * this.§+!R§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§8!W§() * this.§+!R§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§''§;
                  _loc4_.y -= this.§3"<§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §+!R§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§'!$§)
         {
            case §8!U§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §5K§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §8!W§() : Number
      {
         if(this.§=L§)
         {
            return this.§]!d§ - §<A§;
         }
         return this.§!"-§ - §[s§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§]!d§ = param1;
         this.§!"-§ = param2;
      }
      
      override public function clone() : §=j§
      {
         var _loc1_:§=!y§ = new §=!y§(time,duration,this.§4!u§,this.§''§,this.§3"<§,this.§'!$§);
         _loc1_.§]!d§ = this.§]!d§;
         _loc1_.§!"-§ = this.§!"-§;
         _loc1_.§=L§ = this.§=L§;
         return _loc1_;
      }
   }
}
