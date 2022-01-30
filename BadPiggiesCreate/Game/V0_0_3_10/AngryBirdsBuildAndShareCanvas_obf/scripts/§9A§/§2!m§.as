package §9A§
{
   import §%t§.§-!5§;
   import §^I§.DisplayObject;
   import §^I§.Sprite;
   
   public class §2!m§ extends §'"$§
   {
      
      public static const §<!8§:Number = 1024;
      
      public static const §[V§:Number = 658;
      
      public static const §+X§:Number = 55;
      
      public static const §=!l§:String = "cubic_in_out";
      
      public static const §6!8§:String = "sin_in_out";
      
      public static const §3!t§:String = "none";
       
      
      private var §'f§:String;
      
      private var mX:Number;
      
      private var mY:Number;
      
      private var §4!z§:Number;
      
      private var §@R§:Number;
      
      private var §2x§:Boolean = true;
      
      private var §5!d§:String = "cubic_in_out";
      
      public function §2!m§(param1:Number, param2:Number, param3:String, param4:Number, param5:Number, param6:String)
      {
         super(param1,param2);
         this.§'f§ = param3;
         this.mX = param4;
         this.mY = param5;
         this.§5!d§ = param6;
      }
      
      public function set §3" §(param1:Boolean) : void
      {
         this.§2x§ = param1;
      }
      
      override public function update(param1:Number, param2:Sprite, param3:§-!5§) : Boolean
      {
         var _loc4_:DisplayObject = null;
         if(param1 > this.time + duration)
         {
            param1 = this.time + duration;
         }
         if(param1 > this.time)
         {
            if(_loc4_ = param2.getChildByName(this.§'f§))
            {
               if(_loc4_.name == §;w§.§^,§)
               {
                  if(this.§2x§)
                  {
                     _loc4_.x = -this.§ _§() * this.§`!i§(param1);
                  }
                  else
                  {
                     _loc4_.y = this.§ _§() * this.§`!i§(param1);
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
      
      private function §`!i§(param1:Number) : Number
      {
         var _loc2_:Number = (param1 - this.time) / duration;
         switch(this.§5!d§)
         {
            case §=!l§:
               _loc2_ *= 2;
               if(_loc2_ < 1)
               {
                  return Math.pow(_loc2_,3) / 2;
               }
               _loc2_ -= 2;
               return (Math.pow(_loc2_,3) + 2) / 2;
               break;
            case §6!8§:
               return -(Math.cos(Math.PI * _loc2_) - 1) / 2;
            default:
               return _loc2_;
         }
      }
      
      protected function § _§() : Number
      {
         if(this.§2x§)
         {
            return this.§4!z§ - §<!8§;
         }
         return this.§@R§ - §[V§;
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.§4!z§ = param1;
         this.§@R§ = param2;
      }
      
      override public function clone() : §'"$§
      {
         var _loc1_:§2!m§ = new §2!m§(time,duration,this.§'f§,this.mX,this.mY,this.§5!d§);
         _loc1_.§4!z§ = this.§4!z§;
         _loc1_.§@R§ = this.§@R§;
         _loc1_.§2x§ = this.§2x§;
         return _loc1_;
      }
   }
}
