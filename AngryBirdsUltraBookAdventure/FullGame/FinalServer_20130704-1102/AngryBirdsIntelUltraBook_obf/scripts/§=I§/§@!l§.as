package §=I§
{
   import §=`§.§6!I§;
   import §`g§.DisplayObject;
   import §`g§.Sprite;
   
   public class §@!l§ extends §?!t§
   {
      
      public static const §!"#§:Number = 1024;
      
      public static const §8p§:Number = 658;
      
      public static const §>!;§:Number = 55;
      
      public static const §%k§:String = "cubic_in_out";
      
      public static const §2!w§:String = "sin_in_out";
      
      public static const §3!@§:String = "none";
       
      
      private var §]X§:String;
      
      private var §#!!§:Number;
      
      private var §!!3§:Number;
      
      private var §3!8§:Number;
      
      private var §0!Q§:Number;
      
      private var §]z§:Boolean = true;
      
      private var §;!L§:String = "cubic_in_out";
      
      public function §@!l§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§]X§ = param3;
         this.§#!!§ = param4;
         this.§!!3§ = param5;
         this.§;!L§ = param6;
      }
      
      public function set §+!U§(param1:Boolean) : void
      {
         this.§]z§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§6!I§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]X§))
            {
               if(_loc4_.name == §1$§.§3t§)
               {
                  if(this.§]z§)
                  {
                     _loc4_.x = -this.§[]§() * this.§]!Q§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§[]§() * this.§]!Q§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§#!!§;
                  _loc4_.y -= this.§!!3§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §]!Q§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§;!L§)
         {
            case §%k§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §2!w§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §[]§() : Number
      {
         if(this.§]z§)
         {
            return this.§3!8§ - §!"#§;
         }
         return this.§0!Q§ - §8p§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§3!8§ = param1;
         this.§0!Q§ = param2;
      }
      
      override public function clone() : §?!t§
      {
         var _loc1_:§@!l§ = new §@!l§(time,duration,this.§]X§,this.§#!!§,this.§!!3§,this.§;!L§);
         _loc1_.§3!8§ = this.§3!8§;
         _loc1_.§0!Q§ = this.§0!Q§;
         _loc1_.§]z§ = this.§]z§;
         return _loc1_;
      }
   }
}
