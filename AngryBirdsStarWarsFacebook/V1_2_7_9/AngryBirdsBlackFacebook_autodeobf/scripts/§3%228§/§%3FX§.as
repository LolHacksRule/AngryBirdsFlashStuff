package §3"8§
{
   import §1"s§.DisplayObject;
   import §1"s§.Sprite;
   import §3"$§.§&"0§;
   
   public class §?X§ extends §-"r§
   {
      
      public static const §]";§:Number = 1024;
      
      public static const §8"?§:Number = 658;
      
      public static const §,!-§:Number = 55;
      
      public static const §+#%§:String = "cubic_in_out";
      
      public static const §+!S§:String = "sin_in_out";
      
      public static const §#"q§:String = "none";
       
      
      private var §<b§:String;
      
      private var §]!_§:Number;
      
      private var §#j§:Number;
      
      private var §^"t§:Number;
      
      private var §`!y§:Number;
      
      private var §6d§:Boolean = true;
      
      private var §]m§:String = "cubic_in_out";
      
      public function §?X§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§<b§ = param3;
         this.§]!_§ = param4;
         this.§#j§ = param5;
         this.§]m§ = param6;
      }
      
      public function set §1"'§(param1:Boolean) : void
      {
         this.§6d§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§&"0§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§<b§))
            {
               if(_loc4_.name == §9U§.§95§)
               {
                  if(this.§6d§)
                  {
                     _loc4_.x = -this.§6=§() * this.§@"X§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§6=§() * this.§@"X§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§]!_§;
                  _loc4_.y -= this.§#j§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §@"X§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§]m§)
         {
            case §+#%§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §+!S§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §6=§() : Number
      {
         if(this.§6d§)
         {
            return this.§^"t§ - §]";§;
         }
         return this.§`!y§ - §8"?§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§^"t§ = param1;
         this.§`!y§ = param2;
      }
      
      override public function clone() : §-"r§
      {
         var _loc1_:§?X§ = new §?X§(time,duration,this.§<b§,this.§]!_§,this.§#j§,this.§]m§);
         _loc1_.§^"t§ = this.§^"t§;
         _loc1_.§`!y§ = this.§`!y§;
         _loc1_.§6d§ = this.§6d§;
         return _loc1_;
      }
   }
}
