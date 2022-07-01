package §!!^§
{
   import §,!q§.DisplayObject;
   import §,!q§.Sprite;
   import §-!b§.§[E§;
   
   public class §^!9§ extends §,!@§
   {
      
      public static const §#9§:Number = 1024;
      
      public static const §<N§:Number = 658;
      
      public static const §!",§:Number = 55;
      
      public static const §[!p§:String = "cubic_in_out";
      
      public static const §9"5§:String = "sin_in_out";
      
      public static const §?!"§:String = "none";
       
      
      private var §3W§:String;
      
      private var §@S§:Number;
      
      private var §#B§:Number;
      
      private var §9z§:Number;
      
      private var §8#§:Number;
      
      private var §`!o§:Boolean = true;
      
      private var §]" §:String = "cubic_in_out";
      
      public function §^!9§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§3W§ = param3;
         this.§@S§ = param4;
         this.§#B§ = param5;
         this.§]" § = param6;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.§`!o§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§[E§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§3W§))
            {
               if(_loc4_.name == §@!^§.§+4§)
               {
                  if(this.§`!o§)
                  {
                     _loc4_.x = -this.§2A§() * this.§%!f§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§2A§() * this.§%!f§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§@S§;
                  _loc4_.y -= this.§#B§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §%!f§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§]" §)
         {
            case §[!p§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §9"5§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §2A§() : Number
      {
         if(this.§`!o§)
         {
            return this.§9z§ - §#9§;
         }
         return this.§8#§ - §<N§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§9z§ = param1;
         this.§8#§ = param2;
      }
      
      override public function clone() : §,!@§
      {
         var _loc1_:§^!9§ = new §^!9§(time,duration,this.§3W§,this.§@S§,this.§#B§,this.§]" §);
         _loc1_.§9z§ = this.§9z§;
         _loc1_.§8#§ = this.§8#§;
         _loc1_.§`!o§ = this.§`!o§;
         return _loc1_;
      }
   }
}
