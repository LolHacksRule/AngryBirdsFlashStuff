package §9z§
{
   import §-!f§.DisplayObject;
   import §-!f§.Sprite;
   import §6_§.§,!>§;
   
   public class §#e§ extends §"^§
   {
      
      public static const §[6§:Number = 1024;
      
      public static const §1a§:Number = 658;
      
      public static const §]J§:Number = 55;
      
      public static const §7!!§:String = "cubic_in_out";
      
      public static const §3!r§:String = "sin_in_out";
      
      public static const §7I§:String = "none";
       
      
      private var §5p§:String;
      
      private var §0!'§:Number;
      
      private var §#<§:Number;
      
      private var §<!"§:Number;
      
      private var §50§:Number;
      
      private var §3_§:Boolean = true;
      
      private var §1!p§:String = "cubic_in_out";
      
      public function §#e§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§5p§ = param3;
         this.§0!'§ = param4;
         this.§#<§ = param5;
         this.§1!p§ = param6;
      }
      
      public function set horizontal(param1:Boolean) : void
      {
         this.§3_§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§,!>§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§5p§))
            {
               if(_loc4_.name == §3$§.§+!-§)
               {
                  if(this.§3_§)
                  {
                     _loc4_.x = -this.§2!K§() * this.§>!a§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§2!K§() * this.§>!a§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.§0!'§;
                  _loc4_.y -= this.§#<§;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §>!a§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§1!p§)
         {
            case §7!!§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §3!r§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §2!K§() : Number
      {
         if(this.§3_§)
         {
            return this.§<!"§ - §[6§;
         }
         return this.§50§ - §1a§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§<!"§ = param1;
         this.§50§ = param2;
      }
      
      override public function clone() : §"^§
      {
         var _loc1_:§#e§ = new §#e§(time,duration,this.§5p§,this.§0!'§,this.§#<§,this.§1!p§);
         _loc1_.§<!"§ = this.§<!"§;
         _loc1_.§50§ = this.§50§;
         _loc1_.§3_§ = this.§3_§;
         return _loc1_;
      }
   }
}
