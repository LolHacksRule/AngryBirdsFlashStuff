package §@!L§
{
   import §7!B§.DisplayObject;
   import §7!B§.Sprite;
   import §^!Y§.§'R§;
   
   public class §3!%§ extends §9N§
   {
      
      public static const §"!c§:Number = 1024;
      
      public static const §%g§:Number = 658;
      
      public static const §#!v§:Number = 55;
      
      public static const §@%§:String = "cubic_in_out";
      
      public static const §,!+§:String = "sin_in_out";
      
      public static const §[I§:String = "none";
       
      
      private var §1!T§:String;
      
      private var §#!u§:Number;
      
      private var §<h§:Number;
      
      private var §2!d§:Number;
      
      private var §@@§:Number;
      
      private var §9!u§:Boolean = true;
      
      private var §4g§:String = "cubic_in_out";
      
      public function §3!%§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§1!T§ = param3;
         this.§#!u§ = param4;
         this.§<h§ = param5;
         this.§4g§ = param6;
      }
      
      public function set §8?§(param1:Boolean) : void
      {
         this.§9!u§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§'R§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§1!T§))
            {
               if(_loc4_.name == § M§.§;!_§)
               {
                  if(this.§9!u§)
                  {
                     _loc4_.x = -this.§@m§() * this.§]h§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§@m§() * this.§]h§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§#!u§;
                  _loc4_.y -= this.§<h§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §]h§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§4g§)
         {
            case §@%§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §,!+§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §@m§() : Number
      {
         if(this.§9!u§)
         {
            return this.§2!d§ - §"!c§;
         }
         return this.§@@§ - §%g§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§2!d§ = param1;
         this.§@@§ = param2;
      }
      
      override public function clone() : §9N§
      {
         var _loc1_:§3!%§ = new §3!%§(time,duration,this.§1!T§,this.§#!u§,this.§<h§,this.§4g§);
         _loc1_.§2!d§ = this.§2!d§;
         _loc1_.§@@§ = this.§@@§;
         _loc1_.§9!u§ = this.§9!u§;
         return _loc1_;
      }
   }
}
