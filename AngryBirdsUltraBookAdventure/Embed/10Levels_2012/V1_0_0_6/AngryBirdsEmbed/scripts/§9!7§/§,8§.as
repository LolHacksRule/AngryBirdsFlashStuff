package §9!7§
{
   import §,_§.DisplayObject;
   import §,_§.Sprite;
   import §5`§.§?y§;
   
   public class §,8§ extends §`E§
   {
      
      public static const §4T§:Number = 1024;
      
      public static const §0!$§:Number = 658;
      
      public static const §[z§:Number = 55;
      
      public static const §!f§:String = "cubic_in_out";
      
      public static const §`^§:String = "sin_in_out";
      
      public static const §^!2§:String = "none";
       
      
      private var §^P§:String;
      
      private var §^C§:Number;
      
      private var §0§:Number;
      
      private var §5;§:Number;
      
      private var §>!'§:Number;
      
      private var §#!<§:Boolean = true;
      
      private var §[!+§:String = "cubic_in_out";
      
      public function §,8§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§^P§ = param3;
         this.§^C§ = param4;
         this.§0§ = param5;
         this.§[!+§ = param6;
      }
      
      public function set §>!;§(param1:Boolean) : void
      {
         this.§#!<§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§?y§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§^P§))
            {
               if(_loc4_.name == §9v§.§6!-§)
               {
                  if(this.§#!<§)
                  {
                     _loc4_.x = -this.§ q§() * this.§9!;§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§ q§() * this.§9!;§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§^C§;
                  _loc4_.y -= this.§0§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §9!;§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§[!+§)
         {
            case §!f§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §`^§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function § q§() : Number
      {
         if(this.§#!<§)
         {
            return this.§5;§ - §4T§;
         }
         return this.§>!'§ - §0!$§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§5;§ = param1;
         this.§>!'§ = param2;
      }
      
      override public function clone() : §`E§
      {
         var _loc1_:§,8§ = new §,8§(time,duration,this.§^P§,this.§^C§,this.§0§,this.§[!+§);
         _loc1_.§5;§ = this.§5;§;
         _loc1_.§>!'§ = this.§>!'§;
         _loc1_.§#!<§ = this.§#!<§;
         return _loc1_;
      }
   }
}
