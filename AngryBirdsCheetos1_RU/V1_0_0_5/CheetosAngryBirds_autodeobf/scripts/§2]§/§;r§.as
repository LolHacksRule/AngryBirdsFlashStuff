package §2]§
{
   import §@!§.§?! §;
   import §null §.DisplayObject;
   import §null §.Sprite;
   
   public class §;r§ extends §#!F§
   {
      
      public static const §'R§:Number = 1024;
      
      public static const §'Z§:Number = 658;
      
      public static const §]!I§:Number = 55;
      
      public static const §]L§:String = "cubic_in_out";
      
      public static const §[0§:String = "sin_in_out";
      
      public static const §,6§:String = "none";
       
      
      private var §%!S§:String;
      
      private var §+!L§:Number;
      
      private var §!;§:Number;
      
      private var §`!S§:Number;
      
      private var §]n§:Number;
      
      private var §<!A§:Boolean = true;
      
      private var §[!P§:String = "cubic_in_out";
      
      public function §;r§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§%!S§ = param3;
         this.§+!L§ = param4;
         this.§!;§ = param5;
         this.§[!P§ = param6;
      }
      
      public function set §`x§(param1:Boolean) : void
      {
         this.§<!A§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?! §) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§%!S§))
            {
               if(_loc4_.name == §?-§.§]$§)
               {
                  if(this.§<!A§)
                  {
                     _loc4_.x = -this.§0p§() * this.§!!6§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§0p§() * this.§!!6§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§+!L§;
                  _loc4_.y -= this.§!;§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §!!6§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§[!P§)
         {
            case §]L§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §[0§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §0p§() : Number
      {
         if(this.§<!A§)
         {
            return this.§`!S§ - §'R§;
         }
         return this.§]n§ - §'Z§;
      }
      
      public function §<x§(param1:Number, param2:Number) : void
      {
         this.§`!S§ = param1;
         this.§]n§ = param2;
      }
      
      override public function clone() : §#!F§
      {
         var _loc1_:§;r§ = new §;r§(time,duration,this.§%!S§,this.§+!L§,this.§!;§,this.§[!P§);
         _loc1_.§`!S§ = this.§`!S§;
         _loc1_.§]n§ = this.§]n§;
         _loc1_.§<!A§ = this.§<!A§;
         return _loc1_;
      }
   }
}
