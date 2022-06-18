package §6Q§
{
   import §!6§.DisplayObject;
   import §!6§.Sprite;
   import §^"[§.§=#;§;
   
   public class §1"A§ extends §?d§
   {
      
      public static const §["?§:Number = 1024;
      
      public static const §01§:Number = 658;
      
      public static const §6#o§:Number = 55;
      
      public static const § "J§:String = "cubic_in_out";
      
      public static const §["p§:String = "sin_in_out";
      
      public static const §%"s§:String = "none";
       
      
      private var §6"S§:String;
      
      private var §-##§:Number;
      
      private var §0#[§:Number;
      
      private var §@#Z§:Number;
      
      private var §+#j§:Number;
      
      private var §^#E§:Boolean = true;
      
      private var §=$?§:String = "cubic_in_out";
      
      public function §1"A§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§6"S§ = param3;
         this.§-##§ = param4;
         this.§0#[§ = param5;
         this.§=$?§ = param6;
      }
      
      public function set §4"z§(param1:Boolean) : void
      {
         this.§^#E§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§=#;§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§6"S§))
            {
               if(_loc4_.name == §%!N§.§,#9§)
               {
                  if(this.§^#E§)
                  {
                     _loc4_.x = -this.§7d§() * this.§&"w§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§7d§() * this.§&"w§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§-##§;
                  _loc4_.y -= this.§0#[§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §&"w§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§=$?§)
         {
            case § "J§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §["p§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §7d§() : Number
      {
         if(this.§^#E§)
         {
            return this.§@#Z§ - §["?§;
         }
         return this.§+#j§ - §01§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§@#Z§ = param1;
         this.§+#j§ = param2;
      }
      
      override public function clone() : §?d§
      {
         var _loc1_:§1"A§ = new §1"A§(time,duration,this.§6"S§,this.§-##§,this.§0#[§,this.§=$?§);
         _loc1_.§@#Z§ = this.§@#Z§;
         _loc1_.§+#j§ = this.§+#j§;
         _loc1_.§^#E§ = this.§^#E§;
         return _loc1_;
      }
   }
}
