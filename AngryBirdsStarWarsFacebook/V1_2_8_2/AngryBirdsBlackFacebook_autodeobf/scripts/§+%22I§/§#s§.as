package §+"I§
{
   import §!!k§.§0!B§;
   import §use§.DisplayObject;
   import §use§.Sprite;
   
   public class §#s§ extends §^"C§
   {
      
      public static const §8!Q§:Number = 1024;
      
      public static const §,e§:Number = 658;
      
      public static const §]!P§:Number = 55;
      
      public static const §,!G§:String = "cubic_in_out";
      
      public static const §8"R§:String = "sin_in_out";
      
      public static const §7!-§:String = "none";
       
      
      private var §0"H§:String;
      
      private var §0U§:Number;
      
      private var §3"[§:Number;
      
      private var §0"e§:Number;
      
      private var §?!O§:Number;
      
      private var §]"7§:Boolean = true;
      
      private var §=B§:String = "cubic_in_out";
      
      public function §#s§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§0"H§ = param3;
         this.§0U§ = param4;
         this.§3"[§ = param5;
         this.§=B§ = param6;
      }
      
      public function set §`V§(param1:Boolean) : void
      {
         this.§]"7§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0!B§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§0"H§))
            {
               if(_loc4_.name == §0"f§.§8!Z§)
               {
                  if(this.§]"7§)
                  {
                     _loc4_.x = -this.§@",§() * this.§["Q§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§@",§() * this.§["Q§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§0U§;
                  _loc4_.y -= this.§3"[§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §["Q§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§=B§)
         {
            case §,!G§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §8"R§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §@",§() : Number
      {
         if(this.§]"7§)
         {
            return this.§0"e§ - §8!Q§;
         }
         return this.§?!O§ - §,e§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§0"e§ = param1;
         this.§?!O§ = param2;
      }
      
      override public function clone() : §^"C§
      {
         var _loc1_:§#s§ = new §#s§(time,duration,this.§0"H§,this.§0U§,this.§3"[§,this.§=B§);
         _loc1_.§0"e§ = this.§0"e§;
         _loc1_.§?!O§ = this.§?!O§;
         _loc1_.§]"7§ = this.§]"7§;
         return _loc1_;
      }
   }
}
