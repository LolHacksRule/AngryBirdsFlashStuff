package §9L§
{
   import §5!l§.§ !D§;
   import §5x§.DisplayObject;
   import §5x§.Sprite;
   
   public class §!![§ extends §<6§
   {
      
      public static const §&"§:Number = 1024;
      
      public static const §+! §:Number = 658;
      
      public static const §1!k§:Number = 55;
      
      public static const §<!Z§:String = "cubic_in_out";
      
      public static const §%i§:String = "sin_in_out";
      
      public static const §3!l§:String = "none";
       
      
      private var §]P§:String;
      
      private var § +§:Number;
      
      private var §'Z§:Number;
      
      private var §;a§:Number;
      
      private var §"[§:Number;
      
      private var §>y§:Boolean = true;
      
      private var §91§:String = "cubic_in_out";
      
      public function §!![§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§]P§ = param3;
         this.§ +§ = param4;
         this.§'Z§ = param5;
         this.§91§ = param6;
      }
      
      public function set §@m§(param1:Boolean) : void
      {
         this.§>y§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§ !D§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]P§))
            {
               if(_loc4_.name == §,!l§.§[6§)
               {
                  if(this.§>y§)
                  {
                     _loc4_.x = -this.§&!E§() * this.§,a§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§&!E§() * this.§,a§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§ +§;
                  _loc4_.y -= this.§'Z§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §,a§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§91§)
         {
            case §<!Z§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §%i§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §&!E§() : Number
      {
         if(this.§>y§)
         {
            return this.§;a§ - §&"§;
         }
         return this.§"[§ - §+! §;
      }
      
      public function §3s§(param1:Number, param2:Number) : void
      {
         this.§;a§ = param1;
         this.§"[§ = param2;
      }
      
      override public function clone() : §<6§
      {
         var _loc1_:§!![§ = new §!![§(time,duration,this.§]P§,this.§ +§,this.§'Z§,this.§91§);
         _loc1_.§;a§ = this.§;a§;
         _loc1_.§"[§ = this.§"[§;
         _loc1_.§>y§ = this.§>y§;
         return _loc1_;
      }
   }
}
