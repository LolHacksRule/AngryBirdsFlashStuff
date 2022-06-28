package §4u§
{
   import §,!_§.TextureManager;
   import §6!7§.DisplayObject;
   import §6!7§.Sprite;
   
   public class §6!G§ extends §^!I§
   {
      
      public static const SCREEN_WIDTH:Number = 1024;
      
      public static const SCREEN_HEIGHT:Number = 658;
      
      public static const §+0§:Number = 55;
      
      public static const §-C§:String = "cubic_in_out";
      
      public static const §^i§:String = "sin_in_out";
      
      public static const §-4§:String = "none";
       
      
      private var §8!3§:String;
      
      private var §`!%§:Number;
      
      private var §else§:Number;
      
      private var §[v§:Number;
      
      private var §5%§:Number;
      
      private var §@!S§:Boolean = true;
      
      private var §00§:String = "cubic_in_out";
      
      public function §6!G§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§8!3§ = param3;
         this.§`!%§ = param4;
         this.§else§ = param5;
         this.§00§ = param6;
      }
      
      public function set §=k§(param1:Boolean) : void
      {
         this.§@!S§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:TextureManager) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            _loc4_ = param2.getChildByName(this.§8!3§);
            if(_loc4_)
            {
               if(_loc4_.name == §8!E§.§?!^§)
               {
                  if(this.§@!S§)
                  {
                     _loc4_.x = -this.§null §() * this.§do§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§null §() * this.§do§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§`!%§;
                  _loc4_.y -= this.§else§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §do§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§00§)
         {
            case §-C§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §^i§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §null §() : Number
      {
         if(this.§@!S§)
         {
            return this.§[v§ - SCREEN_WIDTH;
         }
         return this.§5%§ - SCREEN_HEIGHT;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§[v§ = param1;
         this.§5%§ = param2;
      }
      
      override public function clone() : §^!I§
      {
         var _loc1_:§6!G§ = new §6!G§(time,duration,this.§8!3§,this.§`!%§,this.§else§,this.§00§);
         _loc1_.§[v§ = this.§[v§;
         _loc1_.§5%§ = this.§5%§;
         _loc1_.§@!S§ = this.§@!S§;
         return _loc1_;
      }
   }
}
