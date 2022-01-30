package §"E§
{
   import §0!Y§.DisplayObject;
   import §0!Y§.Sprite;
   import §6!?§.§`!O§;
   
   public class §^!=§ extends §%!N§
   {
      
      public static const §^!z§:Number = 1024;
      
      public static const §^!y§:Number = 658;
      
      public static const §5`§:Number = 55;
      
      public static const §<! §:String = "cubic_in_out";
      
      public static const §"!g§:String = "sin_in_out";
      
      public static const §@!P§:String = "none";
       
      
      private var §`_§:String;
      
      private var §%!H§:Number;
      
      private var §^<§:Number;
      
      private var §?!<§:Number;
      
      private var §1+§:Number;
      
      private var §7!Z§:Boolean = true;
      
      private var §`u§:String = "cubic_in_out";
      
      public function §^!=§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§`_§ = param3;
         this.§%!H§ = param4;
         this.§^<§ = param5;
         this.§`u§ = param6;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.§7!Z§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§`!O§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§`_§))
            {
               if(_loc4_.name == §!b§.§'!]§)
               {
                  if(this.§7!Z§)
                  {
                     _loc4_.x = -this.§'"1§() * this.§`!]§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§'"1§() * this.§`!]§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§%!H§;
                  _loc4_.y -= this.§^<§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §`!]§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§`u§)
         {
            case §<! §:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §"!g§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §'"1§() : Number
      {
         if(this.§7!Z§)
         {
            return this.§?!<§ - §^!z§;
         }
         return this.§1+§ - §^!y§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§?!<§ = param1;
         this.§1+§ = param2;
      }
      
      override public function clone() : §%!N§
      {
         var _loc1_:§^!=§ = new §^!=§(time,duration,this.§`_§,this.§%!H§,this.§^<§,this.§`u§);
         _loc1_.§?!<§ = this.§?!<§;
         _loc1_.§1+§ = this.§1+§;
         _loc1_.§7!Z§ = this.§7!Z§;
         return _loc1_;
      }
   }
}
