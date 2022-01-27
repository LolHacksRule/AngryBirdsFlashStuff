package §1a§
{
   import §-!'§.DisplayObject;
   import §-!'§.Sprite;
   import §<A§.§'K§;
   
   public class §2!?§ extends §#]§
   {
      
      public static const §6!I§:Number = 1024;
      
      public static const §4U§:Number = 658;
      
      public static const § k§:Number = 55;
      
      public static const §<-§:String = "cubic_in_out";
      
      public static const §+!%§:String = "sin_in_out";
      
      public static const §'!J§:String = "none";
       
      
      private var §3n§:String;
      
      private var §+Z§:Number;
      
      private var §04§:Number;
      
      private var §0!A§:Number;
      
      private var §3>§:Number;
      
      private var §[k§:Boolean = true;
      
      private var §<q§:String = "cubic_in_out";
      
      public function §2!?§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§3n§ = param3;
         this.§+Z§ = param4;
         this.§04§ = param5;
         this.§<q§ = param6;
      }
      
      public function set §+o§(param1:Boolean) : void
      {
         this.§[k§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'K§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§3n§))
            {
               if(_loc4_.name == §0q§.§?!I§)
               {
                  if(this.§[k§)
                  {
                     _loc4_.x = -this.§[D§() * this.§3V§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§[D§() * this.§3V§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§+Z§;
                  _loc4_.y -= this.§04§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §3V§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§<q§)
         {
            case §<-§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §+!%§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §[D§() : Number
      {
         if(this.§[k§)
         {
            return this.§0!A§ - §6!I§;
         }
         return this.§3>§ - §4U§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§0!A§ = param1;
         this.§3>§ = param2;
      }
      
      override public function clone() : §#]§
      {
         var _loc1_:§2!?§ = new §2!?§(time,duration,this.§3n§,this.§+Z§,this.§04§,this.§<q§);
         _loc1_.§0!A§ = this.§0!A§;
         _loc1_.§3>§ = this.§3>§;
         _loc1_.§[k§ = this.§[k§;
         return _loc1_;
      }
   }
}
