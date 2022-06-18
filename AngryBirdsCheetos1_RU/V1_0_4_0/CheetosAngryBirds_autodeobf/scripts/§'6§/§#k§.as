package §'6§
{
   import §3§.DisplayObject;
   import §3§.Sprite;
   import §`n§.§#H§;
   
   public class §#k§ extends §+v§
   {
      
      public static const §=!#§:Number = 1024;
      
      public static const §,n§:Number = 658;
      
      public static const §9!]§:Number = 55;
      
      public static const §!4§:String = "cubic_in_out";
      
      public static const §9e§:String = "sin_in_out";
      
      public static const §2!D§:String = "none";
       
      
      private var §[5§:String;
      
      private var § W§:Number;
      
      private var §9!9§:Number;
      
      private var §=!T§:Number;
      
      private var §&n§:Number;
      
      private var §4!E§:Boolean = true;
      
      private var §9!@§:String = "cubic_in_out";
      
      public function §#k§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§[5§ = param3;
         this.§ W§ = param4;
         this.§9!9§ = param5;
         this.§9!@§ = param6;
      }
      
      public function set §,J§(param1:Boolean) : void
      {
         this.§4!E§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§#H§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§[5§))
            {
               if(_loc4_.name == §!!H§.§2!0§)
               {
                  if(this.§4!E§)
                  {
                     _loc4_.x = -this.§8r§() * this.§]!H§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§8r§() * this.§]!H§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§ W§;
                  _loc4_.y -= this.§9!9§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §]!H§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§9!@§)
         {
            case §!4§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §9e§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §8r§() : Number
      {
         if(this.§4!E§)
         {
            return this.§=!T§ - §=!#§;
         }
         return this.§&n§ - §,n§;
      }
      
      public function § d§(param1:Number, param2:Number) : void
      {
         this.§=!T§ = param1;
         this.§&n§ = param2;
      }
      
      override public function clone() : §+v§
      {
         var _loc1_:§#k§ = new §#k§(time,duration,this.§[5§,this.§ W§,this.§9!9§,this.§9!@§);
         _loc1_.§=!T§ = this.§=!T§;
         _loc1_.§&n§ = this.§&n§;
         _loc1_.§4!E§ = this.§4!E§;
         return _loc1_;
      }
   }
}
