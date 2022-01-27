package §-!5§
{
   import §4"@§.DisplayObject;
   import §4"@§.Sprite;
   import §^e§.§0"1§;
   
   public class §4!X§ extends §6!t§
   {
      
      public static const §6c§:Number = 1024;
      
      public static const §9"-§:Number = 658;
      
      public static const §4!x§:Number = 55;
      
      public static const §?@§:String = "cubic_in_out";
      
      public static const §?!I§:String = "sin_in_out";
      
      public static const §07§:String = "none";
       
      
      private var §9!z§:String;
      
      private var §1!`§:Number;
      
      private var §<2§:Number;
      
      private var §'!K§:Number;
      
      private var §%O§:Number;
      
      private var §use§:Boolean = true;
      
      private var § !b§:String = "cubic_in_out";
      
      public function §4!X§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§9!z§ = param3;
         this.§1!`§ = param4;
         this.§<2§ = param5;
         this.§ !b§ = param6;
      }
      
      public function set §'";§(param1:Boolean) : void
      {
         this.§use§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§0"1§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§9!z§))
            {
               if(_loc4_.name == §%!v§.§8!r§)
               {
                  if(this.§use§)
                  {
                     _loc4_.x = -this.§[x§() * this.§5H§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§[x§() * this.§5H§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§1!`§;
                  _loc4_.y -= this.§<2§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §5H§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§ !b§)
         {
            case §?@§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §?!I§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §[x§() : Number
      {
         if(this.§use§)
         {
            return this.§'!K§ - §6c§;
         }
         return this.§%O§ - §9"-§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§'!K§ = param1;
         this.§%O§ = param2;
      }
      
      override public function clone() : §6!t§
      {
         var _loc1_:§4!X§ = new §4!X§(time,duration,this.§9!z§,this.§1!`§,this.§<2§,this.§ !b§);
         _loc1_.§'!K§ = this.§'!K§;
         _loc1_.§%O§ = this.§%O§;
         _loc1_.§use§ = this.§use§;
         return _loc1_;
      }
   }
}
