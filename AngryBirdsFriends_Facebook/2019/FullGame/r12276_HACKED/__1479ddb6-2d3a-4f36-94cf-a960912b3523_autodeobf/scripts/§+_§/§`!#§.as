package §+_§
{
   import §#Z§.DisplayObject;
   import §#Z§.Sprite;
   import §9#M§.§%"=§;
   
   public class §`!#§ extends §>$8§
   {
      
      public static const §2"?§:Number = 1024;
      
      public static const §%!"§:Number = 658;
      
      public static const §"!v§:Number = 55;
      
      public static const §^!@§:String = "cubic_in_out";
      
      public static const §-#7§:String = "sin_in_out";
      
      public static const §4"p§:String = "none";
       
      
      private var §>S§:String;
      
      private var §0k§:Number;
      
      private var §@_§:Number;
      
      private var §@!l§:Number;
      
      private var §,7§:Number;
      
      private var §=">§:Boolean = true;
      
      private var §4!$§:String = "cubic_in_out";
      
      public function §`!#§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§>S§ = param3;
         this.§0k§ = param4;
         this.§@_§ = param5;
         this.§4!$§ = param6;
      }
      
      public function set §!#F§(param1:Boolean) : void
      {
         this.§=">§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§%"=§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§>S§))
            {
               if(_loc4_.name == §<!2§.§+"i§)
               {
                  if(this.§=">§)
                  {
                     _loc4_.x = -this.§;#^§() * this.§8f§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§;#^§() * this.§8f§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§0k§;
                  _loc4_.y -= this.§@_§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §8f§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§4!$§)
         {
            case §^!@§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §-#7§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §;#^§() : Number
      {
         if(this.§=">§)
         {
            return this.§@!l§ - §2"?§;
         }
         return this.§,7§ - §%!"§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§@!l§ = param1;
         this.§,7§ = param2;
      }
      
      override public function clone() : §>$8§
      {
         var _loc1_:§`!#§ = new §`!#§(time,duration,this.§>S§,this.§0k§,this.§@_§,this.§4!$§);
         _loc1_.§@!l§ = this.§@!l§;
         _loc1_.§,7§ = this.§,7§;
         _loc1_.§=">§ = this.§=">§;
         return _loc1_;
      }
   }
}
