package §[>§
{
   import § !%§.§7!>§;
   import §&c§.DisplayObject;
   import §&c§.Sprite;
   
   public class §,;§ extends §?m§
   {
      
      public static const §#@§:Number = 1024;
      
      public static const §#k§:Number = 658;
      
      public static const §>!b§:Number = 55;
      
      public static const §5!=§:String = "cubic_in_out";
      
      public static const §-!&§:String = "sin_in_out";
      
      public static const §6!h§:String = "none";
       
      
      private var §^!2§:String;
      
      private var § !^§:Number;
      
      private var §0p§:Number;
      
      private var §+![§:Number;
      
      private var §]d§:Number;
      
      private var §-z§:Boolean = true;
      
      private var §,?§:String = "cubic_in_out";
      
      public function §,;§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§^!2§ = param3;
         this.§ !^§ = param4;
         this.§0p§ = param5;
         this.§,?§ = param6;
      }
      
      public function set §3'§(param1:Boolean) : void
      {
         this.§-z§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§7!>§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§^!2§))
            {
               if(_loc4_.name == §[§.§2!i§)
               {
                  if(this.§-z§)
                  {
                     _loc4_.x = -this.§=N§() * this.§[@§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§=N§() * this.§[@§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§ !^§;
                  _loc4_.y -= this.§0p§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §[@§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§,?§)
         {
            case §5!=§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §-!&§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §=N§() : Number
      {
         if(this.§-z§)
         {
            return this.§+![§ - §#@§;
         }
         return this.§]d§ - §#k§;
      }
      
      public function §#!4§(param1:Number, param2:Number) : void
      {
         this.§+![§ = param1;
         this.§]d§ = param2;
      }
      
      override public function clone() : §?m§
      {
         var _loc1_:§,;§ = new §,;§(time,duration,this.§^!2§,this.§ !^§,this.§0p§,this.§,?§);
         _loc1_.§+![§ = this.§+![§;
         _loc1_.§]d§ = this.§]d§;
         _loc1_.§-z§ = this.§-z§;
         return _loc1_;
      }
   }
}
