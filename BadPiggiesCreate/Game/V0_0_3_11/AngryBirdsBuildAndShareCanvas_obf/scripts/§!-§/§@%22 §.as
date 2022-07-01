package §!-§
{
   import §1!Y§.DisplayObject;
   import §1!Y§.Sprite;
   import §[_§.§2!B§;
   
   public class §@" § extends §[u§
   {
      
      public static const § !q§:Number = 1024;
      
      public static const §%"2§:Number = 658;
      
      public static const §=!h§:Number = 55;
      
      public static const §#N§:String = "cubic_in_out";
      
      public static const §0!C§:String = "sin_in_out";
      
      public static const §;!P§:String = "none";
       
      
      private var §"!K§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §1§:Number;
      
      private var §+!4§:Number;
      
      private var §^!;§:Boolean = true;
      
      private var §;!<§:String = "cubic_in_out";
      
      public function §@" §(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§"!K§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§;!<§ = param6;
      }
      
      public function set §&_§(param1:Boolean) : void
      {
         this.§^!;§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§2!B§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§"!K§))
            {
               if(_loc4_.name == §5A§.§+!U§)
               {
                  if(this.§^!;§)
                  {
                     _loc4_.x = -this.§>""§() * this.§+!f§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§>""§() * this.§+!f§(param1);
                  }
               }
               else
               {
                  _loc4_.x -= this.mX;
                  _loc4_.y -= this.mY;
               }
            }
         }
         if(param1 >= this.time + duration)
         {
            return false;
         }
         return true;
      }
      
      private function §+!f§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§;!<§)
         {
            case §#N§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §0!C§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function §>""§() : Number
      {
         if(this.§^!;§)
         {
            return this.§1§ - § !q§;
         }
         return this.§+!4§ - §%"2§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§1§ = param1;
         this.§+!4§ = param2;
      }
      
      override public function clone() : §[u§
      {
         var _loc1_:§@" § = new §@" §(time,duration,this.§"!K§,this.mX,this.mY,this.§;!<§);
         _loc1_.§1§ = this.§1§;
         _loc1_.§+!4§ = this.§+!4§;
         _loc1_.§^!;§ = this.§^!;§;
         return _loc1_;
      }
   }
}
