package §2r§
{
   import §;^§.DisplayObject;
   import §;^§.Sprite;
   import §=!K§.§^Q§;
   
   public class §2!N§ extends §]6§
   {
      
      public static const §@!0§:Number = 1024;
      
      public static const §2!M§:Number = 658;
      
      public static const §->§:Number = 55;
      
      public static const §>!+§:String = "cubic_in_out";
      
      public static const §%1§:String = "sin_in_out";
      
      public static const § h§:String = "none";
       
      
      private var §!j§:String;
      
      private var § H§:Number;
      
      private var §=§:Number;
      
      private var §<w§:Number;
      
      private var §"!?§:Number;
      
      private var §case §:Boolean = true;
      
      private var §`_§:String = "cubic_in_out";
      
      public function §2!N§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§!j§ = param3;
         this.§ H§ = param4;
         this.§=§ = param5;
         this.§`_§ = param6;
      }
      
      public function set §4@§(param1:Boolean) : void
      {
         this.§case § = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§^Q§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§!j§))
            {
               if(_loc4_.name == §^e§.§[o§)
               {
                  if(this.§case §)
                  {
                     _loc4_.x = -this.§[L§() * this.§[E§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§[L§() * this.§[E§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§ H§;
                  _loc4_.y -= this.§=§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §[E§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§`_§)
         {
            case §>!+§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §%1§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §[L§() : Number
      {
         if(this.§case §)
         {
            return this.§<w§ - §@!0§;
         }
         return this.§"!?§ - §2!M§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<w§ = param1;
         this.§"!?§ = param2;
      }
      
      override public function clone() : §]6§
      {
         var _loc1_:§2!N§ = new §2!N§(time,duration,this.§!j§,this.§ H§,this.§=§,this.§`_§);
         _loc1_.§<w§ = this.§<w§;
         _loc1_.§"!?§ = this.§"!?§;
         _loc1_.§case § = this.§case §;
         return _loc1_;
      }
   }
}
