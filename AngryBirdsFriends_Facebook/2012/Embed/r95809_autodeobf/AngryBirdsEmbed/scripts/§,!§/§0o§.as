package §,!§
{
   import §->§.DisplayObject;
   import §->§.Sprite;
   import §[!$§.§"!%§;
   
   public class §0o§ extends §4k§
   {
      
      public static const §?t§:Number = 1024;
      
      public static const §,!,§:Number = 658;
      
      public static const §?S§:Number = 55;
      
      public static const §1t§:String = "cubic_in_out";
      
      public static const §4X§:String = "sin_in_out";
      
      public static const §"_§:String = "none";
       
      
      private var §`=§:String;
      
      private var §#d§:Number;
      
      private var §7^§:Number;
      
      private var § !;§:Number;
      
      private var §[&§:Number;
      
      private var §,A§:Boolean = true;
      
      private var §@M§:String = "cubic_in_out";
      
      public function §0o§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§`=§ = param3;
         this.§#d§ = param4;
         this.§7^§ = param5;
         this.§@M§ = param6;
      }
      
      public function set §[W§(param1:Boolean) : void
      {
         this.§,A§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§"!%§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`=§))
            {
               if(_loc4_.name == §<3§.§%!0§)
               {
                  if(this.§,A§)
                  {
                     _loc4_.x = -this.§!!&§() * this.§49§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§!!&§() * this.§49§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§#d§;
                  _loc4_.y -= this.§7^§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §49§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§@M§)
         {
            case §1t§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §4X§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §!!&§() : Number
      {
         if(this.§,A§)
         {
            return this.§ !;§ - §?t§;
         }
         return this.§[&§ - §,!,§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§ !;§ = param1;
         this.§[&§ = param2;
      }
      
      override public function clone() : §4k§
      {
         var _loc1_:§0o§ = new §0o§(time,duration,this.§`=§,this.§#d§,this.§7^§,this.§@M§);
         _loc1_.§ !;§ = this.§ !;§;
         _loc1_.§[&§ = this.§[&§;
         _loc1_.§,A§ = this.§,A§;
         return _loc1_;
      }
   }
}
