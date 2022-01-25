package §?l§
{
   import §0@§.DisplayObject;
   import §0@§.Sprite;
   import §7! §.§4n§;
   
   public class §9v§ extends §0!W§
   {
      
      public static const §`B§:Number = 1024;
      
      public static const §]!n§:Number = 658;
      
      public static const §]!;§:Number = 55;
      
      public static const §8y§:String = "cubic_in_out";
      
      public static const §#a§:String = "sin_in_out";
      
      public static const §4!3§:String = "none";
       
      
      private var §]!A§:String;
      
      private var §=!=§:Number;
      
      private var §[!;§:Number;
      
      private var §"§:Number;
      
      private var §&'§:Number;
      
      private var §<k§:Boolean = true;
      
      private var §4!O§:String = "cubic_in_out";
      
      public function §9v§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§]!A§ = param3;
         this.§=!=§ = param4;
         this.§[!;§ = param5;
         this.§4!O§ = param6;
      }
      
      public function set §+6§(param1:Boolean) : void
      {
         this.§<k§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§4n§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§]!A§))
            {
               if(_loc4_.name == §7!T§.§;5§)
               {
                  if(this.§<k§)
                  {
                     _loc4_.x = -this.§`j§() * this.§`f§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§`j§() * this.§`f§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§=!=§;
                  _loc4_.y -= this.§[!;§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §`f§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§4!O§)
         {
            case §8y§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §#a§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §`j§() : Number
      {
         if(this.§<k§)
         {
            return this.§"§ - §`B§;
         }
         return this.§&'§ - §]!n§;
      }
      
      public function §%!e§(param1:Number, param2:Number) : void
      {
         this.§"§ = param1;
         this.§&'§ = param2;
      }
      
      override public function clone() : §0!W§
      {
         var _loc1_:§9v§ = new §9v§(time,duration,this.§]!A§,this.§=!=§,this.§[!;§,this.§4!O§);
         _loc1_.§"§ = this.§"§;
         _loc1_.§&'§ = this.§&'§;
         _loc1_.§<k§ = this.§<k§;
         return _loc1_;
      }
   }
}
